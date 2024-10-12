local mType = Game.createMonsterType("Unbreakable Sopping Carcass")
local monster = {}

monster.description = "an Unbreakable Sopping Carcass"
monster.experience = 234250 -- 10x experience
monster.outfit = {
    lookType = 1658,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2630
monster.Bestiary = {
    class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
    toKill = 5000,
    FirstUnlock = 200,
    SecondUnlock = 2000,
    CharmsPoints = 100,
    Stars = 5,
    Occurrence = 0,
    Locations = "Putrefactory.",
}

monster.health = 98100 -- 3x health
monster.maxHealth = 98100 -- 3x health
monster.race = "undead"
monster.corpse = 43832
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 0,
}

monster.strategiesTarget = {
    nearest = 70,
    health = 10,
    damage = 10,
    random = 10,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 0,
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
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3300 }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -4200, maxDamage = -4500, radius = 5, effect = CONST_ME_MORTAREA, target = false }, -- 3x harder in damage
    { name = "combat", interval = 2500, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -3600, maxDamage = -4200, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -2700, maxDamage = -4200, radius = 5, effect = CONST_ME_BIGPLANTS, target = false }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -3300, maxDamage = -4650, length = 8, spread = 5, effect = CONST_ME_BLACKSMOKE, target = false }, -- 3x harder in damage
    { name = "ice chain", interval = 3000, chance = 15, minDamage = -3600, maxDamage = -4200, target = false }, -- 3x harder in damage
}

monster.defenses = {
    defense = 327, -- 3x harder in defenses
    armor = 327, -- 3x harder in defenses
    mitigation = 9.84, -- 3x harder in defenses
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 35 },
    { type = COMBAT_EARTHDAMAGE, percent = -15 },
    { type = COMBAT_FIREDAMAGE, percent = -5 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 50 },
    { type = COMBAT_HOLYDAMAGE, percent = -20 },
    { type = COMBAT_DEATHDAMAGE, percent = 60 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
