local mType = Game.createMonsterType("A Paladin Killer")
local monster = {}

monster.description = "a paladin killer"
monster.experience = 735000
monster.outfit = {
	lookType = 1366,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 85,
	lookFeet = 85,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2662
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 50000,
	FirstUnlock = 100,
	SecondUnlock = 15000,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 0,
	Locations = "nimmerset",
}

monster.health = 255000
monster.maxHealth = 255000
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
	{ name = "Crystal Coin", chance = 100000, minCount = 1, maxCount = 17 },
	{ name = "Exalted core", chance = 100 },
	{ name = "Bag you desire", chance = 60 },
	{ name = "Primal bag", chance = 60 },
	{ name = "Cobra sword", chance = 15 },
	{ name = "Cobra axe", chance = 15 },
	{ name = "Cobra club", chance = 15 },
	{ name = "Cobra Rod", chance = 15 },
	{ name = "Cobra crossbow", chance = 15 },
	{ name = "Lion Shield", chance = 15 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -6100 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -4750, maxDamage = -5900, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -4750, maxDamage = -5900, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -4750, maxDamage = -5900, range = 7, radius = 7, shootEffect = CONST_ANI_DEATH, effect = 215, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -4750, maxDamage = -5900, length = 8, spread = 0, effect = 39, target = false },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -4750, maxDamage = -5900, length = 8, spread = 0, effect = 158, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -4750, maxDamage = -5900, range = 7, radius = 3, shootEffect = CONST_ANI_HOLY, effect = 217, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -4750, maxDamage = -5900, length = 8, spread = 0, effect = 49, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -4750, maxDamage = -5900, length = 8, spread = 0, effect = 50, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -4750, maxDamage = -5900, range = 7, target = false },
}

monster.defenses = {
	defense = 86,
	armor = 86,
	mitigation = 2.11,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -40 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 40 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 35 },
	{ type = COMBAT_HOLYDAMAGE, percent = -35 },
	{ type = COMBAT_DEATHDAMAGE, percent = 35 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
