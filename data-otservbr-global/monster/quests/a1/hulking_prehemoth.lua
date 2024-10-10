local mType = Game.createMonsterType("Enhanced Hulking Prehemoth")
local monster = {}

monster.description = "an enhanced hulking prehemoth"
monster.experience = 126900  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1553,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2622
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sparkling Pools",
}

monster.health = 62100  -- Health tripled
monster.maxHealth = 62100  -- Max health tripled
monster.race = "blood"
monster.corpse = 39303
monster.speed = 191  -- Speed remains the same
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
	{ name = "Crystal Coin", chance = 28240 },
	{ name = "Prehemoth Horns", chance = 19870 },
	{ name = "Prehemoth Claw", chance = 16149, minCount = 1, maxCount = 2 },
	{ name = "Ultimate Health Potion", chance = 16120 },
	{ name = "Furry Club", chance = 7050 },
	{ name = "War Hammer", chance = 4660 },
	{ name = "War Axe", chance = 3040 },
	{ name = "Doublet", chance = 2880 },
	{ name = "Silver Brooch", chance = 1160 },
	{ name = "Emerald Bangle", chance = 780 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3750 },  -- Damage tripled
	{ name = "combat", interval = 3500, chance = 38, type = COMBAT_PHYSICALDAMAGE, minDamage = -2550, maxDamage = -5100, range = 4, shootEffect = CONST_ANI_LARGEROCK, target = true },  -- Damage tripled
	{ name = "combat", interval = 4100, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1800, maxDamage = -3600, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- Damage tripled
}

monster.defenses = {
	defense = 252,  -- Defense tripled
	armor = 252,  -- Armor tripled
	mitigation = 7.53,  -- Mitigation tripled
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 90 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -90 },
	{ type = COMBAT_HOLYDAMAGE, percent = -90 },
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
