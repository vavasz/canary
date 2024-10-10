local mType = Game.createMonsterType("ablazing vava")
local monster = {}

monster.description = "ablazing vava"
monster.experience = 0
monster.outfit = {
	lookType = 1413,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 6042
monster.speed = 64
monster.manaCost = 220

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.events = {
	"exfunctions",
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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 1000,
	chance = 10,
	{ text = "COOOORRE QUE O CORNO TA BRABO", yell = true },
	{ text = "Pelo amor de deus USA ESSA AGUA EM MIM", yell = true },
	{ text = "CARA O BONG TA ME QUEIMANDO", yell = true },
	{ text = "AGUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", yell = false },
	{ text = "PELO AMOR DE DEUS A AGUA", yell = true },
}

monster.loot = {
}

monster.attacks = {
	{ name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -8880 }, -- Reduced from -11100
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -9400, maxDamage = -11920, length = 7, spread = 0, effect = 37, target = false }, -- Reduced from -11750, -14900
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -10152, maxDamage = -12240, radius = 4, effect = 49, target = true }, -- Reduced from -12690, -15300
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -9680, maxDamage = -13360, range = 7 }, -- Reduced from -12100, -16700
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -8960, maxDamage = -11600, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 167, target = true }, -- Reduced from -11200, -14500
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -11336, maxDamage = -14288, length = 8, spread = 0, effect = 177, target = false }, -- Reduced from -14170, -17860
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -10544, maxDamage = -13984, length = 8, spread = 0, effect = 176, target = false }, -- Reduced from -13180, -17480
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -10960, maxDamage = -13920, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 178, target = true }, -- Reduced from -13700, -17400
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -10312, maxDamage = -13760, length = 8, spread = 0, effect = 184, target = false }, -- Reduced from -12890, -17200
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -10312, maxDamage = -13760, length = 8, spread = 0, effect = 185, target = false }, -- Reduced from -12890, -17200
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 12900, maxDamage = -13440, range = 7, target = false }, -- Reduced from -16800	
}

monster.defenses = {
	defense = 5,
	armor = 1,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
