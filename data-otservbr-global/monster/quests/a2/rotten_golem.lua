local mType = Game.createMonsterType("Immortal Rotten Golem")
local monster = {}

monster.description = "an immortal rotten golem"
monster.experience = 178600  -- Increased experience by 10x
monster.outfit = {
	lookType = 1312,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2661
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

monster.health = 84000  -- Increased health by 3x
monster.maxHealth = 84000
monster.race = "venom"
monster.corpse = 33897
monster.speed = 200
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
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "crystal coin", chance = 60590 },
	{ name = "great spirit potion", chance = 31180, maxCount = 5 },
	{ name = "sacred tree amulet", chance = 3590 },
	{ name = "underworld rod", chance = 3030 },
	{ id = 281, chance = 2690 }, -- giant shimmering pearl
	{ name = "titan axe", chance = 2500 },
	{ name = "terra amulet", chance = 1900 },
	{ name = "mercenary sword", chance = 1900 },
	{ name = "war axe", chance = 1560 },
	{ name = "giant sword", chance = 1540 },
	{ name = "fur armor", chance = 990 },
	{ name = "wood cape", chance = 920 },
	{ name = "stone skin amulet", chance = 740 },
	{ name = "terra mantle", chance = 510 },
	{ name = "rubber cap", chance = 430 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2850 },  -- Increased damage by 3x
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -3600, maxDamage = -4350, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -2700, maxDamage = -4200, radius = 5, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -3900, radius = 7, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "poison chain", interval = 2000, chance = 20, minDamage = -3150, maxDamage = -3600, radius = 7, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "root", interval = 2000, chance = 1, target = true },
}

monster.defenses = {
	defense = 108,
	armor = 108,
	mitigation = 3.04,
	-- Healing can be added as part of the monster's behavior
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 40 },
	{ type = COMBAT_FIREDAMAGE, percent = -25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 50 },
	{ type = COMBAT_DEATHDAMAGE, percent = -20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
