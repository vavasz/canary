local mType = Game.createMonsterType("Immortal Cloak of Terror")
local monster = {}

monster.description = "an immortal cloak of terror"
monster.experience = 197000 -- 10x experience
monster.outfit = {
	lookType = 1295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2656
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Furious Crater.",
}

monster.health = 84000 -- 3x health
monster.maxHealth = 84000
monster.race = "undead"
monster.corpse = 33801
monster.speed = 250
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
	{ text = "Power up!", yell = false },
	{ text = "Shocked to meet you.", yell = false },
	{ text = "You should be more positive!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 54460 },
	{ name = "ultimate health potion", chance = 12380, maxCount = 6 },
	{ name = "gold ingot", chance = 12380 },
	{ name = "wand of starstorm", chance = 5450 },
	{ name = "telescope eye", chance = 5450 },
	{ id = 33935, chance = 4460 }, -- crown (terror)
	{ name = "violet gem", chance = 3960 },
	{ name = "wand of inferno", chance = 3960 },
	{ name = "lightning headband", chance = 3960 },
	{ name = "green gem", chance = 3960 },
	{ name = "wand of voodoo", chance = 3960 },
	{ name = "blue gem", chance = 1490 },
	{ name = "brooch of embracement", chance = 1490 },
	{ name = "wand of defiance", chance = 990 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3000 }, -- 3x maxDamage
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -3300, maxDamage = -4050, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -3450, maxDamage = -3900, range = 7, radius = 4, effect = CONST_ME_ENERGYHIT, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -3000, maxDamage = -3900, range = 7, shootEffect = CONST_ANI_SPECTRALBOLT, effect = CONST_ME_HOLYDAMAGE, target = true }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -2400, maxDamage = -3600, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = true }, -- 3x maxDamage
	{ name = "destroy magic walls", interval = 1000, chance = 30 },
}

monster.defenses = {
	defense = 107,
	armor = 107,
	mitigation = 3.19,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 60 },
	{ type = COMBAT_EARTHDAMAGE, percent = -5 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 40 },
	{ type = COMBAT_DEATHDAMAGE, percent = -20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
