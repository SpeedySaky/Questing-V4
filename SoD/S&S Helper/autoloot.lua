local addonName, addonTable = ...

local EventFrame = CreateFrame('Frame')
EventFrame:RegisterEvent('PLAYER_LOGIN')
EventFrame:SetScript('OnEvent', function(self, event, ...)
    if self[event] then
        self[event](self, ...)
    end
end)

function EventFrame:PLAYER_LOGIN()
    local autoLootEnabled = GetCVarBool("autoLootDefault")

    if not autoLootEnabled then
        -- Enable auto-loot
        SetCVar("autoLootDefault", "1")
        ReloadUI() -- Reload the UI to apply the changes

        print("|cFF00FF00AutoLoot was disabled and has been enabled by sHs Helper.|r")
    else
        print("|cFF00FF00AutoLoot is already enabled by sHs Helper.|r")
    end
end
