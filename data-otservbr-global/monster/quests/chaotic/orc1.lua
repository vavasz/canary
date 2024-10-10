local mType = Game.createMonsterType("Vidarok")
local monster = {}

monster.description = "a Vidarok"
monster.experience = 40000
monster.outfit = {
	lookType = 1760,
	lookHead = 94,
	lookBody = 78,
	lookLegs = 79,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 3012
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library (fire section).",
}

monster.health = 75000
monster.maxHealth = 75000
monster.race = "undead"
monster.corpse = 111
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2500 },
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4280, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4380, range = 7, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -2175, maxDamage = -4200, length = 5, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4475, radius = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4475, radius = 2, effect = CONST_ME_FIREAREA, target = false },
	{ name = "root", interval = 2000, chance = 1, target = true },
	{ name = "soulwars fear", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 78,
	armor = 78,
	mitigation = 2.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
