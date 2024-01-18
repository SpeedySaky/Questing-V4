SS.recentlyAcceptedQuests = {}
SS.quests = {}
SS.questsbyid = {}
local gossipQuestBlacklist = {
	3441, -- Divine Retribution
    3442, -- The Flawless Flame
    3702, -- The Smoldering Ruins of Thaurissan
    4023, -- A Taste of Flame
    5742, -- Redemption
    5761, -- Neeru
	10107, --Blade
	77585,
	77617,
	77571,
	77643,
}

local itemCacheQueue = {}
function SS:QUEST_ITEM_UPDATE()
	local i, event = next(itemCacheQueue)
	if i then
		table.remove(itemCacheQueue, i)
		SS[event]()
	end
end

function SS:NewQuestEvent(questTitle,id)
	if not id or not questTitle then return end

	SS.recentlyAcceptedQuests[questTitle]=true
	SS.recentlyAcceptedQuests[id]=true
end

function SS:QuestTracking_CacheQuestLog()
	local oldquests=SS.quests
	SS.quests = {}

	local newquests = {}

	local logbyid = {}

	local nc=0

	for i = 1,99 do  -- because collapsing affects numEntries, while hidden quests are still readable
		local sQuestLogTitleText, iQuestLevel, iSuggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory = GetQuestLogTitle(i)

		if not sQuestLogTitleText then break end

		if not isHeader and sQuestLogTitleText and questID then
			sQuestLogTitleText = sQuestLogTitleText:gsub(" ?\[[0-9D\+]+\] ?","") -- fix for [12] level display

			local quest = self.questsbyid[questID] or {}

			quest.title = sQuestLogTitleText
			quest.text,quest.summary = GetQuestLogQuestText(i)
			quest.level = iQuestLevel
---@diagnostic disable-next-line: redundant-parameter
			quest.tagnum = GetQuestLogQuestType(i) --will return a number.[0] = "", [1] = "Group", [41] = "PvP",[62] = "Raid", [81] = "Dungeon", [83] = "Legendary",[ 85] = "Heroic",[98] = "Scenario", [102] = "Account",
			quest.complete = (isComplete==1)
			quest.failed = (isComplete==-1)
			quest.daily = (frequency==LE_QUEST_FREQUENCY_DAILY)
			quest.weekly = (frequency==LE_QUEST_FREQUENCY_WEEKLY)
			quest.bounty = isBounty
			quest.id = questID
			quest.index = tonumber(i)
			local was_in_log = quest.inlog
			quest.inlog = true

			tinsert(self.quests,quest)
			logbyid[questID]=quest

			if (not self.questsbyid[questID] or not was_in_log) and not self.recentlyAcceptedQuests[questID] then
				table.insert(newquests,quest)
				self.questsbyid[questID]=quest
			end

			nc=nc+1

		end
	end

	for qid,q in pairs(self.questsbyid) do
		q.inlog = not not logbyid[qid]
	end

	-- any abandoned?
	if #oldquests>0 then
		for qi,q in pairs(oldquests) do
---@diagnostic disable-next-line: undefined-field
			if not self.questsbyid[q.id] and not self.completedQuests[q.id] then
				self.recentlyAcceptedQuests[q.id]=nil
				self.recentlyAcceptedQuests[q.title]=nil

---@diagnostic disable-next-line: undefined-field
				self:LostQuestEvent(q.title,q.id,q.complete)

				if q.id==self.recentAbandonedQuestID then
---@diagnostic disable-next-line: undefined-field
					self:AbandonedQuestEvent(q.title,q.id,q.daily)
				end
---@diagnostic disable-next-line: undefined-field
				if q.id==self.recentCompletedQuestID --[[and q.title==self.recentCompletedQuestTitle--]] then  --maybe not needed...
---@diagnostic disable-next-line: undefined-field
					self:CompletedQuestEvent(q.title,q.id,q.daily)
				end
---@diagnostic disable-next-line: undefined-field
				self.recentlyLostQuests[q.title]=q.id
---@diagnostic disable-next-line: undefined-field
				self:ScheduleTimer(function() SS.recentlyLostQuests[q.title]=nil end, 3.0)
			end
		end
	end

	SS.recentAbandonedQuestID = nil

	for _, q in ipairs(newquests) do
		self:NewQuestEvent(q.title,q.id)
	end

	return self.quests
end

function SS:AbandonQuests()
	local level = UnitLevel("player")
	print("Abandoning quests more than 7 levels below your current level, or if they are raid, dungeon, heroid type.")
    for _ ,quest in ipairs(SS.quests) do
		if math.abs(level - quest.level) > 7 or quest.tagnum == 62 or quest.tagnum == 81 or quest.tagnum == 85 then -- 62 = Raid, 81 = Dungeon, 85 = Heroic
            print("Abandoning Quest: " .. quest.title)
			SelectQuestLogEntry(quest.index)
			SetAbandonQuest()
			AbandonQuest()
        end
    end
end

function SS:QuestAutoAccept_InGreeting()
	if not SS.db.profile.autoAcceptQuest then
		self:DebugLog("QuestAutoAccept_InGreeting: disabled")
		return
	end
	for qnum=1,GetNumAvailableQuests() do
---@diagnostic disable-next-line: redundant-parameter
		SelectAvailableQuest(qnum)
	end
