local mType = Game.createMonsterType("Enhanced Gore Horn")
local monster = {}

monster.description = "an enhanced gore horn"
monster.experience = 125950  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1548,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2625
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

monster.health = 61860  -- Health tripled
monster.maxHealth = 61860  -- Max health tripled
monster.race = "blood"
monster.corpse = 39283
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
	{ text = "Rraaaaa!", yell = false },
}

monster.loot = {
	{ name = "Gore Horn", chance = 36040 },
	{ name = "Crystal Coin", chance = 30050 },
	{ name = "Big Bone", chance = 5270 },
	{ id = 3097, chance = 3590 }, -- Dwarven Ring
	{ name = "Metal Spats", chance = 3100 },
	{ name = "Knight Legs", chance = 2330 },
	{ name = "Diamond Sceptre", chance = 2060 },
	{ name = "Doublet", chance = 1390 },
	{ name = "Hammer of Wrath", chance = 1070 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
	}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3000 },  -- Damage tripled
	{ name = "combat", interval = 3500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1350, maxDamage = -2250, length = 7, spread = 0, effect = CONST_ME_ENERGYAREA, target = false },  -- Damage tripled
	{ name = "combat", interval = 4100, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -1500, maxDamage = -2700, radius = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },  -- Damage tripled
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -1500, maxDamage = -2550, range = 1, shootEffect = CONST_ANI_ENERGY, target = true },  -- Damage tripled
	{ name = "root", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 234,  -- Defense tripled
	armor = 234,  -- Armor tripled
	mitigation = 6.84,  -- Mitigation tripled
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 90 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = -30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
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
