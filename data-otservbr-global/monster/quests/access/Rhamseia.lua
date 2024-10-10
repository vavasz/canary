local mType = Game.createMonsterType("Rhamseia")
local monster = {}

monster.description = "a rhamseia"
monster.experience = 65000
monster.outfit = {
	lookType = 359,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 85,
	lookFeet = 85,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2590
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

monster.health = 195000
monster.maxHealth = 195000
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
	{ name = "Exalted core", chance = 60 },
	{ name = "Bag you desire", chance = 70 },
	{ name = "Primal bag", chance = 70 },
	{ name = "Cobra sword", chance = 10 },
	{ name = "Cobra axe", chance = 10 },
	{ name = "Cobra club", chance = 10 },
	{ name = "Cobra Rod", chance = 10 },
	{ name = "Cobra crossbow", chance = 10 },
	{ name = "Lion Shield", chance = 10 },
}

monster.attacks = {
	{ name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -5100 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -5750, maxDamage = -8900, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -6690, maxDamage = -9300, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -6100, maxDamage = -10700, range = 7 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -7200, maxDamage = -10500, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 241, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -8170, maxDamage = -11860, length = 8, spread = 0, effect = 243, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -7180, maxDamage = -11480, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -7700, maxDamage = -11400, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 264, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -6890, maxDamage = -11200, length = 8, spread = 0, effect = 244, target = false },
		{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -6890, maxDamage = -11200, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 6900, maxDamage = -10800, range = 7, target = false },
}

monster.defenses = {
	defense = 86,
	armor = 86,
	mitigation = 2.11,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 25 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = -20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
