local mType = Game.createMonsterType("Rheys")
local monster = {}

monster.description = "a rheys"
monster.experience = 70000
monster.outfit = {
	lookType = 364,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 85,
	lookFeet = 85,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2593
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

monster.health = 222000
monster.maxHealth = 222000
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
	{ name = "Exalted core", chance = 80 },
	{ name = "Bag you desire", chance = 90 },
	{ name = "Primal bag", chance = 90 },
	{ name = "Cobra sword", chance = 20 },
	{ name = "Cobra axe", chance = 20 },
	{ name = "Cobra club", chance = 20 },
	{ name = "Cobra Rod", chance = 20 },
	{ name = "Cobra crossbow", chance = 20 },
	{ name = "Lion Shield", chance = 20 },
}

monster.attacks = {
	{ name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -9100 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -9750, maxDamage = -12900, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -10690, maxDamage = -13300, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -10100, maxDamage = -14700, range = 7 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -11200, maxDamage = -14500, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 241, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -12170, maxDamage = -15860, length = 8, spread = 0, effect = 243, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -11180, maxDamage = -15480, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -11700, maxDamage = -15400, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 264, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -10890, maxDamage = -15200, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -10890, maxDamage = -15200, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 10900, maxDamage = -14800, range = 7, target = false },
}

monster.defenses = {
	defense = 86,
	armor = 86,
	mitigation = 2.11,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -25 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
