local mType = Game.createMonsterType("Immortal Druid's Apparition")
local monster = {}

monster.description = "an immortal druid's apparition"
monster.experience = 286000 -- 10x experience
monster.outfit = {
	lookType = 148,
	lookHead = 114,
	lookBody = 48,
	lookLegs = 114,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2653
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

monster.health = 75000 -- 3x health
monster.maxHealth = 75000
monster.race = "blood"
monster.corpse = 6081
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
	{ text = "Healing is what I do best.", yell = false },
	{ text = "I'll take your place when you are gone.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 80700 },
	{ name = "terra rod", chance = 17540 },
	{ name = "great mana potion", chance = 17110, maxCount = 3 },
	{ name = "blue gem", chance = 12720 },
	{ name = "green gem", chance = 6580 },
	{ name = "stone skin amulet", chance = 4820 },
	{ name = "glacier amulet", chance = 3510 },
	{ name = "sacred tree amulet", chance = 3070 },
	{ name = "springsprout rod", chance = 2190 },
	{ name = "underworld rod", chance = 2190 },
	{ name = "platinum amulet", chance = 1750 },
	{ name = "glacier robe", chance = 880 },
	{ id = 23544, chance = 440 }, -- collar of red plasma
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2550 }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 31, type = COMBAT_ICEDAMAGE, minDamage = -3240, maxDamage = -3900, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true }, -- 3x maxDamage
	{ name = "ice chain", interval = 9500, chance = 37, minDamage = -3300, maxDamage = -3900, range = 7 }, -- 3x maxDamage
	{ name = "combat", interval = 4000, chance = 55, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -3750, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 23, type = COMBAT_HOLYDAMAGE, minDamage = -3750, maxDamage = -4200, radius = 4, effect = CONST_ME_HOLYAREA, target = false }, -- 3x maxDamage
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.75,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 3000, maxDamage = 3300, effect = CONST_ME_MAGIC_BLUE, target = false }, -- Increased healing
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 40 },
	{ type = COMBAT_DEATHDAMAGE, percent = -20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
