local mType = Game.createMonsterType("Enhanced Noxious Ripptor")
local monster = {}

monster.description = "an enhanced noxious ripptor"
monster.experience = 131900  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1558,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2618
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 1,
	Locations = "Crystal Enigma",
}

monster.health = 68100  -- Health tripled
monster.maxHealth = 68100  -- Max health tripled
monster.race = "blood"
monster.corpse = 39323
monster.speed = 180  -- Speed remains the same
monster.manaCost = 0
monster.maxSummons = 0

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
	{ text = "Krccchht!", yell = false },
}

monster.loot = {
	{ name = "Crystal Coin", chance = 26770, minCount = 1, maxCount = 2 },
	{ name = "Ripptor Scales", chance = 12850 },
	{ name = "Ultimate Health Potion", chance = 10570, minCount = 1, maxCount = 2 },
	{ name = "Ripptor Claw", chance = 8280, minCount = 1, maxCount = 2 },
	{ name = "Serpent Sword", chance = 1440 },
	{ name = "Sacred Tree Amulet", chance = 1360 },
	{ name = "Muck Rod", chance = 1290 },
	{ name = "Terra Legs", chance = 750 },
	{ name = "Wooden Spellbook", chance = 450 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -4050 },  -- Damage tripled
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -5100, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },  -- Damage tripled
	{ name = "noxious ripptor wave", interval = 4500, chance = 30, minDamage = -1350, maxDamage = -2250 },  -- Damage tripled
}

monster.defenses = {
	defense = 330,  -- Defense tripled
	armor = 246,  -- Armor tripled
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 30 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
