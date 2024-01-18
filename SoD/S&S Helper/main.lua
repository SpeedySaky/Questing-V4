----------------------------------------------------------------------
-- SS v1.0.0 - 04/03/2023
----------------------------------------------------------------------

-- Global Table
_G.SSDB = _G.SSDB or {}
local SS = ...

local SSCF = {};
SSAddon = {};
local SS = SSAddon;
SSCF["AddonVersion"] = "1.0.0"

SSEvt = CreateFrame("Frame")
SSEvt:RegisterEvent("PLAYER_ENTERING_WORLD");
SSEvt:RegisterEvent("QUEST_LOG_UPDATE");

----------------------------------------------------------------------
--	SS01: Variables
----------------------------------------------------------------------

SS.EnglishFaction, _ = UnitFactionGroup("player")
SS.Race = UnitRace("player")
SS.Level = UnitLevel("player")
SS.recentlyAcceptedQuests = {}
SS.quests = {}
SS.questsbyid = {}

_, SS.Class, _ = UnitClass("player")
-- alliance flight points
-- to add a new flight point its the following format
-- {"name", minLevel, maxLevel, "race"}
SS.AllianceFlightPoints = {
	-- Eastern Kingdoms
	{"Stormwind", 1},
	{"Thelsamar", 1, 55},
	{"Ironforge", 1},
	{"Lakeshire", 1, 30},
	{"Sentinel Hill", 1, 30},
	{"Booty Bay", 30, 55},
	{"Chillwind Camp", 45, 60},
	{"Refuge Pointe", 30, 45},
	{"Menethil Harbor", 20, 60},
	{"Southshore", 20, 55},
	{"Darkshire", 20, 60},
	{"Morgan's Vigil", 50, 60},
	{"Thorium Point", 40, 55},
	{"Aerie Peak", 40, 55},
	{"Rebel Camp", 30, 55},
	-- Kalimdor
	{"Auberdine", 10, 20},
	{"Astranaar", 20, 30},
	{"Stonetalon Peak", 20, 30},
	{"Nijel's Point", 30, 40},
	{"Forest Song", 20, 30},
	{"Theramore Isle", 30, 50},
	{"Ratchet", 20, 35},
	{"Talendris Point", 40, 55},
	{"Talonbranch Glade", 45, 55},
	{"Everlook", 50, 60},
	{"Cenarion Hold", 55, 60},
	{"Marshal's Refugee", 45, 55},
	{"Gadgetzan", 45, 55},
	{"Thalanaar", 40, 50},
	{"Feathermoon Stronghold", 40, 50},
	{"Exodar", 10, 20, "Draenei"},
	{"Blood Watch", 10, 20, "Draenei"},
}

