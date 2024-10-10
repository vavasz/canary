local mType = Game.createMonsterType("ademiro")
local monster = {}

monster.description = "ademiro"
monster.experience = 1500000
monster.outfit = {
	lookType = 130,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 1431,
}


monster.bosstiary = {
	bossRaceId = 2691,
	bossRace = RARITY_NEMESIS,
}

monster.health = 14000000
monster.maxHealth = 14000000
monster.race = "undead"
monster.corpse = 23561
monster.speed = 3500
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 40,
}

monster.events = {
    "bossDeath",
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
	maxSummons = 12,
	summons = {
		{ name = "Rhatmhuun", chance = 20, interval = 2000, count = 1 },
		{ name = "Rheys", chance = 20, interval = 2000, count = 1 },
		{ name = "Rhastophur", chance = 20, interval = 2000, count = 1 },
		{ name = "Rhamseia", chance = 20, interval = 2000, count = 1 },
		{ name = "daigoro", chance = 20, interval = 2000, count = 1 },
		{ name = "dark elemental", chance = 20, interval = 2000, count = 1 },
		{ name = "chaotic legolas", chance = 20, interval = 2000, count = 1 },
		{ name = "vidarok", chance = 20, interval = 2000, count = 1 },
		{ name = "alamantur", chance = 20, interval = 2000, count = 1 },
		{ name = "undead dragon", chance = 20, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Ces tao achando bug e nao estao me reportando.", yell = false },
}

monster.loot = {
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -8000 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -8000, maxDamage = -10000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 252, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -8000, maxDamage = -10000, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -8000, maxDamage = -10000, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -8000, maxDamage = -10000, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -8000, maxDamage = -10000, range = 7 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -8000, maxDamage = -10000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 241, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 243, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -8000, maxDamage = -10000, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 264, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -8000, maxDamage = -10000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 8000, maxDamage = -10000, range = 7, target = false },
	{ name = "alienator destroy", interval = 15000, chance = 50, target = false },
}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 25000, maxDamage = 65000, effect = 236, target = false },
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

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

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

