local mType = Game.createMonsterType("Immortal Branchy Crawler")
local monster = {}

monster.description = "an immortal branchy crawler"
monster.experience = 178600 -- 10x experience
monster.outfit = {
	lookType = 1297,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2658
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland.",
}

monster.health = 81000 -- 3x health
monster.maxHealth = 81000
monster.race = "blood"
monster.corpse = 33809
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
	interval = 5000,
	chance = 10,
	{ text = "Bones are just sticks. They break easily.", yell = false },
	{ text = "Decay!", yell = false },
	{ text = "I'll make you crawl, too!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 55480 },
	{ name = "gold ingot", chance = 9090 },
	{ name = "ultimate health potion", chance = 8810, maxCount = 8 },
	{ name = "roots", chance = 6000 },
	{ name = "blue gem", chance = 1900 },
	{ name = "crawler's essence", chance = 1450 },
	{ name = "terra legs", chance = 970 },
	{ name = "green gem", chance = 800 },
	{ name = "hammer of wrath", chance = 760 },
	{ name = "violet gem", chance = 650 },
	{ name = "crystal crossbow", chance = 630 },
	{ name = "nightmare blade", chance = 540 },
	{ name = "twiceslicer", chance = 420 },
	{ name = "crystalline sword", chance = 390 },
	{ name = "ruthless axe", chance = 330 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2850 }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -3900, range = 7, shootEffect = CONST_ANI_PIERCINGBOLT, effect = CONST_ME_GREEN_RINGS, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -3000, maxDamage = -3840, radius = 4, effect = CONST_ME_SMALLPLANTS, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -3750, radius = 4, effect = CONST_ME_HOLYDAMAGE, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -4200, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true }, -- 3x maxDamage
	{ name = "root", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.04,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -5 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = -9 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 40 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