end

function SS:QuestAutoAccept_InGossip()
	if not SS.db.profile.autoAcceptQuest then
		self:DebugLog("QuestAutoAccept_InGossip: disabled")
		return
	end
	self:DebugLog("QuestAutoAccept_InGossip")
	local quests=C_GossipInfo.GetAvailableQuests()

	for qnum,questInfo in ipairs(quests) do
		local qIdent = questInfo.questID
		self:DebugLog(string.format("QuestAutoAccept_InGossip: qIdent=%s",qIdent))
		C_GossipInfo.SelectAvailableQuest(qIdent)
		return true
	end
end

function SS:QuestAutoAccept_InDetail()
	if not SS.db.profile.autoAcceptQuest then
		self:DebugLog("QuestAutoAccept_InDetail: disabled")
		return
	end
	self:DebugLog("QuestAutoAccept_InDetail: accepting")
	QuestDetailAcceptButton_OnClick()
	QuestFrameDetailPanel:Hide();
	return true
end

function SS:QuestAutoTurnin_InGreeting()
	if not SS.db.profile.autoTurnInQuest then
		self:DebugLog("QuestAutoTurnin_InGreeting: disabled")
		return
	end
	for qnum=1,GetNumActiveQuests() do
		self:DebugLog(string.format("QuestAutoTurnin_InGreeting: qnum=%s",qnum))
---@diagnostic disable-next-line: redundant-parameter
		SelectActiveQuest(qnum)
		CompleteQuest()
	end
end

function SS:QuestAutoComplete_InProgress()
	if not SS.db.profile.autoTurnInQuest then
		self:DebugLog("QuestAutoComplete_InProgress: disabled")
		return
	end
	local id = GetQuestID()
	for _, qid in ipairs(gossipQuestBlacklist) do
		if qid==id then
			self:DebugLog(string.format("QuestAutoComplete_InProgress: %s blacklisted", id))
			return false
		end
	end
	-- if not IsQuestCompletable() then
	-- 	self:DebugLog(string.format("QuestAutoComplete_InProgress: %s not completable", id))
	-- 	return
	-- end --or GetNumQuestChoices()>1 then return end
	self:DebugLog(string.format("QuestAutoComplete_InProgress: %s completing", id))

	CompleteQuest()
end

function SS:QuestAutoComplete_Complete()
	if not SS.db.profile.autoTurnInQuest then
		self:DebugLog("QuestAutoComplete_Complete: disabled")
		return
	end
	local id = GetQuestID()
	for _, qid in ipairs(gossipQuestBlacklist) do
		if qid==id then
			self:DebugLog(string.format("QuestAutoComplete_InProgress: %s blacklisted", id))
			return false
		end
	end
	-- if not IsQuestCompletable() then
	-- 	self:DebugLog(string.format("QuestAutoComplete_InProgress: %s not completable", id))
	-- 	return
	-- end --or GetNumQuestChoices()>1 then return end
	-- triggered when an active quest is ready to be completed
	local numItemRewards = GetNumQuestChoices()
	if numItemRewards <= 1 then
		-- no point iterating over a single item or none at all
		GetQuestReward(1)
		return
	end

	local highestItemValue, highestItemValueIndex = 0

	-- iterate through the item rewards and automatically select the one worth the most
	for index = 1, numItemRewards do
		local itemLink = GetQuestItemLink('choice', index)
		if itemLink then
			-- check the value on the item and compare it to the others
			local _, _, _, _, _, _, _, _, _, _, itemValue = GetItemInfo(itemLink)
			local itemID = GetItemInfoFromHyperlink(itemLink)

			-- compare the values
			if itemValue > highestItemValue then
				highestItemValue = itemValue
				highestItemValueIndex = index
			end
		else
			-- item is not cached yet, trigger the item and wait for the cache to populate
			table.insert(itemCacheQueue, 'QUEST_COMPLETE')
			GetQuestItemInfo('choice', index)
			return
		end
	end

	if highestItemValueIndex then
		-- this is considered an intrusive action, as we're modifying the UI
		QuestInfoItem_OnClick(QuestInfoRewardsFrame.RewardButtons[highestItemValueIndex])
		GetQuestReward(highestItemValueIndex)
	end

	self:DebugLog(string.format("QuestAutoComplete_InProgress: %s completing", id))
	if GetNumQuestChoices() <= 1 then
		-- complete the quest by accepting the first item
		GetQuestReward(1)
	end
end

function SS:QuestAutoTurnin_InGossip()
	if not SS.db.profile.autoTurnInQuest then
		self:DebugLog("QuestAutoTurnin_InGossip: disabled")
		return
	end
	local quests=C_GossipInfo.GetActiveQuests()
	for _, questInfo in ipairs(quests) do
		local qIdent = questInfo.questID
		for _, qid in ipairs(gossipQuestBlacklist) do
			if qid==qIdent then
				self:DebugLog(string.format("QuestAutoTurnin_InGossip: %s blacklisted", qIdent))
				return false
			end
		end
		self:DebugLog(string.format("QuestAutoTurnin_InGossip: qIdent=%s",qIdent))
		C_GossipInfo.SelectActiveQuest(qIdent)
		self:DebugLog("QuestAutoTurnin_InGossip: completing")
		CompleteQuest()
		return true
	end
end
