local mType = Game.createMonsterType("Vip Nighthunter")
local monster = {}

monster.description = "a vip nighthunter"
monster.experience = 72200
monster.outfit = {
	lookType = 1552,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2270
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Monster Graveyard",
}

monster.health = 40000
monster.maxHealth = 40000
monster.race = "blood"
monster.corpse = 39299
monster.speed = 205
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
	{ name = "Crystal Coin", chance = 100000 },
	{ name = "Nighthunter Wing", chance = 100000, minCount = 1, maxCount = 2 },
	{ name = "Ultimate Health Potion", chance = 100000, minCount = 1, maxCount = 3 },
	{ name = "Red Crystal Fragment", chance = 100000 },
	{ name = "Green Crystal Shard", chance = 100000 },
	{ name = "Cyan Crystal Fragment", chance = 100000 },
	{ name = "Yellow Gem", chance = 100000 },
	{ name = "Crystal Sword", chance = 100000 },
	{ name = "Warrior's Axe", chance = 100000 },
	{ name = "Spellbook of Mind Control", chance = 100000 },
	{ name = "Stone Skin Amulet", chance = 100000 },
	{ id = 39546, chance = 40 }, -- primal bag
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700 },
	{ name = "combat", interval = 3500, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -1400, maxDamage = -1800, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },
	{ name = "nighthunter wave", interval = 5000, chance = 25, minDamage = -1200, maxDamage = -1475 },
}

monster.defenses = {
	defense = 85,
	armor = 81,
	mitigation = 2.28,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)

RegisterPrimalPackBeast(monster)
