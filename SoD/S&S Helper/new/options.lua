SSHelper.defaults = {
	profile = {
		debugLogs = false,
		autoTalent = true,
		autoAcceptQuest = true,
		autoTurnInQuest = true,
		disableLootConfirm = true,
		sellJunk = true,
		autoRepair = true,
		autoUseItem = true,
		autoLoot = true,
	},
}

-- https://www.wowace.com/projects/ace3/pages/ace-config-3-0-options-tables
SSHelper.options = {
	type = "group",
	name = "SSHelper",
	handler = SSHelper,
	args = {
		debugLogs = {
			type = "toggle",
			order = 1,
			name = "Debug Logs",
			desc = "This will print debug logs to console",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.debugLogs end,
			set = function(_, value) SSHelper.db.profile.debugLogs = value end,
		},
		autoTalent = {
			type = "toggle",
			order = 2,
			name = "Automatic talents",
			desc = "This will automatically pick your talents",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.autoTalent end,
			set = function(_, value) SSHelper.db.profile.autoTalent = value end,
		},
		autoAcceptQuest = {
			type = "toggle",
			order = 3,
			name = "Automatic quest accept",
			desc = "This will automatically accept quests",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.autoAcceptQuest end,
			set = function(_, value) SSHelper.db.profile.autoAcceptQuest = value end,
		},
		autoTurnInQuest = {
			type = "toggle",
			order = 4,
			name = "Automatic quest turn in",
			desc = "This will automatically turn in quests",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.autoTurnInQuest end,
			set = function(_, value) SSHelper.db.profile.autoTurnInQuest = value end,
		},
		disableLootConfirm = {
			type = "toggle",
			order = 5,
			name = "Auto accept loot",
			desc = "This will confirm loot confirm boxes automatically",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.disableLootConfirm end,
			set = function(_, value) SSHelper.db.profile.disableLootConfirm = value end,
		},
		sellJunk = {
			type = "toggle",
			order = 6,
			name = "Sell Junk",
			desc = "This will auto sell junk",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.sellJunk end,
			set = function(_, value) SSHelper.db.profile.sellJunk = value end,
		},
		autoRepair = {
			type = "toggle",
			order = 6,
			name = "Auto Repair",
			desc = "This will auto auto repair for you. It will use guild funds if available.",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.autoRepair end,
			set = function(_, value) SSHelper.db.profile.autoRepair = value end,
		},
		autoUseItem = {
			type = "toggle",
			order = 7,
			name = "Auto use item",
			desc = "This will auto use items when you get them.",
			-- inline getter/setter example
			get = function(_) return SSHelper.db.profile.autoUseItem end,
			set = function(_, value) SSHelper.db.profile.autoUseItem = value end,
		},
		autoLoot = {
            type = "toggle",
            order = 8, -- Set the appropriate order for your option
            name = "Auto Loot",
            desc = "Enable/Disable Auto Loot",
            get = function(_) return SSHelper.db.profile.autoLoot end,
            set = function(_, value) SSHelper.db.profile.autoLoot = value end,
        },
	},
}

function SSHelper:GetValue(info)
	return self.db.profile[info[#info]]
end

function SSHelper:SetValue(info, value)
	self.db.profile[info[#info]] = value
end
