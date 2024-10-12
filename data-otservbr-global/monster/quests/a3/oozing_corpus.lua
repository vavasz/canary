local mType = Game.createMonsterType("Unbreakable Oozing Corpus")
local monster = {}

monster.description = "an Unbreakable Oozing Corpus"
monster.experience = 206000 -- 10x experience
monster.outfit = {
    lookType = 1625,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2632
monster.Bestiary = {
    class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
    toKill = 5000,
    FirstUnlock = 200,
    SecondUnlock = 2000,
    CharmsPoints = 100,
    Stars = 5,
    Occurrence = 0,
    Locations = "Jaded Roots.",
}

monster.health = 86100 -- 3x health
monster.maxHealth = 86100 -- 3x health
monster.race = "undead"
monster.corpse = 43575
monster.speed = 220
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
    level = 4,
    color = 143,
}

monster.loot = {
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -4800 }, -- 3x damage
    { name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -3900, maxDamage = -5100, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true }, -- 3x damage
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -4200, maxDamage = -4650, length = 8, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false }, -- 3x damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -4650, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false }, -- 3x damage
    { name = "death chain", interval = 3000, chance = 15, minDamage = -2700, maxDamage = -3900, target = true }, -- 3x damage
}

monster.defenses = {
    defense = 300, -- 3x defenses
    armor = 321, -- 3x defenses
    mitigation = 9.75, -- 3x defenses
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 30 },
    { type = COMBAT_ENERGYDAMAGE, percent = -25 },
    { type = COMBAT_EARTHDAMAGE, percent = 40 },
    { type = COMBAT_FIREDAMAGE, percent = 25 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = -10 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },
    { type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
