local mType = Game.createMonsterType("Enhanced Sulphider")
local monster = {}

monster.description = "an enhanced sulphider"
monster.experience = 133280  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1546,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2614
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Monster Graveyard",
}

monster.health = 63000  -- Health tripled
monster.maxHealth = 63000  -- Max health tripled
monster.race = "blood"
monster.corpse = 39275
monster.speed = 215  -- Speed remains the same
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
	{ text = "Tikkee...Takka...", yell = false },
}

monster.loot = {
	{ name = "Sulphur Powder", chance = 29600 },
	{ name = "Sulphider Shell", chance = 24660 },
	{ name = "Ultimate Mana Potion", chance = 14620 },
	{ name = "Crystal Coin", chance = 14430, minCount = 1, maxCount = 3 },
	{ name = "White Pearl", chance = 5010 },
	{ name = "Fire Axe", chance = 2450 },
	{ name = "Magma Boots", chance = 1600 },
	{ name = "Crown Shield", chance = 1230 },
	{ name = "Amber Staff", chance = 1150 },
	{ name = "Amulet of Loss", chance = 850 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3000 },  -- Damage tripled
	{ name = "combat", interval = 3500, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -1950, maxDamage = -3180, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },  -- Damage tripled
	{ name = "blast ring", interval = 4000, chance = 35, minDamage = -1800, maxDamage = -3300 },  -- Damage tripled
}

monster.defenses = {
	defense = 110 * 3,  -- Defense tripled
	armor = 83 * 3,  -- Armor tripled
	mitigation = 2.11 * 3,  -- Increased mitigation
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -60 },  -- Adjusted for higher resistance
	{ type = COMBAT_HOLYDAMAGE, percent = -30 },  -- Adjusted for higher resistance
	{ type = COMBAT_DEATHDAMAGE, percent = 60 },  -- Adjusted for higher resistance
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
