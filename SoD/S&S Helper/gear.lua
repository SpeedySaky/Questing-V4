local total = 0;

function SS:CheckItemIsJunk(item)
    if item then
        _, _, Rarity, _, _, _, _, _, _, _, ItemPrice = GetItemInfo(item)
        local itemID = GetItemInfoFromHyperlink(item)
        if itemID then
            if Rarity == 0 then
                return true
            end
        end
    end
end

function SS:AddProfit(profit)
	if profit then
		total = total + profit
	end
end

local function SellJunk()
    local currPrice

    for bag = 0,4 do
        for slot = 1, C_Container.GetContainerNumSlots(bag) do
            local item = C_Container.GetContainerItemLink(bag,slot)

            if SS:CheckItemIsJunk(item) then
            currPrice = (select(11, GetItemInfo(item)) or 0) * (C_Container.GetContainerItemInfo and select(2, C_Container.GetContainerItemInfo(bag, slot)) or C_Container.GetContainerItemInfo(bag, slot).stackCount)
            -- this should get rid of problems with grey items, that cant be sell to a vendor
                if currPrice > 0 then
                    SS:AddProfit(currPrice)
                    C_Container.PickupContainerItem(bag, slot)
                    PickupMerchantItem()
                    print("Sold"..": "..item)
                end
            end
        end
    end

	print("Gained"..": "..GetMoneyString(total))
    total = 0
end


local function RepairFunc()
    if CanMerchantRepair() then -- If merchant is capable of repair
        -- Process repair
        local RepairCost, CanRepair = GetRepairAllCost()
        if CanRepair then -- If merchant is offering repair
            if IsInGuild() then
                -- Guilded character and guild repair option is enabled
                if CanGuildBankRepair() then
                    -- Character has permission to repair so try guild funds but fallback on character funds (if daily gold limit is reached)
                    RepairAllItems(1)
                    RepairAllItems()
                else
                    -- Character does not have permission to repair so use character funds
                    RepairAllItems()
                end
            else
                -- Unguilded character or guild repair option is disabled
                RepairAllItems()
            end
            -- Show cost summary
            print("Repaired for" .. " " .. GetCoinText(RepairCost) .. ".")
        end
    end
end

function SS:JunkHandler()
    SellJunk();
end

function SS:RepairHandler()
    RepairFunc();
end

