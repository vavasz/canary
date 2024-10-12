local mType = Game.createMonsterType("Vip Gore Horn")
local monster = {}

monster.description = "a vip gore horn"
monster.experience = 200000
monster.outfit = {
	lookType = 1548,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2266
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
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
monster.corpse = 39283
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
	{ text = "Rraaaaa!", yell = false },
}

monster.loot = {
	{ name = "Gore Horn", chance = 100000 },
	{ name = "Crystal Coin", chance = 100000 },
	{ name = "Big Bone", chance = 100000 },
	{ id = 3097, chance = 100000 }, -- Dwarven Ring
	{ name = "Metal Spats", chance = 100000 },
	{ name = "Knight Legs", chance = 100000 },
	{ name = "Diamond Sceptre", chance = 100000 },
	{ name = "Doublet", chance = 100000 },
	{ name = "Hammer of Wrath", chance = 100000 },
	{ id = 39546, chance = 40 }, -- primal bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 3500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -900, maxDamage = -1550, length = 7, spread = 0, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 4100, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -1000, maxDamage = -1800, radius = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -1000, maxDamage = -1650, range = 1, shootEffect = CONST_ANI_ENERGY, target = true },
	{ name = "root", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 78,
	armor = 78,
	mitigation = 2.28,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 30 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
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
