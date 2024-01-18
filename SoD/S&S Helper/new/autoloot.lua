local addonName, addonTable = ...
 
local EventFrame = CreateFrame('Frame')
EventFrame:RegisterEvent('ADDON_LOADED')
EventFrame:SetScript('OnEvent', function(self, event, ...)
    if self[event] then
        self[event](self, ...)
    end
end)
 
function EventFrame:ADDON_LOADED(name)
    if name == addonName then
        -- check AutoLoot and turn On
        if GetCVar("autoLootDefault") == "0" then 
            SetCVar("autoLootDefault", "1");
            print("AutoLoot is On");
        end
 
        -- remove event
        self:UnregisterEvent('ADDON_LOADED')
        self.ADDON_LOADED = nil
    end
end
