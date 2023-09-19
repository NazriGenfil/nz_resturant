ESX.RegisterServerCallback('nz_drink:server:giveItem', function(source, cb, item, ammount)
	local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getJob().label ~= config.jobname then return cb(false) end
	
    if xPlayer.canCarryItem(itemm ammount) then
        xPlayer.addInventoryItem(item, ammount)
    end
    
    lib.notify({
        title = 'Kantong kamu telalu penuh',
        description = 'Kosongkan kantong kamu',
        type = 'error'
    })
    
end)