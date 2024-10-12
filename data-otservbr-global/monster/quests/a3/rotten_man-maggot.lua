local mType = Game.createMonsterType("Unbreakable Rotten Man-Maggot")
local monster = {}

monster.description = "an Unbreakable Rotten Man-Maggot"
monster.experience = 226250 -- 10x experience
monster.outfit = {
    lookType = 1655,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2631
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

monster.health = 93300 -- 3x health
monster.maxHealth = 93300 -- 3x health
monster.race = "undead"
monster.corpse = 43820
monster.speed = 195
monster.manaCost = 0

monster.changeTarget = {
    interval = 5000,
    chance = 10,
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
    convinceable = true,
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
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

monster.voices = {
    interval = 5000,
    chance = 10,
}

monster.loot = {
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 }, -- 3x damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -3300, maxDamage = -4200, radius = 5, effect = CONST_ME_MORTAREA, target = true }, -- 3x damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -3900, maxDamage = -5400, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true }, -- 3x damage
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -3600, maxDamage = -5100, length = 8, spread = 5, effect = CONST_ME_ICEAREA, target = false }, -- 3x damage
    { name = "largeicering", interval = 2000, chance = 15, minDamage = -2400, maxDamage = -3600, target = false }, -- 3x damage
}

monster.defenses = {
    defense = 330, -- 3x defenses
    armor = 330, -- 3x defenses
    mitigation = 8.25, -- 3x defenses
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 55 },
    { type = COMBAT_EARTHDAMAGE, percent = -15 },
    { type = COMBAT_FIREDAMAGE, percent = -10 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 40 },
    { type = COMBAT_HOLYDAMAGE, percent = -15 },
    { type = COMBAT_DEATHDAMAGE, percent = 30 },
}

monster.immunities = {
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
