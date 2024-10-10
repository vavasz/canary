local mType = Game.createMonsterType("bulltour")
local monster = {}

monster.description = "bulltour"
monster.experience = 120000
monster.outfit = {
	lookType = 1718,
	lookHead = 1,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2605
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

monster.health = 85000
monster.maxHealth = 85000
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
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 2320, maxDamage = -3500 },
	{ name = "combat", interval = 3000, chance = 27, type = COMBAT_PHYSICALDAMAGE, minDamage = -2250, maxDamage = -3100, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -3190, maxDamage = -3600, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 20, minDamage = -2200, maxDamage = -4000, range = 7 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -3500, maxDamage = -4000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -2870, maxDamage = -3260, length = 8, spread = 0, effect = 260, target = false },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -2780, maxDamage = -3380, length = 8, spread = 0, effect = 264, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -2300, maxDamage = -3100, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 268, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -2390, maxDamage = -3800, length = 8, spread = 0, effect = 271, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.75,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 1100, effect = CONST_ME_MAGIC_BLUE, target = false },
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
