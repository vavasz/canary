local mType = Game.createMonsterType("Enhanced Undertaker")
local monster = {}

monster.description = "an enhanced undertaker"
monster.experience = 135430  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1551,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2612
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

monster.health = 60300  -- Health tripled
monster.maxHealth = 60300  -- Max health tripled
monster.race = "venom"
monster.corpse = 39295
monster.speed = 205  -- Speed remains the same
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
	{ text = "Hizzzzz!", yell = false },
}

monster.loot = {
	{ name = "Great Spirit Potion", chance = 30660, minCount = 1, maxCount = 3 },
	{ name = "Undertaker Fangs", chance = 25740 },
	{ name = "Crystal Coin", chance = 15100, minCount = 1, maxCount = 3 },
	{ name = "Spider Silk", chance = 3520 },
	{ name = "Terra Boots", chance = 3390 },
	{ name = "Blue Crystal Shard", chance = 1840 },
	{ name = "Relic Sword", chance = 1650 },
	{ name = "Terra Legs", chance = 1640 },
	{ name = "Necrotic Rod", chance = 1400 },
	{ name = "Butterfly Ring", chance = 1240 },
	{ name = "Wand of Voodoo", chance = 960 },
	{ name = "Violet Gem", chance = 850 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3600 },  -- Damage tripled
	{ name = "combat", interval = 4500, chance = 47, type = COMBAT_DEATHDAMAGE, minDamage = -2400, maxDamage = -3450, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },  -- Damage tripled
	{ name = "combat", interval = 3650, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -1800, maxDamage = -2850, radius = 2, effect = CONST_ME_HITBYPOISON, target = true },  -- Damage tripled
	{ name = "undertaker square explosion", interval = 3000, chance = 25, minDamage = -2325, maxDamage = -2700, range = 4, target = true },  -- Damage tripled
	{ name = "combat", interval = 5000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -4500, maxDamage = -6000, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },  -- Damage tripled
	{ name = "root wave", interval = 2000, chance = 5, target = true },
}

monster.defenses = {
	defense = 110 * 3,  -- Defense tripled
	armor = 77 * 3,  -- Armor tripled
	mitigation = 2.22 * 3,  -- Increased mitigation
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 40 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
