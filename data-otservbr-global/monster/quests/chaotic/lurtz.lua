local mType = Game.createMonsterType("lurtz")
local monster = {}

monster.description = "lurtz"
monster.experience = 3500000
monster.outfit = {
	lookType = 1716,
	lookHead = 1,
	lookBody = 1,
	lookLegs = 1,
	lookFeet = 1,
	lookAddons = 3,
	lookMount = 0,
}

monster.events = {
	"torrebossdeath",
	"lurtzdead",
}

monster.bosstiary = {
	bossRaceId = 2680,
	bossRace = RARITY_NEMESIS,
}

monster.health = 3500000
monster.maxHealth = 3500000
monster.race = "undead"
monster.corpse = 111
monster.speed = 3500
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 20,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
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

monster.summon = {
	maxSummons = 14,
	summons = {
		{ name = "Todagog", chance = 20, interval = 2000, count = 2 },
		{ name = "Soughat", chance = 20, interval = 2000, count = 2 },
		{ name = "Vidarok", chance = 20, interval = 2000, count = 2 },
	},
}


monster.loot = {
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2500 },
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4280, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4380, range = 7, shootEffect = CONST_ANI_FIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -2175, maxDamage = -4200, length = 5, spread = 0, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4475, radius = 3, effect = CONST_ME_HITBYFIRE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -4475, radius = 2, effect = CONST_ME_FIREAREA, target = false },
	{ name = "root", interval = 2000, chance = 10, target = true },
	{ name = "soulwars fear", interval = 2000, chance = 10, target = true },
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2450, condition = { type = CONDITION_POISON, totalDamage = 11840, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -2221, maxDamage = -4350, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_CARNIPHILA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -2250, maxDamage = -4500, length = 8, spread = 0, effect = CONST_ME_CARNIPHILA, target = false },
	{ name = "speed", interval = 2000, chance = 25, radius = 7, effect = CONST_ME_POFF, target = true },
	{ name = "outfit", interval = 2000, chance = 1, range = 7, target = true, duration = 3000, outfitMonster = "parrot" },
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2400 },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_ENERGYDAMAGE, minDamage = -2300, maxDamage = -4400, length = 4, spread = 0, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -2400, maxDamage = -4500, range = 3, radius = 3, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -2400, maxDamage = -4500, range = 7, shootEffect = CONST_ANI_EARTHARROW, target = true },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 25000, maxDamage = 35000, effect = 236, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
