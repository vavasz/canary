local mType = Game.createMonsterType("remembrance of chaos")
local monster = {}

monster.description = "remembrance of chaos"
monster.experience = 0
monster.outfit = {
	lookType = 1444,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 1717,
}

monster.events = {
	"chaosdeath",
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "undead"
monster.corpse = 111
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.bosstiary = {
	bossRaceId = 1969,
	bossRace = RARITY_NEMESIS,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 6,
	summons = {
		{ name = "klioshiv", chance = 40, interval = 1000, count = 2 },
		{ name = "klasfiz", chance = 50, interval = 1000, count = 2 },
		{ name = "kloavsz", chance = 50, interval = 1000, count = 2 },
	},
}


monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "crystal coin", chance = 100000, maxCount = 500 },
	{ name = "Exalted core", chance = 20000, maxCount = 20 },
	{ name = "Bag you desire", chance = 20000, maxCount = 10 },
	{ name = "Primal bag", chance = 20000, maxCount = 10 },
	{ id = 43501, chance = 1000, maxCount = 1 },
	{ id = 43502, chance = 1000, maxCount = 1 },
	{ id = 48424, chance = 1000, maxCount = 1 },
	{ id = 36725, chance = 100000, maxCount = 1 },
	{ id = 22724, chance = 1000, maxCount = 15 },
	{ id = 43895, chance = 1000, maxCount = 1 }, -- Bag you covet
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -8000 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -6000, maxDamage = -8000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 252, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -6000, maxDamage = -8000, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -6000, maxDamage = -8000, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -6000, maxDamage = -8000, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -6000, maxDamage = -8000, range = 7 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -6000, maxDamage = -8000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 241, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 243, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -6000, maxDamage = -8000, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 264, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -6000, maxDamage = -8000, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 6000, maxDamage = -8000, range = 7, target = false },
	{ name = "soulwars fear", interval = 2000, chance = 35, target = true },
	{ name = "alienator destroy", interval = 15000, chance = 50, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	mitigation = 8.40,
	{ name = "speed", interval = 1000, chance = 20, speedChange = 500, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 2250, maxDamage = 4250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
