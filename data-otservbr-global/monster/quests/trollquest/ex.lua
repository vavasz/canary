local mType = Game.createMonsterType("atal da ex")
local monster = {}

monster.description = "atal da ex"
monster.experience = 0
monster.outfit = {
    lookType = 35,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 6042
monster.speed = 64
monster.manaCost = 220

monster.events = {
    "exfunctions",
}

monster.bosstiary = {
    bossRaceId = 1234, -- Replace with an appropriate ID
    bossRace = RARITY_NEMESIS,
}

monster.changeTarget = {
    interval = 4000,
    chance = 10,
}

monster.strategiesTarget = {
    nearest = 100,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = true, -- Set to true to indicate it's a boss
    illusionable = false,
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
}

monster.light = {
    level = 0,
    color = 0,
}

monster.loot = {
}

monster.attacks = {
    { name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -8880 },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -9400, maxDamage = -11920, length = 7, spread = 0, effect = 1, target = false },
    { name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -10152, maxDamage = -12240, radius = 4, effect = 2, target = true },
    { name = "death chain", interval = 2500, chance = 40, minDamage = -9680, maxDamage = -13360, range = 7 },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -8960, maxDamage = -11600, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 4, target = true },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -11336, maxDamage = -14288, length = 8, spread = 0, effect = 5, target = false },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -10544, maxDamage = -13984, length = 8, spread = 0, effect = 6, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -10960, maxDamage = -13920, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 7, target = true },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -10312, maxDamage = -13760, length = 8, spread = 0, effect = 8, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -10312, maxDamage = -13760, length = 8, spread = 0, effect = 9, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 12900, maxDamage = -13440, range = 7, target = false },
}

monster.defenses = {
    defense = 86,
    armor = 86,
    mitigation = 2.11,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },
    { type = COMBAT_ENERGYDAMAGE, percent = 10 },
    { type = COMBAT_EARTHDAMAGE, percent = 10 },
    { type = COMBAT_FIREDAMAGE, percent = 10 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 10 },
    { type = COMBAT_HOLYDAMAGE, percent = 10 },
    { type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
