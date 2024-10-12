local mType = Game.createMonsterType("trapfearfloor")
local monster = {}

monster.description = "a trapfearfloor"
monster.experience = 18
monster.outfit = {
	lookTypeEx = 410,
}

monster.health = 250
monster.maxHealth = 250
monster.race = "undead"
monster.corpse = 0
monster.speed = 0
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
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 100,
	healthHidden = true,
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
	interval = 12000,
	chance = 100,
	{ text = "Tu ta sambando, sem nem IMAGINAR o que deve ser feito. Tu é fraco demais.", yell = false },
	{ text = "Usa metade do seu meio neuronio, e pensa. O que pode bloquear as coisas?", yell = false },
	{ text = "Na moral. Isso aqui e o INICIO das coisas. Vai farmar bagzinha", yell = false },
	{ text = "Ain eu sou o TOP 1 e nao consigo fazer uma quest. Pro inferno", yell = false },
	{ text = "Se me mandar 300tao no pix eu ajudo. To avisando.", yell = false },
}

monster.loot = {}


monster.attacks = {
	{ name = "fearmellee", interval = 2000, chance = 20, minDamage = 0, maxDamage = 0 },
}

monster.defenses = {
	defense = 5,
	armor = 1,
	mitigation = 0.41,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 100 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = true },
}

mType:register(monster)
