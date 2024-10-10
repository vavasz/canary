-- Damage Types Effects Declaration
local damageTypeEffects = {
    [COMBAT_ENERGYDAMAGE] = {5, 23, 170, 179, 184, 185, 195, 198, 222, 244, 271},
    [COMBAT_EARTHDAMAGE] = {261, 213, 206, 196, 178, 169, 66, 55, 51, 45, 17, 9},
    [COMBAT_FIREDAMAGE] = {1, 7, 30, 37, 167, 177, 197, 215, 223, 249, 268},
    [COMBAT_ICEDAMAGE] = {243, 241, 216, 191, 176, 44, 43, 42, 34, 12},
}

-- Function to create monsters from a table
local function createMonsters(mountTable, damageType)
    for i = 1, #mountTable.name do
        local mType = Game.createMonsterType(mountTable.name[i])
        local monster = {}

        monster.description = string.format("a %s", mountTable.name[i]:lower())

        monster.outfit = {
            lookType = mountTable.ltype[i],
            lookHead = mountTable.lhead[i],
            lookBody = mountTable.lbody[i],
            lookLegs = mountTable.llegs[i],
            lookFeet = mountTable.lfeet[i],
            lookAddons = mountTable.laddons[i],
        }

        monster.raceId = mountTable.idrace[i]
        monster.Bestiary = {
        class = "Extra Dimensional",
        race = BESTY_RACE_EXTRA_DIMENSIONAL,
	    toKill = 1000,
	    FirstUnlock = 50,
	    SecondUnlock = 500,
	    CharmsPoints = 100,
	    Stars = 3,
	    Occurrence = 0,
	    Locations = "Instances.",
}

        monster.events = {
        }

        monster.experience = 1000000
        monster.health = 700000
        monster.maxHealth = 700000
        monster.race = "blood"
        monster.corpse = 111
        monster.speed = 250
        monster.manaCost = 450

        monster.changeTarget = {
            interval = 4000,
            chance = 0,
        }

        monster.strategiesTarget = {
            nearest = 70,
            health = 20,
            damage = 10,
        }

        monster.flags = {
            summonable = true,
            attackable = true,
            hostile = true,
            convinceable = false,
            pushable = true,
            illusionable = true,
            canPushItems = true,
            canPushCreatures = true,
            staticAttackChance = 90,
            targetDistance = 1,
            runHealth = 0,
            healthHidden = false,
            isBlockable = false,
            canWalkOnEnergy = true,
            canWalkOnFire = true,
            canWalkOnPoison = true,
            pet = true,
        }

            monster.loot = {
                { name = "Crystal Coin", chance = 7000, minCount = 1, maxCount = 11 },
                { name = "Magic Plate Armor", chance = 7000 },
                { name = "Mastermind Shield", chance = 7000 },
                { name = "Royal Helmet", chance = 7000 },
                { name = "Boots Of Haste", chance = 7000 },
                { name = "White Gem", chance = 7000 },
                { name = "Violet Gem", chance = 7000 },
                { name = "Stone Skin Amulet", chance = 7000 },
                { name = "Bag you desire", chance = 15 },
                { name = "Primal bag", chance = 15 },
            }

        local effects = damageTypeEffects[damageType]

        monster.attacks = {
            { name = "melee", interval = 2000, chance = 100, minDamage = -3000, maxDamage = -6600, effect = effects[math.random(#effects)] },
            { name = "combat", interval = 2500, chance = 45, type = damageType, minDamage = -4500, maxDamage = -5700, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2500, chance = 45, type = damageType, minDamage = -4700, maxDamage = -4900, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 45, type = damageType, minDamage = -4300, maxDamage = -5000, length = 8, spread = 3, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 3000, chance = 45, type = damageType, minDamage = -3600, maxDamage = -6100, radius = 4, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 45, type = damageType, minDamage = -4200, maxDamage = -6500, length = 6, spread = 2, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 2500, chance = 45, type = damageType, minDamage = -4700, maxDamage = -4900, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 45, type = damageType, minDamage = -4300, maxDamage = -5000, length = 8, spread = 3, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 3000, chance = 45, type = damageType, minDamage = -3600, maxDamage = -6100, radius = 4, effect = effects[math.random(#effects)], target = true },
        }

        mType:register(monster)        
    end
end

-- Elemental Groups
local elementalFire = {
    name = {"instanced fire overloading", "instanced lava overloading"},
    ltype = {1407, 1408},
    lhead = {114, 114},
    lbody = {94, 94},
    llegs = {114, 114},
    lfeet = {114, 114},
    laddons = {3, 3},
    idrace = {2698, 2699}
}
createMonsters(elementalFire, COMBAT_FIREDAMAGE)

local elementalEnergy = {
    name = {"instanced storm overloading", "instanced tempest overloading"},
    ltype = {1737, 932},
    lhead = {114, 114},
    lbody = {91, 91},
    llegs = {114, 114},
    lfeet = {114, 114},
    laddons = {3, 3},
    idrace = {2700, 2701}
}
createMonsters(elementalEnergy, COMBAT_ENERGYDAMAGE)

local elementalEarth = {
    name = {"instanced swamp overloading", "instanced nature overloading"},
    ltype = {1119, 1188},
    lhead = {114, 114},
    lbody = {83, 83},
    llegs = {114, 114},
    lfeet = {114, 114},
    laddons = {3, 3},
    idrace = {2702, 2703}
}
createMonsters(elementalEarth, COMBAT_EARTHDAMAGE)

local elementalIce = {
    name = {"instanced ice overloading", "instanced avalanche overloading"},
    ltype = {1188, 1189},
    lhead = {114, 114},
    lbody = {85, 85},
    llegs = {114, 114},
    lfeet = {114, 114},
    laddons = {3, 3},
    idrace = {2704, 2705}
}
createMonsters(elementalIce, COMBAT_ICEDAMAGE)
