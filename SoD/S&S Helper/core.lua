SSHelper = LibStub("AceAddon-3.0"):NewAddon("SSHelper", "AceEvent-3.0", "AceConsole-3.0")
SS = SSHelper
local AC = LibStub("AceConfig-3.0")
local ACD = LibStub("AceConfigDialog-3.0")

----------------------------------------------------------------------
--	SS01: Ace Functions
----------------------------------------------------------------------
function SSHelper:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("SSHelperDB", self.defaults, true)

	AC:RegisterOptionsTable("SSHelper_Options", self.options)
	self.optionsFrame = ACD:AddToBlizOptions("SSHelper_Options", "SSHelper")

	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	AC:RegisterOptionsTable("SSHelper_Profiles", profiles)
	ACD:AddToBlizOptions("SSHelper_Profiles", "Profiles", "SSHelper")

---@diagnostic disable-next-line: undefined-field
	self:RegisterChatCommand("ss", "SlashCommand")
---@diagnostic disable-next-line: undefined-field
	self:RegisterChatCommand("SSHelper", "SlashCommand")

	self:GetCharacterInfo()
end

function SSHelper:OnEnable()
    for i, event in ipairs(SS.EventList) do
---@diagnostic disable-next-line: undefined-field
        self:RegisterEvent(event)
    end
end

----------------------------------------------------------------------
--	SS02: Events
----------------------------------------------------------------------
SS.EventList =  {
	"PLAYER_ENTERING_WORLD",
	"QUEST_LOG_UPDATE",
	"GOSSIP_SHOW",
	"QUEST_GREETING",
	"QUEST_DETAIL",
	"QUEST_PROGRESS",
	"QUEST_COMPLETE",
	"CHARACTER_POINTS_CHANGED",
	"LOOT_BIND_CONFIRM",
	"CONFIRM_LOOT_ROLL",
	"MERCHANT_SHOW",
	"PLAYER_INTERACTION_MANAGER_FRAME_SHOW",
	"PLAYER_INTERACTION_MANAGER_FRAME_HIDE",
	"LOOT_OPENED",
	"LOOT_CLOSED",
	"PLAYER_REGEN_DISABLED",
	"PLAYER_REGEN_ENABLED",
}

function SSHelper:PLAYER_ENTERING_WORLD(_)
	self:DebugLog("PLAYER_ENTERING_WORLD")
	SS:CreateMacros()
end

function SSHelper:QUEST_LOG_UPDATE(_)
	self:DebugLog("QUEST_LOG_UPDATE")
	SS:QuestTracking_CacheQuestLog()
end

function SSHelper:GOSSIP_SHOW(_)
	self:DebugLog("GOSSIP_SHOW")
	if SS.db.profile.autoAcceptQuest then
		SS:QuestAutoAccept_InGossip()
	end
	if SS.db.profile.autoTurnInQuest then
		SS:QuestAutoTurnin_InGossip()
	end
end

function SSHelper:QUEST_GREETING(_)
	self:DebugLog("QUEST_GREETING")
	if SS.db.profile.autoAcceptQuest then
		SS:QuestAutoAccept_InGreeting()
	end
	if SS.db.profile.autoTurnInQuest then
		SS:QuestAutoTurnin_InGreeting()
	end
end

function SSHelper:QUEST_DETAIL(_)
	self:DebugLog("QUEST_DETAIL")
	if SS.db.profile.autoAcceptQuest then
		SS:QuestAutoAccept_InDetail()
	end
end

function SSHelper:QUEST_PROGRESS(_)
	self:DebugLog("QUEST_PROGRESS")
	if SS.db.profile.autoTurnInQuest then
		SS:QuestAutoComplete_InProgress()
	end
end

function SSHelper:QUEST_COMPLETE(_)
	self:DebugLog("QUEST_COMPLETE")
	if SS.db.profile.autoTurnInQuest then
		SS:QuestAutoComplete_Complete()
	end
end

function SSHelper:CHARACTER_POINTS_CHANGED(_)
	self:DebugLog("CHARACTER_POINTS_CHANGED")
	SS:LearnTalents()
end

function SSHelper:LOOT_BIND_CONFIRM(_)
    self:DebugLog("LOOT_BIND_CONFIRM")
    if SS.db.profile.disableLootConfirm then
		for i = GetNumLootItems(), 1, -1 do
			self:DebugLog("LootSlot: " .. i)
			C_Timer.After(0.5, function ()
				LootSlot(i)
				ConfirmLootSlot(i)
				StaticPopup_Hide("LOOT_BIND")
			end)
		end
    end
end

function SSHelper:CONFIRM_LOOT_ROLL(_)
	if SS.db.profile.disableLootConfirm then
		-- ConfirmLootRoll(arg1, arg2)
		-- StaticPopup_Hide("CONFIRM_LOOT_ROLL")
	end
end

function SSHelper:MERCHANT_SHOW(_)
	self:DebugLog("MERCHANT_SHOW")
	if SS.db.profile.sellJunk then
		self:DebugLog("Selling Junk")
		SS:JunkHandler()
		if SS.db.profile.autoRepair then
			self:DebugLog("Repairing")
			SS:RepairHandler()
		end
	end
end

----------------------------------------------------------------------
--	SS03: Functions
----------------------------------------------------------------------

function SSHelper:GetCharacterInfo()
	-- stores character-specific data
	self.db.char.level = UnitLevel("player")
    self.db.char.race = UnitRace("player")
    self.db.char.enfaction = select(1, UnitFactionGroup("player"))
    self.db.char.class = select(2, UnitClass("player"))
end

function SSHelper:SlashCommand(input, editbox)
	if input == "enable" then
		self:Enable()
---@diagnostic disable-next-line: undefined-field
		self:Print("Enabled.")
	elseif input == "disable" then
		-- unregisters all events and calls SSHelper:OnDisable() if you defined that
		self:Disable()
---@diagnostic disable-next-line: undefined-field
		self:Print("Disabled.")
	elseif input == "message" then
		print("this is our saved message:", self.db.profile.someInput)
    elseif input == "talents" then
        SS:LearnTalents()
	else
---@diagnostic disable-next-line: undefined-field
		self:Print("Some useful help message.")
		-- https://github.com/Stanzilla/WoWUIBugs/issues/89
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		--[[ or as a standalone window
		if ACD.OpenFrames["SSHelper_Options"] then
			ACD:Close("SSHelper_Options")
		else
			ACD:Open("SSHelper_Options")
		end
		]]
	end
end

function SSHelper:DebugLog(log)
	if self.db.profile.debugLogs then
		print(log)
	end
end

