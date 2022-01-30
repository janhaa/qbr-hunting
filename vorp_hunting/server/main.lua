RegisterServerEvent("qbr-hunting:giveReward")
AddEventHandler("qbr-hunting:giveReward", function(givenItem, money, gold, rolPoints, xp)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.AddMoney('cash', money)
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.not_online'), 'error')
    end
    
    -- local _source = source
    -- local Character = VorpCore.getUser(_source).getUsedCharacter
    -- if givenItem ~= nil then
    --     for k,v in pairs(givenItem) do 
    --         local rnd = math.random(Config.ItemQuantity.Min, Config.ItemQuantity.Max)
    --         VorpInv.addItem(_source, v, rnd)
    --     end
    --     if money ~= 0 then 
    --         Character.addCurrency(0, money)
    --     end
    --     if gold ~= 0 then 
    --         Character.addCurrency(1, gold)
    --     end
    --     if rolPoints ~= 0 then 
    --         Character.addCurrency(2, rolPoints)
    --     end
    --     if xp ~= 0 then 
    --         Character.addXp(xp)
    --     end
    -- end
end)