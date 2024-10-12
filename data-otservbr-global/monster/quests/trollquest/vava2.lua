local mType = Game.createMonsterType("vava abstinente")
local monster = {}

monster.description = "vava abstinente"
monster.experience = 0
monster.outfit = {
	lookType = 1268,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
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
	"vavafunctions",
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
	interval = 2000,
	chance = 10,
	{ text = "CARA CADE O TABACO", yell = true },
	{ text = "PELO AMOR DE DEUS MANDA O PIX PRA EU IR ALI NO POSTO", yell = true },
	{ text = "ME DA O BOOOONG", yell = true },
	{ text = "PELO AMOR DE DEUS, ME DA O BONG", yell = false },
	{ text = "O BOOOOOOOOOOOOOOOONG CADEEEE", yell = true },
}

monster.loot = {
}

monster.defenses = {
	defense = 5,
	armor = 1,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 99 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 99 },
	{ type = COMBAT_EARTHDAMAGE, percent = 99 },
	{ type = COMBAT_FIREDAMAGE, percent = 99 },
	{ type = COMBAT_LIFEDRAIN, percent = 99 },
	{ type = COMBAT_MANADRAIN, percent = 99 },
	{ type = COMBAT_DROWNDAMAGE, percent = 99 },
	{ type = COMBAT_ICEDAMAGE, percent = 99 },
	{ type = COMBAT_HOLYDAMAGE, percent = 99 },
	{ type = COMBAT_DEATHDAMAGE, percent = 99 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
