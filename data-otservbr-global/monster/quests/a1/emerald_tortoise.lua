local mType = Game.createMonsterType("Enhanced Emerald Tortoise")
local monster = {}

monster.description = "an enhanced emerald tortoise"
monster.experience = 121290  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1550,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2611
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

monster.health = 66900  -- Health tripled
monster.maxHealth = 66900  -- Max health tripled
monster.race = "blood"
monster.corpse = 39291
monster.speed = 179
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
	{ text = "Shllpp...", yell = false },
}

monster.loot = {
	{ name = "Emerald Tortoise Shell", chance = 28590 },
	{ name = "Crystal Coin", chance = 15520, minCount = 1, maxCount = 3 },
	{ name = "Great Spirit Potion", chance = 13360, minCount = 1, maxCount = 2 },
	{ name = "Blue Crystal Shard", chance = 4030 },
	{ name = "Green Crystal Fragment", chance = 3950 },
	{ name = "Violet Gem", chance = 3950 },
	{ name = "Red Crystal Fragment", chance = 3350 },
	{ name = "Yellow Gem", chance = 3320 },
	{ name = "White Pearl", chance = 3240 },
	{ name = "Green Crystal Shard", chance = 2900 },
	{ name = "Green Gem", chance = 2870 },
	{ name = "Orichalcum Pearl", chance = 2640, minCount = 1, maxCount = 2 },
	{ id = 282, chance = 2420 }, -- Giant Shimmering Pearl (Green)
	{ id = 3039, chance = 2420 }, -- Red Gem
	{ name = "Black Pearl", chance = 2160, minCount = 1, maxCount = 2 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3750 },  -- Damage tripled
	{ name = "energy chain", interval = 5000, chance = 37, minDamage = -2250, maxDamage = -3000, range = 3, target = true },  -- Damage tripled
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -1500, maxDamage = -1800, range = 5, shootEffect = CONST_ANI_ENERGY, target = true },  -- Damage tripled
	{ name = "emerald tortoise large ring", interval = 3500, chance = 35, minDamage = -1650, maxDamage = -3000 },  -- Damage tripled
	{ name = "emerald tortoise small ring", interval = 4500, chance = 20, minDamage = -1650, maxDamage = -2100 },  -- Damage tripled
	{ name = "emerald tortoise small explosion", interval = 3800, chance = 30, minDamage = -1200, maxDamage = -1800 },  -- Damage tripled
	{ name = "combat", interval = 4100, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -1350, maxDamage = -2250, radius = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = false },  -- Damage tripled
}

monster.defenses = {
	defense = 330,  -- Defense tripled
	armor = 291,  -- Armor tripled
	mitigation = 7.71,  -- Mitigation tripled
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
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
