local mType = Game.createMonsterType("Unbreakable Oozing Carcass")
local monster = {}

monster.description = "an Unbreakable Oozing Carcass"
monster.experience = 209800 -- 10x experience
monster.outfit = {
    lookType = 1626,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2633
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

monster.health = 82500 -- 3x health
monster.maxHealth = 82500 -- 3x health
monster.race = "undead"
monster.corpse = 43579
monster.speed = 215
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
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true,
}

monster.light = {
    level = 4,
    color = 143,
}

monster.loot = {
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1800 }, -- 3x damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -4500, maxDamage = -4800, radius = 5, effect = CONST_ME_BLACKSMOKE, target = false }, -- 3x damage
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -4200, maxDamage = -4500, radius = 5, effect = CONST_ME_ICEAREA, target = false }, -- 3x damage
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -4200, maxDamage = -4650, length = 8, spread = 5, effect = CONST_ME_ICEAREA, target = false }, -- 3x damage
    { name = "largedeathring", interval = 2000, chance = 20, minDamage = -2550, maxDamage = -4200, target = false }, -- 3x damage
    { name = "energy chain", interval = 3000, chance = 20, minDamage = -3150, maxDamage = -4200, target = false }, -- 3x damage
}

monster.defenses = {
    defense = 306, -- 3x defenses
    armor = 306, -- 3x defenses
    mitigation = 9.30, -- 3x defenses
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 25 },
    { type = COMBAT_EARTHDAMAGE, percent = -20 },
    { type = COMBAT_FIREDAMAGE, percent = -10 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 35 },
    { type = COMBAT_HOLYDAMAGE, percent = -25 },
    { type = COMBAT_DEATHDAMAGE, percent = 40 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
