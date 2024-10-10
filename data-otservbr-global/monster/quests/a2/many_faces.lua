local mType = Game.createMonsterType("Immortal Many Faces")
local monster = {}

monster.description = "an immortal many faces"
monster.experience = 188700  -- 10x experience
monster.outfit = {
	lookType = 1296,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2648
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Mirrored Nightmare.",
}

monster.health = 90000  -- 3x health
monster.maxHealth = 90000  -- 3x max health
monster.race = "undead"
monster.corpse = 33805
monster.speed = 215
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I have a head start.", yell = false },
	{ text = "Look into my eyes! No, the other ones!", yell = false },
	{ text = "The mirrors can't contain the night!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 76710 },
	{ name = "ultimate health potion", chance = 14920, maxCount = 7 },
	{ name = "apron", chance = 7990 },
	{ name = "hailstorm rod", chance = 7610 },
	{ name = "stone skin amulet", chance = 5780 },
	{ name = "green gem", chance = 5710 },
	{ name = "northwind rod", chance = 5630 },
	{ name = "sacred tree amulet", chance = 5560 },
	{ name = "violet gem", chance = 5100 },
	{ name = "blue gem", chance = 5020 },
	{ id = 23533, chance = 4870 }, -- ring of red plasma
	{ id = 33932, chance = 3500 }, -- head many faces
	{ name = "glacier shoes", chance = 2510 },
	{ name = "glacier robe", chance = 2130 },
	{ name = "gruesome fan", chance = 610 },
	{ name = "glacial rod", chance = 610 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3900 },  -- Increased max damage
	{ name = "combat", interval = 4000, chance = 33, type = COMBAT_ICEDAMAGE, minDamage = -3660, maxDamage = -4200, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },  -- Increased max damage
	{ name = "combat", interval = 5000, chance = 44, type = COMBAT_ICEDAMAGE, minDamage = -3000, maxDamage = -4350, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },  -- Increased max damage
	{ name = "combat", interval = 9500, chance = 59, type = COMBAT_HOLYDAMAGE, minDamage = -3150, maxDamage = -3900, radius = 4, effect = CONST_ME_HOLYAREA, target = false },  -- Increased max damage
	{ name = "extended holy chain", interval = 10000, chance = 59, minDamage = -3450, maxDamage = -3900, range = 7 },  -- Increased max damage
	{ name = "destroy magic walls", interval = 1000, chance = 30 },
}

monster.defenses = {
	defense = 315,  -- Adjusted for increased difficulty
	armor = 315,  -- Adjusted for increased difficulty
	mitigation = 3.34,  -- Kept the same
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -15 },  -- Adjusted for difficulty
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 60 },  -- Adjusted for difficulty
	{ type = COMBAT_HOLYDAMAGE, percent = 60 },  -- Adjusted for difficulty
	{ type = COMBAT_DEATHDAMAGE, percent = -40 },  -- Adjusted for difficulty
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
