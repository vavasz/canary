local mType = Game.createMonsterType("Enhanced Nighthunter")
local monster = {}

monster.description = "an enhanced nighthunter"
monster.experience = 126470  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1552,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2619
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

monster.health = 57600  -- Health tripled
monster.maxHealth = 57600  -- Max health tripled
monster.race = "blood"
monster.corpse = 39299
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
	{ text = "Shriiiiek! Shriiiiek!", yell = false },
}

monster.loot = {
	{ name = "Crystal Coin", chance = 34190 },
	{ name = "Nighthunter Wing", chance = 24370, minCount = 1, maxCount = 2 },
	{ name = "Ultimate Health Potion", chance = 12640, minCount = 1, maxCount = 3 },
	{ name = "Red Crystal Fragment", chance = 3980 },
	{ name = "Green Crystal Shard", chance = 3670 },
	{ name = "Cyan Crystal Fragment", chance = 3080 },
	{ name = "Yellow Gem", chance = 2940 },
	{ name = "Crystal Sword", chance = 1590 },
	{ name = "Warrior's Axe", chance = 1400 },
	{ name = "Spellbook of Mind Control", chance = 960 },
	{ name = "Stone Skin Amulet", chance = 850 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2100 },  -- Damage tripled
	{ name = "combat", interval = 3500, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -2850, maxDamage = -3900, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },  -- Damage tripled
	{ name = "nighthunter wave", interval = 5000, chance = 25, minDamage = -1800, maxDamage = -2325 },  -- Damage tripled
}

monster.defenses = {
	defense = 255,  -- Defense tripled
	armor = 243,  -- Armor tripled
	mitigation = 6.84,  -- Increased mitigation
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 45 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -75 },
	{ type = COMBAT_DEATHDAMAGE, percent = 60 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
