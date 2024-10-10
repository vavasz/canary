local mType = Game.createMonsterType("Immortal Infernal Demon")
local monster = {}

monster.description = "an immortal infernal demon"
monster.experience = 174300 -- 10x experience
monster.outfit = {
	lookType = 1313,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2651
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno.",
}

monster.health = 96000 -- 3x health
monster.maxHealth = 96000
monster.race = "blood"
monster.corpse = 33901
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
	canWalkOnEnergy = false,
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
	{ text = "The smell of fear follows you.", yell = false },
	{ text = "Your soul will burn.", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 64000 },
	{ name = "ultimate health potion", chance = 22860, maxCount = 5 },
	{ name = "gold ingot", chance = 18860 },
	{ name = "cyan crystal fragment", chance = 7430 },
	{ name = "red crystal fragment", chance = 7430 },
	{ name = "blue crystal shard", chance = 5710 },
	{ name = "small diamond", chance = 4570 },
	{ name = "blue gem", chance = 4570 },
	{ name = "green crystal fragment", chance = 3430 },
	{ name = "magma amulet", chance = 3430 },
	{ name = "mercenary sword", chance = 2860 },
	{ name = "onyx chip", chance = 2860 },
	{ name = "war axe", chance = 2860 },
	{ name = "giant sword", chance = 2860 },
	{ name = "magma boots", chance = 2290 },
	{ name = "stone skin amulet", chance = 570 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -4350 }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -3450, maxDamage = -4200, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -2400, maxDamage = -3750, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -3000, maxDamage = -4050, radius = 4, effect = CONST_ME_MORTAREA, target = false }, -- 3x maxDamage
	{ name = "death chain", interval = 2000, chance = 20, minDamage = -3300, maxDamage = -4140, target = true }, -- 3x maxDamage
}

monster.defenses = {
	defense = 120,
	armor = 120,
	mitigation = 3.33,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 40 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