-- macros will only be created if your ingame race matches specified
-- to add a new macro its the following format
-- {"name", "icon", "body", "minLevel", "maxLevel", "race"}
SS.RaceMacros = {
	-- dwarf
	{"Rhapsody", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/run BuyMerchantItem(1)", 1, 10, "Dwarf"},
	{"ThunderAle", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/run BuyMerchantItem(2)", 1, 10 , "Dwarf"},
	-- gnome
	{"Rhapsody", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/run BuyMerchantItem(1)", 1, 10, "Gnome"},
	{"ThunderAle", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/run BuyMerchantItem(2)", 1, 10 , "Gnome"},
}

-- these macros will be added to all characters regardless of race or faction
-- to add a new macro its the following format
-- {"name", "icon", "body"}
SS.GenericMacros = {
	{"Gossip1", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(1)"},
	{"Gossip2", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2)"},
	{"Gossip3", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(3)"},
	{"Hearthstone1", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(1);\n/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"Hearthstone2", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"Hearthstone3", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(3);\n/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"AutoQuest", "INV_MISC_QUESTIONMARK", "/run C_GossipInfo.SelectActiveQuest(C_GossipInfo.GetActiveQuests()[1][\"questID\"])"},
	{"LastTarget", "INV_MISC_QUESTIONMARK", "/targetlasttarget"},
    {"AbdandonQuests", "INV_MISC_QUESTIONMARK", "/run AbandonQuests()"},
	{"Destroy", "INV_MISC_QUESTIONMARK", "/dejunk destroy start\n/dejunk destroy next"},
}

SS.RoguePoisons = {
    ["Deadly Poison VII"] = 22054,
    ["Deadly Poison VI"] = 22053,
    ["Deadly Poison V"] = 20844,
    ["Deadly Poison IV"] = 8985,
    ["Deadly Poison III"] = 8984,
    ["Deadly Poison II"] = 2893,
    ["Deadly Poison"] = 2892,
    ["Instant Poison X"] = 22057,
    ["Instant Poison IX"] = 22056,
    ["Instant Poison VIII"] = 22055,
    ["Instant Poison VII"] = 21927,
    ["Instant Poison VI"] = 8928,
    ["Instant Poison V"] = 8927,
    ["Instant Poison IV"] = 8926,
    ["Instant Poison III"] = 6950,
    ["Instant Poison II"] = 6949,
    ["Instant Poison"] = 6947,
}
----------------------------------------------------------------------
--	SS02: Functions
----------------------------------------------------------------------

function SS:CreateMacroHelper(name, icon, body, perCharacter)
    perCharacter = perCharacter or false

---@diagnostic disable-next-line: redundant-parameter
    DeleteMacro(name)

    if GetMacroIndexByName(name) == 0  then
        CreateMacro(name, icon, body, perCharacter);
    end
end

function SS:ConditionalMacroHelper(name, icon, body, minLevel, maxLevel, race)
    minLevel = minLevel or 1
    maxLevel = maxLevel or 81
    race = race or SS.Race

---@diagnostic disable-next-line: redundant-parameter
    DeleteMacro(name)

    if SS.Level <= maxLevel and SS.Level >= minLevel and SS.Race == race then
        SS:CreateMacroHelper(name, icon, body)
    end
end

function SS:CreateMacros()
    -- Generic macros for all
    for _, v in pairs(SS.GenericMacros) do
        SS:ConditionalMacroHelper(v[1], v[2], v[3], v[4], v[5], v[6])
    end

    -- Alliance specific macros
    if SS.EnglishFaction == "Alliance" then
        -- flight points
        for _, v in pairs(SS.AllianceFlightPoints) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end

    -- race specific macros
    for _, v in pairs(SS.RaceMacros) do
        SS:ConditionalMacroHelper(v[1], v[2], v[3], v[4], v[5], v[6])
    end

    -- class specific macros
    if SS.Class == "ROGUE" then
        print("Rogue Poisons:")
        for k, v in pairs(SS.RoguePoisons) do
            local count = GetItemCount(v)
            if string.find(k, "Instant") and count > 0 then
                SS:ConditionalMacroHelper("mainpoison", "INV_MISC_QUESTIONMARK", "/use " ..k .. "\n/use 16")
            elseif string.find(k, "Deadly") and count > 0 then
                SS:ConditionalMacroHelper("offpoison", "INV_MISC_QUESTIONMARK", "/use " ..k .. "\n/use 17")

            end
        end
        if GetMacroIndexByName("offpoison") == 0  then
            for k, v in pairs(SS.RoguePoisons) do
                local count = GetItemCount(v)
                if string.find(k, "Instant") and count > 0 then
                    SS:ConditionalMacroHelper("offpoison", "INV_MISC_QUESTIONMARK", "/use " ..k .. "\n/use 17")
                end
            end
        end
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
			if not self.questsbyid[q.id] and not self.completedQuests[q.id] then
				self.recentlyAcceptedQuests[q.id]=nil
				self.recentlyAcceptedQuests[q.title]=nil

				self:LostQuestEvent(q.title,q.id,q.complete)

				if q.id==self.recentAbandonedQuestID then
					self:AbandonedQuestEvent(q.title,q.id,q.daily)
				end
				if q.id==self.recentCompletedQuestID --[[and q.title==self.recentCompletedQuestTitle--]] then  --maybe not needed...
					self:CompletedQuestEvent(q.title,q.id,q.daily)
				end
				self.recentlyLostQuests[q.title]=q.id
				self:ScheduleTimer(function() SS.recentlyLostQuests[q.title]=nil end, 3.0)
			end
		end
	end

	SS.recentAbandonedQuestID = nil

	for i,q in ipairs(newquests) do
		self:NewQuestEvent(q.title,q.id)
	end

	return self.quests
end

function AbandonQuests()
    for qi,quest in ipairs(SS.quests) do
        if math.abs(SS.Level - quest.level) > 7 then
            print("Abandoning Quest: " .. quest.title)
			SelectQuestLogEntry(quest.index)
			SetAbandonQuest()
			AbandonQuest()
        end
    end
end

----------------------------------------------------------------------
--	SS03: Events
----------------------------------------------------------------------
SSEvt:SetScript("OnEvent", function(__, event)
    if (event == "PLAYER_ENTERING_WORLD") then
        SS:CreateMacros();
    elseif (event == "QUEST_LOG_UPDATE") then
        SS:QuestTracking_CacheQuestLog();
    end
end
);

