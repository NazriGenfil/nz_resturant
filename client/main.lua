local xPlayer = nil

-- function 
Drinks = function()
    lib.registerContext({
        id = 'DrinksMenu',
        title = 'Pilih Menu Pembuatan',
        options = {,
          {
            title = 'Example button',
            description = 'Example button description',
            icon = 'circle',
            image = 'https://media.discordapp.net/attachments/1151160645937528942/1153548417155473468/34361079-c79e-4119-b582-9fc9a1febd4e.jpg?width=274&height=488',
            onSelect = function()
              print("Pressed the button!")
            end,
          },
        }
      }
    )
    lib.showContext('DrinksMenu')      
end

RemoveTarget = function()
    for k, v in pairs(config.drinkLocation) do
        exports.ox_target:removeZone(v.name)
    end

    for k, v in pairs(config.PrepLocation) do
        exports.ox_target:removeZone(v.name)
    end

    for k, v in pairs(config.OvenLocation) do
        exports.ox_target:removeZone(v.name)
    end
end

SetupOvenLocation = function()
    for k, v in pairs(config.OvenLocation) do
        print(k, json.encode(v))
        exports.ox_target:addBoxZone({
            name = v.name,
            coords = v.coords,
            size = v.size,
            rotation = v.rotation,
            debug = config.debug,
            thickness = 2,
            options = {
                {
                    name = v.name,
                    label = "Masak makanan",
                    icon = "fas fa-utensils",
                    distance = 2.0,
                    onSelect = function()
                        Drinks()
                    end
                }
            }
        })
    end
end

SetupPrepLocation = function()
    for k, v in pairs(config.PrepLocation) do
        print(k, json.encode(v))
        exports.ox_target:addBoxZone({
            name = v.name,
            coords = v.coords,
            size = v.size,
            rotation = v.rotation,
            debug = config.debug,
            thickness = 2,
            options = {
                {
                    name = v.name,
                    label = "Persiapkan bahan makanan",
                    icon = "fas fa-utensils",
                    distance = 2.0,
                    onSelect = function()
                        Drinks()
                    end
                }
            }
        })
    end
end

SetupDrinkTarget = function()
    for k, v in pairs(config.drinkLocation) do
        print(k, json.encode(v))
        exports.ox_target:addBoxZone({
            name = v.name,
            coords = v.coords,
            size = v.size,
            rotation = v.rotation,
            debug = config.debug,
            thickness = 2,
            options = {
                {
                    name = v.name,
                    label = "Ambil minuman",
                    icon = "fas fa-coffee",
                    distance = 2.0,
                    onSelect = function()
                        Drinks()
                    end
                }
            }
        })
    end
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    SetupPrepLocation()
    SetupDrinkTarget()
    SetupOvenLocation()
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    SetupPrepLocation()
    SetupDrinkTarget()
    SetupOvenLocation()
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    -- print(DrinkTarget)
    RemoveTarget()
    -- SetupDrinkTarget()
end)


RegisterCommand("debug", function(source, args, rawCommand)
    for k, v in pairs(config.drinkLocation) do
        print(k, json.encode(v))
    end
end, false)
