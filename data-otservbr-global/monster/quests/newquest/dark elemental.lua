local mType = Game.createMonsterType("dark elemental")
local monster = {}

monster.description = "a dark elemental"
monster.experience = 120000
monster.outfit = {
	lookType = 1699,
	lookHead = 1,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2609
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

monster.health = 87000
monster.maxHealth = 87000
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
	{ name = "crystal coin", chance = 81310 },
	{ name = "warrior helmet", chance = 6850 },
	{ name = "blue gem", chance = 6230 },
	{ name = "great spirit potion", chance = 4980 },
	{ name = "violet gem", chance = 4670 },
	{ name = "glacier mask", chance = 4670 },
	{ name = "glacier amulet", chance = 4670 },
	{ name = "green gem", chance = 4670 },
	{ name = "wood cape", chance = 3120 },
	{ name = "skull helmet", chance = 1870 },
	{ name = "stone skin amulet", chance = 1560 },
	{ id = 23542, chance = 1250 }, -- collar of blue plasma
	{ id = 23529, chance = 1250 }, -- ring of blue plasma
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3350 },
	{ name = "combat", interval = 4000, chance = 26, type = COMBAT_DEATHDAMAGE, minDamage = -2300, maxDamage = -3600, range = 7, radius = 4, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_BIGCLOUDS, target = false },
	{ name = "ice chain", interval = 5000, chance = 20, minDamage = -2500, maxDamage = -3700, range = 7 },
	{ name = "death chain", interval = 2500, chance = 20, minDamage = -2200, maxDamage = -4000, range = 7 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -1900, maxDamage = -3500, range = 7, radius = 7, shootEffect = CONST_ANI_DEATH, effect = 261, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -2270, maxDamage = -3660, length = 8, spread = 0, effect = 265, target = false },
	{ name = "combat", interval = 9500, chance = 52, type = COMBAT_DEATHDAMAGE, minDamage = -2700, maxDamage = -2900, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_DEATHDAMAGE, target = false },
	{ name = "combat", interval = 3000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -3600, maxDamage = -3900, radius = 4, effect = CONST_ANI_DEATH, target = false },
	{ name = "combat", interval = 4000, chance = 23, type = COMBAT_DEATHDAMAGE, minDamage = -2400, maxDamage = -2700, radius = 4, shootEffect = CONST_ANI_EXPLOSION, range = 7, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "root", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.04,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -11 },
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
