local mType = Game.createMonsterType("Unbreakable Sopping Corpus")
local monster = {}

monster.description = "an Unbreakable Sopping Corpus"
monster.experience = 224650 -- 10x experience
monster.outfit = {
    lookType = 1659,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2629
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

monster.health = 100200 -- 3x harder in health
monster.maxHealth = 100200 -- 3x harder in health
monster.race = "undead"
monster.corpse = 43836
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

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "*Lessshhh!*", yell = false },
}

monster.loot = {
    { name = "crystal coin", chance = 6961, maxCount = 1 },
    { name = "ultimate mana potion", chance = 10285, maxCount = 2 },
    { name = "ultimate health potion", chance = 10285, maxCount = 2 },
    { name = "organic acid", chance = 7678, maxCount = 1 },
    { name = "rotten roots", chance = 13133, maxCount = 1 },
    { name = "emerald bangle", chance = 8558, maxCount = 1 },
    { name = "underworld rod", chance = 8380, maxCount = 1 },
    { name = "violet gem", chance = 5084, maxCount = 1 },
    { name = "blue gem", chance = 9808, maxCount = 1 },
    { name = "relic sword", chance = 6964, maxCount = 1 },
    { name = "skullcracker armor", chance = 7270, maxCount = 1 },
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -4800 }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -3900, maxDamage = -4800, length = 8, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -3600, maxDamage = -4500, effect = CONST_ME_BIG_SCRATCH, target = true }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -4200, maxDamage = -4800, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = true }, -- 3x harder in damage
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -3600, maxDamage = -4500, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false }, -- 3x harder in damage
    { name = "largepoisonring", interval = 2000, chance = 10, minDamage = -3000, maxDamage = -3600, target = false }, -- 3x harder in damage
}

monster.defenses = {
    defense = 336, -- 3x harder in defenses
    armor = 336, -- 3x harder in defenses
    mitigation = 9.75, -- 3x harder in defenses
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 40 },
    { type = COMBAT_ENERGYDAMAGE, percent = -20 },
    { type = COMBAT_EARTHDAMAGE, percent = 50 },
    { type = COMBAT_FIREDAMAGE, percent = 30 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = -10 },
    { type = COMBAT_HOLYDAMAGE, percent = 5 },
    { type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
}

mType:register(monster)
