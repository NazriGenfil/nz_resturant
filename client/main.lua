local xPlayer = nil

-- function 
oven = function()
    local Menus = {}
    for k,v in pairs(config.oven) do
        Menus[#Menus + 1] = {
            id = k,
            title = v.label,
            description = v.description,
            image = v.image,
            serverEvent = 'nz_drink:server:giveItem',
            args = {
                v.item,
                v.amount
            }
        }
    end

    lib.registerContext({
        id = 'Prep_Menus',
        title = 'Pilih Menu',
        options = Menus
    })
    
    lib.showContext('Prep_Menus')      
end

Prep = function()
    local Menus = {}
    for k,v in pairs(config.prep) do
        Menus[#Menus + 1] = {
            id = k,
            title = v.label,
            description = v.description,
            image = v.image,
            serverEvent = 'nz_drink:server:giveItem',
            args = {
                v.item,
                v.amount
            }
        }
    end

    lib.registerContext({
        id = 'Prep_Menus',
        title = 'Pilih Menu',
        options = Menus
    })
    
    lib.showContext('Prep_Menus')      
end

Drinks = function()
    local drinkMenus = {}
    for k,v in pairs(config.drink) do
        drinkMenus[#drinkMenus + 1] = {
            id = k,
            title = v.label,
            description = v.description,
            image = v.image,
            serverEvent = 'nz_drink:server:giveItem',
            args = {
                v.item,
                v.amount
            }
        }
    end

    lib.registerContext({
        id = 'Drink_Menus',
        title = 'Pilih Menu',
        options = drinkMenus
    })
    
    lib.showContext('Drink_Menus')      
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
                        oven()
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
                        Prep()
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

SetupBlips = function()
    for k, v in pairs(config.location) do
        blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(blip, config.blipSprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.6)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, 49)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(config.name)
        EndTextCommandSetBlipName(blip)
    end
end

-- event handlers
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
    SetupBlips()
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
