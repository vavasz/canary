local mType = Game.createMonsterType("Klioshiv")
local monster = {}

monster.description = "an Klioshiv"
monster.experience = 51000
monster.outfit = {
	lookType = 1718,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2588
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 25000,
	FirstUnlock = 100,
	SecondUnlock = 2500,
	CharmsPoints = 150,
	Stars = 5,
	Occurrence = 0,
	Locations = "nimmerset",
}

monster.health = 162000
monster.maxHealth = 162000
monster.race = "blood"
monster.corpse = 43669
monster.speed = 620
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	canPushCreatures = true,
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

monster.loot = {
	{ name = "Crystal Coin", chance = 100000, minCount = 1, maxCount = 8 },
	{ name = "Bag you desire", chance = 60 },
	{ name = "Exalted core", chance = 40 },
	{ name = "Cobra sword", chance = 5 },
	{ name = "Cobra axe", chance = 5 },
	{ name = "Cobra club", chance = 5 },
	{ name = "Cobra Rod", chance = 5 },
	{ name = "Cobra crossbow", chance = 5 },
	{ name = "Lion Shield", chance = 5 },
	{ name = "Zaoan Helmet", chance = 100000 },
	{ name = "gold ingot", chance = 100000, minCount = 1, maxCount = 10  },
	{ name = "Glacier Mask", chance = 100000 },
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 2320, maxDamage = -3500 },
	{ name = "combat", interval = 3000, chance = 27, type = COMBAT_PHYSICALDAMAGE, minDamage = -2250, maxDamage = -4100, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -3190, maxDamage = -4600, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 20, minDamage = -2200, maxDamage = -9000, range = 7 },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_ICEDAMAGE, minDamage = -3500, maxDamage = -5000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_DEATHDAMAGE, minDamage = -2870, maxDamage = -7260, length = 8, spread = 0, effect = 260, target = false },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -2780, maxDamage = -6380, length = 8, spread = 0, effect = 264, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -3300, maxDamage = -6100, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 268, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3390, maxDamage = -6800, length = 8, spread = 0, effect = 271, target = false },
}

monster.defenses = {
	defense = 86,
	armor = 86,
	mitigation = 2.11,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = -15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
