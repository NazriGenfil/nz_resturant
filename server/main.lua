local ox_inventory = exports.ox_inventory

RegisterNetEvent("nz-restaurant:server:cook", function(items, giveitem)
	local xPlayer = ESX.GetPlayerFromId(source)
    -- if xPlayer.getJob().label ~= config.jobname then return end
	
    if exports.ox_inventory:CanCarryItem(source, item, amount) then
        local success, response = exports.ox_inventory:AddItem(source, item, amount)
        if not success then
            -- if no slots are available, the value will be "inventory_full"
            lib.notify({
                title = 'Kantong kamu telalu penuh',
                description = 'Kosongkan kantong kamu',
                type = 'error'
            })
        end        
    end
    
    lib.notify({
        title = 'Kantong kamu telalu penuh',
        description = 'Kosongkan kantong kamu',
        type = 'error'
    })
    
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

    print(hasItems)
    return hasItems

end)