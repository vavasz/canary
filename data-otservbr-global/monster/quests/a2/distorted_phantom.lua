local mType = Game.createMonsterType("Immortal Distorted Phantom")
local monster = {}

monster.description = "an immortal distorted phantom"
monster.experience = 188700 -- 10x experience
monster.outfit = {
	lookType = 1298,
	lookHead = 113,
	lookBody = 94,
	lookLegs = 132,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2654
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

monster.health = 78000 -- 3x health
monster.maxHealth = 78000
monster.race = "undead"
monster.corpse = 34133
monster.speed = 240
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
	targetDistance = 4,
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
	{ text = "I'm not here. I am there.", yell = false },
	{ text = "The night is coming for you.", yell = false },
	{ text = "Too late... No turning back now.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 74920 },
	{ name = "great spirit potion", chance = 27010, maxCount = 5 },
	{ name = "distorted heart", chance = 6750 },
	{ id = 23529, chance = 4820 }, -- ring of blue plasma
	{ name = "underworld rod", chance = 4820 },
	{ name = "distorted robe", chance = 4500 },
	{ name = "violet gem", chance = 4180 },
	{ name = "springsprout rod", chance = 3860 },
	{ id = 23533, chance = 3540 }, -- ring of red plasma
	{ name = "gold ingot", chance = 2890 },
	{ name = "spellbook of warding", chance = 2890 },
	{ id = 23531, chance = 1930 }, -- ring of green plasma
	{ name = "glacial rod", chance = 1290 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2250 }, -- 3x maxDamage
	{ name = "combat", interval = 4000, chance = 33, type = COMBAT_HOLYDAMAGE, minDamage = -3000, maxDamage = -3750, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 5000, chance = 44, type = COMBAT_ICEDAMAGE, minDamage = -3150, maxDamage = -3900, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO, target = true }, -- 3x maxDamage
	{ name = "ice chain", interval = 10000, chance = 59, minDamage = -3300, maxDamage = -3900, range = 7 }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -3150, maxDamage = -3750, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 4000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -2700, maxDamage = -3300, range = 7, radius = 4, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true }, -- 3x maxDamage
	{ name = "extended holy chain", interval = 10000, chance = 59, minDamage = -1200, maxDamage = -2100, range = 7 }, -- 3x maxDamage
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.45,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
