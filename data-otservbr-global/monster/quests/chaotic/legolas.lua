local mType = Game.createMonsterType("legolas")
local monster = {}

monster.description = "legolas"
monster.experience = 3000000
monster.outfit = {
	lookType = 1449,
	lookHead = 1,
	lookBody = 1,
	lookLegs = 1,
	lookFeet = 1,
	lookAddons = 3,
	lookMount = 629,
}

monster.events = {
	"chaoticbossdead",
	"legolasdead",
}

monster.bosstiary = {
	bossRaceId = 2681,
	bossRace = RARITY_NEMESIS,
}

monster.health = 3000000
monster.maxHealth = 3000000
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
	maxSummons = 12,
	summons = {
		{ name = "Chaotic Legolas", chance = 20, interval = 2000, count = 2 },
	},
}


	monster.loot = {
		{ name = "crystal coin", chance = 100000, maxCount = 200 },
		{ name = "Exalted core", chance = 600, maxCount = 20 },
		{ name = "Bag you desire", chance = 600, maxCount = 5 },
		{ name = "Primal bag", chance = 600, maxCount = 5 },
		{ id = 43895, chance = 600, maxCount = 2 }, -- Bag you covet
		{ name = "Chaotic sword", chance = 200, maxCount = 1 },
		{ name = "Chaotic axe", chance = 200, maxCount = 1 },
		{ name = "Chaotic club", chance = 200, maxCount = 1 },
		{ name = "Chaotic bow", chance = 200, maxCount = 1 },
		{ name = "Chaotic staff", chance = 200, maxCount = 1 },
		{ name = "Chaotic shield", chance = 200, maxCount = 1 },
		{ name = "Chaotic quiver", chance = 200, maxCount = 1 },
		{ name = "Chaotic spellbook", chance = 200, maxCount = 1 },
		{ name = "Chaotic necklace", chance = 200, maxCount = 1 },
	}


monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2350 },
	{ name = "combat", interval = 4000, chance = 26, type = COMBAT_ICEDAMAGE, minDamage = -2300, maxDamage = -2600, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "ice chain", interval = 5000, chance = 20, minDamage = -2500, maxDamage = -2700, range = 7 },
	{ name = "combat", interval = 9500, chance = 52, type = COMBAT_HOLYDAMAGE, minDamage = -2700, maxDamage = -2900, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -3600, maxDamage = -3900, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 4000, chance = 23, type = COMBAT_PHYSICALDAMAGE, minDamage = -2400, maxDamage = -2700, radius = 4, shootEffect = CONST_ANI_EXPLOSION, range = 7, effect = CONST_ME_EXPLOSIONHIT, target = true },
	{ name = "root", interval = 2000, chance = 1, target = true },
	{ name = "soulwars fear", interval = 2000, chance = 1, target = true },
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
