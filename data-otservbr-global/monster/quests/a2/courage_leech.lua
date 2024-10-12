local mType = Game.createMonsterType("Immortal Courage Leech")
local monster = {}

monster.description = "an immortal courage leech"
monster.experience = 189000 -- 10x experience
monster.outfit = {
	lookType = 1315,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2655
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Furious Crater",
}

monster.health = 81000 -- 3x health
monster.maxHealth = 81000
monster.race = "undead"
monster.corpse = 33909
monster.speed = 226
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	{ text = "Hiss.", yell = false },
	{ text = "Zap! Zap!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 70910 },
	{ name = "ultimate health potion", chance = 11820, maxCount = 7 },
	{ name = "lightning pendant", chance = 3640 },
	{ name = "lightning legs", chance = 3640 },
	{ name = "lightning headband", chance = 2730 },
	{ name = "hammer of wrath", chance = 1820 },
	{ name = "jade hammer", chance = 910 },
	{ name = "dreaded cleaver", chance = 910 },
	{ name = "onyx flail", chance = 910 },
	{ name = "gold ring", chance = 910 },
	{ name = "butcher's axe", chance = 910 },
	{ name = "stone skin amulet", chance = 910 },
	{ name = "nightmare blade", chance = 1190 },
	{ name = "demonrage sword", chance = 600 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2100 }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -3300, maxDamage = -4200, radius = 4, shootEffect = CONST_ANI_ETHEREALSPEAR, effect = CONST_ME_ENERGYAREA, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -3300, maxDamage = -4200, radius = 4, effect = CONST_ME_ENERGYHIT, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -2700, maxDamage = -3300, length = 7, spread = 0, effect = CONST_ME_ENERGYHIT, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -3900, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true }, -- 3x maxDamage
	{ name = "energy chain", interval = 2000, chance = 20, minDamage = -2700, maxDamage = -3000, range = 3, target = true }, -- 3x maxDamage
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 3.04,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 50 },
	{ type = COMBAT_EARTHDAMAGE, percent = -20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 30 },
	{ type = COMBAT_DEATHDAMAGE, percent = -25 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
