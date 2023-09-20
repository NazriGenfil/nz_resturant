local ox_inventory = exports.ox_inventory

ESX.RegisterServerCallback('nz_drink:server:giveItem', function(source, cb, item, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getJob().label ~= config.jobname then return cb(false) end
	
    if xPlayer.canCarryItem(itemm amount) then
        xPlayer.addInventoryItem(item, amount)
    end
    
    lib.notify({
        title = 'Kantong kamu telalu penuh',
        description = 'Kosongkan kantong kamu',
        type = 'error'
    })
    
end)

lib.callback.register('nz_drink:callback:getItems', function(source, item, amount)
    local item = ox_inventory:Search(source, 'count', item)
    if not item >= amount then return false end

    return true

end)