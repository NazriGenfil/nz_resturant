local ox_inventory = exports.ox_inventory

RegisterNetEvent("nz_restaurant:server:giveDrink", function(item, giveitem)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    -- if xPlayer.getJob().label ~= config.jobname then return end
	print(item, giveitem)
    if exports.ox_inventory:CanCarryItem(src, item, giveitem) then
        exports.ox_inventory:AddItem(src, item, giveitem)
    end
    
    lib.notify({
        title = 'Kantong kamu telalu penuh',
        description = 'Kosongkan kantong kamu',
        type = 'error'
    })
    
end)

RegisterNetEvent("nz_restaurant:server:cook", function(items, giveitem, giveAmount)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    removedItems = {}
    local removed = true
    for k, v in pairs(items) do
        if exports.ox_inventory:RemoveItem(src, items[k].itemName, items[k].amount) then
        -- if Player.Functions.RemoveItem(items[k].itemName, items[k].amount) then
            table.insert(removedItems, {item = items[k].itemName, amount = items[k].amount})
            removed = removed and true
        else
            removed = removed and false
        end
    end

    if removed then
        if exports.ox_inventory:CanCarryItem(src, giveitem) then
            exports.ox_inventory:AddItem(src, giveitem, giveAmount)
        end 
        lib.notify({
            title = 'Kantong kamu telalu penuh',
            description = 'Kosongkan kantong kamu',
            type = 'error'
        })

        -- Player.Functions.AddItem(giveitem, 1)
        
    else
        for k, v in pairs(removedItems) do
            -- Player.Functions.AddItem(v.item, v.amount)
            if exports.ox_inventory:CanCarryItem(src, v.item) then
                exports.ox_inventory:AddItem(src, v.item, v.amount)
            end 
            lib.notify({
                title = 'Kantong kamu telalu penuh',
                description = 'Kosongkan kantong kamu',
                type = 'error'
            })
            
        end
        lib.notify({
            title = 'Sepertinya ada item yang terlewat',
            description = 'Silahkan coba lagi',
            type = 'error'
        })
        -- TriggerClientEvent('QBCore:Notify', source, "Looks like you dropped some items!", "error")
    end
end)

lib.callback.register('nz_drink:callback:ingredient', function(source, required)
    -- if xPlayer.getJob().name ~= config.jobname then return false end
    local xPlayer = ESX.GetPlayerFromId(source)
    local hasItems = true

    for k, v in pairs(required) do
        
        if xPlayer.hasItem(required[k].itemName) ~= nil then
            hasItems = hasItems and (xPlayer.hasItem(required[k].itemName).count >= required[k].amount)
        else
            hasItems = hasItems and false 
        end
    end

    -- print(hasItems)
    return hasItems

end)