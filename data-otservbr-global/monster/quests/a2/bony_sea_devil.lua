local mType = Game.createMonsterType("Immortal Bony Sea Devil")
local monster = {}

monster.description = "an immortal bony sea devil"
monster.experience = 194700  -- 10x experience
monster.outfit = {
	lookType = 1294,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2642
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Ebb and Flow.",
}

monster.health = 72000  -- 3x harder
monster.maxHealth = 72000  -- 3x harder
monster.race = "undead"
monster.corpse = 33797
monster.speed = 220
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 4,
	color = 143,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Bling.", yell = false },
	{ text = "Clank.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 59290 },
	{ name = "ultimate health potion", chance = 19470, maxCount = 6 },
	{ name = "gold ingot", chance = 15040 },
	{ id = 282, chance = 9730 }, -- giant shimmering pearl
	{ name = "hailstorm rod", chance = 7960 },
	{ name = "onyx chip", chance = 6190 },
	{ name = "green crystal fragment", chance = 5310 },
	{ name = "wand of voodoo", chance = 4420 },
	{ name = "violet gem", chance = 4420 },
	{ name = "jaws", chance = 3540 },
	{ name = "rainbow quartz", chance = 2650, maxCount = 3 },
	{ name = "northwind rod", chance = 1770 },
	{ name = "underworld rod", chance = 1770 },
	{ name = "skullcracker armor", chance = 1770 },
	{ id = 33929, chance = 880 }, -- rod
	{ name = "goblet of gloom", chance = 880 },
	{ name = "glacier kilt", chance = 880 },
	{ name = "glacial rod", chance = 1210 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -2700, maxDamage = -4050, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -2100, maxDamage = -3000, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -2850, maxDamage = -3780, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -2850, maxDamage = -3300, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },  -- Increased max damage
	{ name = "ice chain", interval = 2000, chance = 15, minDamage = -3300, maxDamage = -3900, range = 7 },  -- Increased max damage
	{ name = "soulwars fear", interval = 2000, chance = 1, target = true },
	{ name = "destroy magic walls", interval = 1000, chance = 30 },
}

monster.defenses = {
	defense = 300,  -- Adjusted for increased difficulty
	armor = 300,  -- Adjusted for increased difficulty
	mitigation = 3.34,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 40 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 60 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
