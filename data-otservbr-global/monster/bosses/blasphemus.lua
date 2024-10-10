local mType = Game.createMonsterType("Blasphemus")
local monster = {}

monster.description = "Blasphemus"
monster.experience = 150000000
monster.outfit = {
	lookType = 1765,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	"finallydead",
}

monster.bosstiary = {
	bossRaceId = 2690,
	bossRace = RARITY_NEMESIS,
}

monster.health = 14000000
monster.maxHealth = 14000000
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
		{ name = "Rhatmhuun", chance = 20, interval = 2000, count = 2 },
		{ name = "Rheys", chance = 20, interval = 2000, count = 2 },
		{ name = "Rhastophur", chance = 20, interval = 2000, count = 2 },
		{ name = "Rhamseia", chance = 20, interval = 2000, count = 2 },
	},
}


monster.loot = {
	{ name = "crystal coin", chance = 100000, maxCount = 200 },
	{ name = "Exalted core", chance = 600, maxCount = 20 },
	{ name = "Bag you desire", chance = 600, maxCount = 20 },
	{ name = "Primal bag", chance = 600, maxCount = 20 },
	{ id = 43895, chance = 600, maxCount = 2 }, -- Bag you covet
}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -22000 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -22200, maxDamage = -31100, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 243, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -22200, maxDamage = -31000, length = 8, spread = 0, effect = 252, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -22000, maxDamage = -32000, length = 8, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -22950, maxDamage = -32400, range = 7, radius = 3, shootEffect = 37, effect = 240, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -20000, maxDamage = -32500, length = 8, spread = 0, effect = 244, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -31750, maxDamage = -34900, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -32690, maxDamage = -35300, radius = 4, effect = CONST_ME_POFF, target = true },
	{ name = "death chain", interval = 2500, chance = 40, minDamage = -22100, maxDamage = -26700, range = 7 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -21200, maxDamage = -24500, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 241, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -24170, maxDamage = -27860, length = 8, spread = 0, effect = 243, target = false },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -23180, maxDamage = -27480, length = 8, spread = 0, effect = 271, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -23700, maxDamage = -27400, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 264, target = true },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -22890, maxDamage = -27200, length = 8, spread = 0, effect = 268, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -22890, maxDamage = -27200, length = 8, spread = 0, effect = 251, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 22900, maxDamage = -26800, range = 7, target = false },
	{ name = "blasphemus push", interval = 15000, chance = 100, minDamage = 50000, maxDamage = -100000, target = false },
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
