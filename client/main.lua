local xPlayer = nil

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded',function(xPlayer, isNew, skin)
    ESX.PlayerData = xPlayer
end)