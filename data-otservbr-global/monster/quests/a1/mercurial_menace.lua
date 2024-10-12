local mType = Game.createMonsterType("Enhanced Mercurial Menace")
local monster = {}

monster.description = "an enhanced mercurial menace"
monster.experience = 120950  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1561,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2620
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

monster.health = 55500  -- Health tripled
monster.maxHealth = 55500  -- Max health tripled
monster.race = "blood"
monster.corpse = 39335
monster.speed = 190  -- Speed remains the same
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
	targetDistance = 3,
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
	{ text = "Shwooo...", yell = false },
}

monster.loot = {
	{ name = "Crystal Coin", chance = 24890, minCount = 1, maxCount = 2 },
	{ name = "Mercurial Wing", chance = 21500 },
	{ name = "Terra Boots", chance = 4250 },
	{ name = "Silver Brooch", chance = 2700 },
	{ name = "Terra Rod", chance = 1660 },
	{ name = "Wand of Defiance", chance = 1230 },
	{ name = "Dream Blossom Staff", chance = 1090 },
	{ name = "Coral Brooch", chance = 1030 },
	{ name = "Lightning Boots", chance = 1000 },
	{ name = "Wand of Cosmic Energy", chance = 860 },
	{ name = "Gemmed Figurine", chance = 830 },
	{ name = "Butterfly Ring", chance = 800 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 },  -- Damage tripled
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -2250, range = 4, shootEffect = CONST_ANI_SMALLSTONE, target = true },  -- Damage tripled
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -2400, maxDamage = -4500, range = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = true },  -- Damage tripled
	{ name = "mercurial menace ring", interval = 4500, chance = 37, minDamage = -1500, maxDamage = -2100 },  -- Damage tripled
}

monster.defenses = {
	defense = 330,  -- Defense tripled
	armor = 273,  -- Armor tripled
	mitigation = 7.62,  -- Mitigation increased
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -60 },
	{ type = COMBAT_EARTHDAMAGE, percent = -30 },
	{ type = COMBAT_FIREDAMAGE, percent = 60 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
