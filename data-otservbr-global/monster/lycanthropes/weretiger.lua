local mType = Game.createMonsterType("Weretiger")
local monster = {}

monster.description = "a weretiger"
monster.experience = 315000
monster.outfit = {
	lookType = 1364,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 85,
	lookFeet = 85,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2387
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 50000,
	FirstUnlock = 100,
	SecondUnlock = 15000,
	CharmsPoints = 500,
	Stars = 5,
	Occurrence = 0,
	Locations = "nimmerset",
}

monster.health = 160000
monster.maxHealth = 160000
monster.race = "blood"
monster.corpse = 111
monster.speed = 120
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
	{ name = "Exalted core", chance = 300 },
	{ name = "Bag you desire", chance = 200 },
	{ name = "Primal bag", chance = 200 },
	{ name = "Cobra sword", chance = 60 },
	{ name = "Cobra axe", chance = 60 },
	{ name = "Cobra club", chance = 60 },
	{ name = "Cobra Rod", chance = 60 },
	{ name = "Cobra crossbow", chance = 60 },
	{ name = "Lion Shield", chance = 60 },
}

monster.attacks = {
	{ name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -2100 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -2750, maxDamage = -3900, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -2690, maxDamage = -3300, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2690, maxDamage = -3300, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = 37, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, mminDamage = -2690, maxDamage = -3300, length = 8, spread = 0, effect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2690, maxDamage = -3300, length = 8, spread = 0, effect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -2690, maxDamage = -3300, range = 7, radius = 3, shootEffect = CONST_ANI_ENERGY, effect = 177, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -32690, maxDamage = -3300, length = 8, spread = 0, effect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -32690, maxDamage = -3300, length = 8, spread = 0, effect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -2690, maxDamage = -3300, range = 7, target = false },
}

monster.defenses = {
	defense = 86,
	armor = 86,
	mitigation = 2.11,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 40 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = -40 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -35 },
	{ type = COMBAT_HOLYDAMAGE, percent = 35 },
	{ type = COMBAT_DEATHDAMAGE, percent = -30 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
