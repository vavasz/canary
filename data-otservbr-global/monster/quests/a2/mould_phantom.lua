local mType = Game.createMonsterType("Immortal Mould Phantom")
local monster = {}

monster.description = "an immortal mould phantom"
monster.experience = 183300  -- 10x experience
monster.outfit = {
	lookType = 1298,
	lookHead = 106,
	lookBody = 60,
	lookLegs = 131,
	lookFeet = 116,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2646
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland.",
}

monster.health = 84000  -- 3x health
monster.maxHealth = 84000  -- 3x max health
monster.race = "undead"
monster.corpse = 34133
monster.speed = 240
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
	targetDistance = 4,
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
	{ text = "Everything decomposes.", yell = false },
	{ text = "I love the smell of rotten flesh.", yell = false },
	{ text = "The earth will take you back.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 57370 },
	{ name = "gold ingot", chance = 11840 },
	{ name = "wand of starstorm", chance = 4440 },
	{ name = "green gem", chance = 3800 },
	{ name = "violet gem", chance = 3550 },
	{ name = "mould heart", chance = 3490 },
	{ name = "wand of defiance", chance = 2930 },
	{ name = "blue gem", chance = 2440 },
	{ name = "wand of voodoo", chance = 2360 },
	{ name = "mould robe", chance = 2200 },
	{ id = 23542, chance = 1070 }, -- collar of blue plasma
	{ id = 23529, chance = 1040 }, -- ring of blue plasma
	{ name = "ornate crossbow", chance = 840 },
	{ name = "crystal crossbow", chance = 620 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2700 },  -- Increased max damage
	{ name = "poison chain", interval = 2000, chance = 15, minDamage = -3000, maxDamage = -3750, range = 7 },  -- Increased max damage
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -4050, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -3100, maxDamage = -4050, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -3900, radius = 4, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },  -- Increased max damage
	{ name = "extended holy chain", interval = 2000, chance = 15, minDamage = -1200, maxDamage = -2100, range = 7 },  -- Increased max damage
}

monster.defenses = {
	defense = 300,  -- Adjusted for increased difficulty
	armor = 300,  -- Adjusted for increased difficulty
	mitigation = 2.45,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
