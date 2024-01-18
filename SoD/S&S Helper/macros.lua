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
	{"Hearthstone1", "INV_MISC_QUESTIONMARK", "/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"Hearthstone2", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(2);\n/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"Hearthstone3", "INV_MISC_QUESTIONMARK", "/script SelectGossipOption(3);\n/script C_PlayerInteractionManager.ConfirmationInteraction(Enum.PlayerInteractionType.Binder)"},
	{"LastTarget", "INV_MISC_QUESTIONMARK", "/targetlasttarget"},
    {"AbandonQuests", "INV_MISC_QUESTIONMARK", "/run SS:AbandonQuests()"},
	{"Destroy", "INV_MISC_QUESTIONMARK", "/dejunk destroy start\n/dejunk destroy next"},
    {"Reset", "INV_MISC_QUESTIONMARK", "/script ResetInstances();"},
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

function SS:DeleteMacroHelper(name)
    if GetMacroIndexByName(name) ~= 0 then
        DeleteMacro(name)
    end
end

function SS:CreateMacroHelper(name, icon, body, perCharacter)
    perCharacter = perCharacter or false

---@diagnostic disable-next-line: redundant-parameter
    DeleteMacro(name)

    if GetMacroIndexByName(name) == 0  then
        CreateMacro(name, icon, body, perCharacter);
    end
end

function SS:ConditionalMacroHelper(name, icon, body, minLevel, maxLevel, race)
    local level = UnitLevel("player")
    local ssrace = UnitRace("player")
    minLevel = minLevel or 1
    maxLevel = maxLevel or 81
    race = race or ssrace

---@diagnostic disable-next-line: redundant-parameter
    DeleteMacro(name)

    if level <= maxLevel and level >= minLevel and ssrace == race then
        SS:CreateMacroHelper(name, icon, body)
    end
end

function SS:CreateMacros()
    local enfaction = self.db.char.enfaction
    local level = self.db.char.level
    local race = self.db.char.race
    local class = self.db.char.class

    -- delete all macros
    for _, v in pairs(SS.GenericMacros) do
        SS:DeleteMacroHelper(v[1])
    end

    for _, v in pairs(SS.AllianceFlightPoints) do
        SS:DeleteMacroHelper(v[1])
    end

    for _, v in pairs(SS.HordeFlightPoints) do
        SS:DeleteMacroHelper(v[1])
    end

    for _, v in pairs(SS.RaceMacros) do
        SS:DeleteMacroHelper(v[1])
    end

    -- Generic macros for all
    for _, v in pairs(SS.GenericMacros) do
        SS:ConditionalMacroHelper(v[1], v[2], v[3], v[4], v[5], v[6])
    end

    -- Alliance specific macros
    if enfaction == "Alliance" then
        -- flight points
        for _, v in pairs(SS.AllianceFlightPoints) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
	if enfaction == "Alliance" then
        -- flight points
        for _, v in pairs(SS.AllianceFlightPointsTBC) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
if enfaction == "Alliance" then
        -- flight points
        for _, v in pairs(SS.AllianceFlightPointsWOTLK) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
    -- Horde specific macros
    if enfaction == "Horde" then
        -- flight points
        for _, v in pairs(SS.HordeFlightPoints) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
	if enfaction == "Horde" then
        -- flight points
        for _, v in pairs(SS.HordeFlightPointsTBC) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
if enfaction == "Horde" then
        -- flight points
        for _, v in pairs(SS.HordeFlightPointsWOTLK) do
            SS:ConditionalMacroHelper(v[1], "INV_MISC_QUESTIONMARK", "/run local n=\""..v[1].."\"; for i=1, NUM_TAXI_BUTTONS do if TaxiNodeName(_G[\"TaxiButton\"..i]:GetID()):lower():find(n:lower()) then TakeTaxiNode(i) return; end end;", v[2], v[3], v[4])
        end
    end
    -- race specific macros
    for _, v in pairs(SS.RaceMacros) do
        SS:ConditionalMacroHelper(v[1], v[2], v[3], v[4], v[5], v[6])
    end

    -- class specific macros
    if class == "ROGUE" then
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