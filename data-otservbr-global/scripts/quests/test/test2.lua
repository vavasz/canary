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
            lookHead = 114,
            lookBody = 114,
            lookLegs = 114,
            lookFeet = 114,
            lookAddons = 3,
            lookMount = mountTable.lmount[i],
        }

        monster.events = {
            "wzbosschange",
            "bossaddoutfit",
        }

        monster.experience = 2000000
        monster.health = 7000000
        monster.maxHealth = 7000000
        monster.race = "blood"
        monster.corpse = 111
        monster.speed = 500
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
    name = {"Master of Fire", "Weakened Master of Fire"},
    ltype = {1070, 1070},
    lmount = {1285, 0},
    mevent = {"wzbosschange", "wzbosschange"}
}
createMonsters(elementalFire, COMBAT_FIREDAMAGE)

local elementalEnergy = {
    name = {"Master of Energy", "Weakened Master of Energy"},
    ltype = {1020, 1020},
    lmount = {849, 0},
    mevent = {"wzbosschange", "wzbosschange"}
}
createMonsters(elementalEnergy, COMBAT_ENERGYDAMAGE)

local elementalEarth = {
    name = {"Master of Earth", "Weakened Master of Earth"},
    ltype = {1385, 1385},
    lmount = {626, 0},
    mevent = {"wzbosschange", "wzbosschange"}
}
createMonsters(elementalEarth, COMBAT_EARTHDAMAGE)

local elementalIce = {
    name = {"Master of Ice", "Weakened Master of Ice"},
    ltype = {1619, 1619},
    lmount = {1169, 0},
    mevent = {"wzbosschange", "wzbosschange"}
}
createMonsters(elementalIce, COMBAT_ICEDAMAGE)
