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
    {
        label = "Hot Tea", 
        description = "Oolong Tea", 
        item = "oolongtea", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Tea", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    {
        label = "Ice Tea", 
        description = "Milk Tea", 
        item = "milktea", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Tea", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    {
        label = "Alcohol", 
        description = "Chivas with Green Tea", 
        item = "chivastea", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Tea", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
}

config.prep = {
    [1] = {
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
    [2] = {
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
    [3] = {
        label = "Rice", 
        description = "Take a Rice Bowl", 
        item = "rice", --item that will be given
        required = {}, -- required items to make
        progressbar = "Take a Rice Bowl", -- text to display on progressbar
        progresstime = 5000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
    [4] = {
        label = "Egg", 
        description = "Take a Egg", 
        item = "egg", --item that will be given
        required = {}, -- required items to make
        progressbar = "Take a Egg", -- text to display on progressbar
        progresstime = 1000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}

config.oven = {
    [1] = {
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
    [2] = {
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
    [3] = {
        label = "Scrambled Egg with Tomato", 
        description = "Egg | Seasoning | Tomato", 
        item = "scrambledegg", --item that will be given
        required = {
            [1] = {itemName = "egg", amount = 2},
            [2] = {itemName = "seasoning", amount = 1},
            [3] = {itemName = "tomato", amount = 2},
        }, -- required items to make
        progressbar = "Making Scrambled Egg", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
    [4] = {
        label = "Boiled Fish with Mushroom", 
        description = "Fish | Seasoning | Mushroom", 
        item = "boiledfish", --item that will be given
        required = {
            [1] = {itemName = "fish", amount = 2},
            [2] = {itemName = "seasoning", amount = 1},
            [3] = {itemName = "mushroom", amount = 1},
        }, -- required items to make
        progressbar = "Making Cheese Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
    [5] = {
        label = "Spicy Chicken", 
        description = "Chicken | Sour Sauce | Chilly | Paprika", 
        item = "spicychicken", --item that will be given
        required = {
            [1] = {itemName = "chicken", amount = 1},
            [2] = {itemName = "soursauce", amount = 1},
            [3] = {itemName = "chilly", amount = 1},
            [4] = {itemName = "paprika", amount = 1},
        }, -- required items to make
        progressbar = "Making Spicy Chicken", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
    [6] = {
        label = "Sweet and Sour Crispy Prawn", 
        description = "Crispy Prawn | Sour Sauce | Oyster Sauce", 
        item = "crispyprawn", --item that will be given
        required = {
            [1] = {itemName = "crispyprawn", amount = 1},
            [2] = {itemName = "soursauce", amount = 1},
            [3] = {itemName = "oystersauce", amount = 1},
        }, -- required items to make
        progressbar = "Making Crispy Prawn", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}