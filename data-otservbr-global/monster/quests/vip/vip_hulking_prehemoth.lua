local mType = Game.createMonsterType("Vip Hulking Prehemoth")
local monster = {}

monster.description = "a vip hulking prehemoth"
monster.experience = 200000
monster.outfit = {
	lookType = 1553,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2271
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sparkling Pools",
}

monster.health = 40000
monster.maxHealth = 40000
monster.race = "blood"
monster.corpse = 39303
monster.speed = 191
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "SMAASH!", yell = true },
}

monster.loot = {
	{ name = "Crystal Coin", chance = 100000 },
	{ name = "Prehemoth Horns", chance = 100000 },
	{ name = "Prehemoth Claw", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "Ultimate Health Potion", chance = 100000 },
	{ name = "Furry Club", chance = 100000 },
	{ name = "War Hammer", chance = 100000 },
	{ name = "War Axe", chance = 100000 },
	{ name = "Doublet", chance = 100000 },
	{ name = "Silver Brooch", chance = 100000 },
	{ name = "Emerald Bangle", chance = 100000 },
	{ id = 39546, chance = 40 }, -- primal bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200 },
	{ name = "combat", interval = 3500, chance = 38, type = COMBAT_PHYSICALDAMAGE, minDamage = -1650, maxDamage = -2000, range = 4, shootEffect = CONST_ANI_LARGEROCK, target = true },
	{ name = "combat", interval = 4100, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1200, maxDamage = -2400, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = false },
}

monster.defenses = {
	defense = 84,
	armor = 84,
	mitigation = 2.51,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 40 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -30 },
	{ type = COMBAT_HOLYDAMAGE, percent = -30 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
