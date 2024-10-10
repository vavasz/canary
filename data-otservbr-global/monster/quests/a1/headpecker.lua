local mType = Game.createMonsterType("Enhanced Headpecker")
local monster = {}

monster.description = "an enhanced headpecker"
monster.experience = 120260  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1557,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2623
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Crystal Enigma",
}

monster.health = 48900  -- Health tripled
monster.maxHealth = 48900  -- Max health tripled
monster.race = "blood"
monster.corpse = 39319
monster.speed = 217  -- Speed remains the same
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 70,
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
	{ name = "Crystal Coin", chance = 35160 },
	{ name = "Headpecker Beak", chance = 11360 },
	{ name = "Headpecker Feather", chance = 7620, minCount = 1, maxCount = 5 },
	{ name = "Furry Club", chance = 5560 },
	{ id = 3595, chance = 4950, minCount = 1, maxCount = 3 }, -- Carrot
	{ name = "Knife", chance = 4260 },
	{ name = "Spike Sword", chance = 4040 },
	{ name = "War Hammer", chance = 2290 },
	{ name = "Titan Axe", chance = 1720 },
	{ name = "Blue Gem", chance = 1560 },
	{ name = "Wand of Starstorm", chance = 980 },
	{ name = "Gold Ingot", chance = 910 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3000 },  -- Damage tripled
	{ name = "combat", interval = 2500, chance = 37, type = COMBAT_EARTHDAMAGE, minDamage = -2100, maxDamage = -3300, range = 1, effect = CONST_ME_BLACKSMOKE, target = true },  -- Damage tripled
	{ name = "combat", interval = 4200, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -2100, maxDamage = -3150, length = 4, spread = 3, effect = CONST_ME_SLASH, target = false },  -- Damage tripled
	{ name = "headpecker explosion", interval = 3500, chance = 35, minDamage = -2100, maxDamage = -2550 },  -- Damage tripled
}

monster.defenses = {
	defense = 300,  -- Defense tripled
	armor = 204,  -- Armor tripled
	mitigation = 6.15,  -- Mitigation tripled
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 30 },
	{ type = COMBAT_FIREDAMAGE, percent = -30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 30 },  -- Increased holy damage resistance
	{ type = COMBAT_DEATHDAMAGE, percent = -30 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
