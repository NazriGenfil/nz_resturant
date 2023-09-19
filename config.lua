config = {} or config

config.debug = true

config.location = vec4(-1174.9675, -883.5522, 13.9619, 30.5904)

config.drinkLocation = {
    {
        name = "drik1", -- name cannot be same with other 
        coords = vec3(-1199.98, -895.08, 14.25),
        size = vec3(1.1, 1.25, 1.25),
        rotation = 305.0,
    },
    {
        name = "drink2",
        coords = vec3(-1199.26, -895.95, 14.4),
        size = vec3(1.1, 1.0, 0.95),
        rotation = 304.0,
    },
}

config.PrepLocation = {
    {
        name = "preplocation1", -- name cannot be same with other
        coords = vec3(-1199.15, -902.76, 13.8),
        size = vec3(0.9, 2.4, 1),
        rotation = 32.5,
    },
}

config.OvenLocation = {
    {
        name = "oven",
        coords = vec3(-1201.64, -899.02, 13.6),
        size = vec3(2.5, 1, 1.0),
        rotation = 304.5,
    },
}

config.drink = {
    {
        label = "Water", 
        description = "Water Bottle", 
        item = "water_bottle", --item that will be given
        image = "",
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Water", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    {
        label = "Orange Juice", 
        description = "Orange Juice", 
        item = "orangejuice", --item that will be given
        image = "",
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Juice", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
}

config.prep = {
    {
        label = "Make Seasoning", 
        description = "Onion | Salt | Papper ", 
        item = "seasoning", --item that will be given
        required = {
            [1] = {itemName = "onion", amount = 1},
            [2] = {itemName = "salt", amount = 1},
            [3] = {itemName = "papper", amount = 1},
        },
        progressbar = "Making Seasoning", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
    {
        label = "Make Fried Seasoning", 
        description = "Onion [2] | Chilly [2] | Oil | Salt | Papper", 
        item = "friedseasoning", --item that will be given
        required = {
            [1] = {itemName = "onion", amount = 2},
            [2] = {itemName = "chilly", amount = 2},
            [3] = {itemName = "oil", amount = 1},
            [4] = {itemName = "salt", amount = 1},
            [5] = {itemName = "papper", amount = 1},
        },
        progressbar = "Making Fried Seasoning", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}

config.oven = {
    {
        label = "Fried Rice with Egg", 
        description = "Rice | Fried Seasoning | Egg", 
        item = "friendrice", --item that will be given
        required = {
            [1] = {itemName = "rice", amount = 1},
            [2] = {itemName = "friedseasoning", amount = 1},
            [3] = {itemName = "egg", amount = 1},
        }, -- required items to make
        progressbar = "Making Fried Rice", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
    {
        label = "Fried Noodles with Egg", 
        description = "Noodle | Fried Seasoning | Egg", 
        item = "friednoodle", --item that will be given
        required = {
            [1] = {itemName = "noodle", amount = 1},
            [2] = {itemName = "friedseasoning", amount = 1},
            [3] = {itemName = "egg", amount = 1},
        }, -- required items to make
        progressbar = "Making Fried Noodle", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}