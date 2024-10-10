local mType = Game.createMonsterType("Unbreakable Converter")
local monster = {}

monster.description = "an unbreakable converter"
monster.experience = 214250  -- 10x experience
monster.outfit = {
    lookType = 1623,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2641
monster.Bestiary = {
    class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
    toKill = 5000,
    FirstUnlock = 200,
    SecondUnlock = 2000,
    CharmsPoints = 100,
    Stars = 5,
    Occurrence = 0,
    Locations = "Gloom Pillars.",
}

monster.health = 88800  -- 3x health
monster.maxHealth = 88800  -- 3x max health
monster.race = "undead"
monster.corpse = 43567
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
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
    convinceable = false,
    pushable = false,
    rewardBoss = false,
    illusionable = true,
    canPushItems = true,
    canPushCreatures = false,
    staticAttackChance = 80,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true,
}

monster.light = {
    level = 0,
    color = 0,
}

monster.loot = {
    { name = "crystal coin", chance = 5230, maxCount = 1 },
    { name = "darklight obsidian axe", chance = 6963, maxCount = 1 },
    { name = "darklight matter", chance = 6927, maxCount = 1 },
    { name = "darklight core", chance = 10715, maxCount = 1 },
    { name = "wand of starstorm", chance = 8797, maxCount = 1 },
    { name = "blue gem", chance = 9372, maxCount = 1 },
    { name = "ultimate health potion", chance = 9851, maxCount = 5 },
    { name = "focus cape", chance = 6945, maxCount = 1 },
    { name = "white gem", chance = 14533, maxCount = 1 },
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 },  -- 3x max damage
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -4200, maxDamage = -5700, length = 7, spread = 0, effect = CONST_ME_PINK_ENERGY_SPARK, target = false },
    { name = "combat", interval = 2500, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -4500, maxDamage = -4800, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
    { name = "largeholyring", interval = 2000, chance = 15, minDamage = -4200, maxDamage = -5700 },
    { name = "energy chain", interval = 3200, chance = 20, minDamage = -2400, maxDamage = -3600 },
}

monster.defenses = {
    defense = 300,  -- 3x defense
    armor = 300,    -- 3x armor
    mitigation = 3.31,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -20 },
    { type = COMBAT_ENERGYDAMAGE, percent = -10 },
    { type = COMBAT_EARTHDAMAGE, percent = 10 },
    { type = COMBAT_FIREDAMAGE, percent = 25 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 35 },
    { type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
