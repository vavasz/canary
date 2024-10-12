local mType = Game.createMonsterType("Immortal Knight's Apparition")
local monster = {}

monster.description = "a immortal knight's apparition"
monster.experience = 286000  -- 10x experience
monster.outfit = {
	lookType = 131,
	lookHead = 19,
	lookBody = 76,
	lookLegs = 74,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2649
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Mirrored Nightmare.",
}

monster.health = 75000  -- 3x health
monster.maxHealth = 75000  -- 3x max health
monster.race = "blood"
monster.corpse = 111
monster.speed = 235
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
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I am you. Just better!", yell = false },
	{ text = "I'll take your place when you are gone.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 76610 },
	{ name = "ultimate health potion", chance = 9010 },
	{ name = "epee", chance = 6870 },
	{ name = "green gem", chance = 4940 },
	{ name = "violet gem", chance = 3860 },
	{ name = "glacier amulet", chance = 3860 },
	{ name = "crystal mace", chance = 2360 },
	{ name = "giant sword", chance = 1720 },
	{ name = "stone skin amulet", chance = 1500 },
	{ name = "crown shield", chance = 640 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
	
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 },  -- Increased max damage
	{ name = "combat", interval = 3000, chance = 26, type = COMBAT_ICEDAMAGE, minDamage = -2520, maxDamage = -3000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },  -- Increased max damage
	{ name = "ice chain", interval = 9500, chance = 34, minDamage = -3150, maxDamage = -3900, range = 7 },  -- Increased max damage
	{ name = "combat", interval = 5000, chance = 52, type = COMBAT_HOLYDAMAGE, minDamage = -3150, maxDamage = -3900, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },  -- Increased max damage
	{ name = "combat", interval = 4000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -4200, radius = 4, effect = CONST_ME_HOLYAREA, target = false },  -- Increased max damage
	{ name = "combat", interval = 3000, chance = 19, type = COMBAT_PHYSICALDAMAGE, minDamage = -2550, maxDamage = -3000, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },  -- Increased max damage
}

monster.defenses = {
	defense = 300,  -- Adjusted for increased difficulty
	armor = 300,  -- Adjusted for increased difficulty
	mitigation = 3.04,  -- Kept the same
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 50 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -30 },  -- Adjusted for difficulty
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },  -- Adjusted for difficulty
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },  -- Adjusted for difficulty
	{ type = COMBAT_DEATHDAMAGE, percent = -30 },  -- Adjusted for difficulty
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
