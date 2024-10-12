local mType = Game.createMonsterType("magus sister")
local monster = {}

monster.description = "a magus sister"
monster.experience = 120000
monster.outfit = {
	lookType = 1747,
	lookHead = 1,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2606
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
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000 },
	{ name = "combat", interval = 3000, chance = 31, type = COMBAT_ICEDAMAGE, minDamage = -2100, maxDamage = -4700, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "ice chain", interval = 9500, chance = 37, minDamage = -2600, maxDamage = -4800, range = 7 },
	{ name = "combat", interval = 4000, chance = 55, type = COMBAT_HOLYDAMAGE, minDamage = -2550, maxDamage = -4700, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 23, type = COMBAT_HOLYDAMAGE, minDamage = -2800, maxDamage = -4100, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "root", interval = 2000, chance = 1, target = true },
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
