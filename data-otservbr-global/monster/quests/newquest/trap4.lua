local mType = Game.createMonsterType("trappillar")
local monster = {}

monster.description = "a trapfearpillar"
monster.experience = 0
monster.outfit = {
	lookTypeEx = 2190,
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "undead"
monster.corpse = 0
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.events = {
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

monster.voices = {
	interval = 12000,
	chance = 100,
	{ text = "O que voce tem de idade, eu tenho de rpg de mesa. Voce nao merece esses lugares.", yell = false },
	{ text = "Isso nao e um simples server de faz donate ganha item top e rusha level. Eu DUVIDO voce conseguir passar das coisas que estao por vir.", yell = false },
	{ text = "O dia que tu fizer um barbaro carismatico, e se casar com um dragao, a gente conversa.", yell = false },
	{ text = "Tu nunca ficou 60 horas no mesmo lugar, por perder um pixel de mapa, e nao progredir em um rpg. Voce nao merece chegar aqui.", yell = false },
	{ text = "Tu acha mesmo, que esse server realmente vai ser so mata bixinho pega bag e acabou?", yell = false },
}

monster.loot = {}


monster.attacks = {
	{ name = "fear", interval = 2000, chance = 20, minDamage = 0, maxDamage = 0 },
	{ name = "root", interval = 2000, chance = 20, minDamage = 0, maxDamage = 0 },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 2000, chance = 30, minDamage = -6000, maxDamage = -14000, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = 3000, maxDamage = -7000, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -3000, maxDamage = -9000, radius = 4, effect = CONST_ME_MAGIC_RED, target = false },
}


monster.defenses = {
	defense = 5,
	armor = 1,
	mitigation = 0.41,
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
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = true },
}

mType:register(monster)
