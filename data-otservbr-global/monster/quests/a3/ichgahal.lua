local mType = Game.createMonsterType("unbreakable ichgahal")
local monster = {}

monster.description = "unbreakable ichgahal"
monster.experience = 32500000
monster.outfit = {
	lookType = 1665,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	"unbreakablerottenbloodbossdeath",
}

monster.bosstiary = {
	bossRaceId = 2672,
	bossRace = RARITY_NEMESIS,
}

monster.health = 3500000
monster.maxHealth = 3500000
monster.race = "undead"
monster.corpse = 44018
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
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
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Rott!!", yell = false },
	{ text = "Putrefy!", yell = false },
	{ text = "Decay!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 14615, maxCount = 115 },
	{ name = "ultimate spirit potion", chance = 7169, maxCount = 153 },
	{ name = "mastermind potion", chance = 14651, maxCount = 45 },
	{ name = "yellow gem", chance = 9243, maxCount = 5 },
	{ name = "amber with a bug", chance = 7224, maxCount = 2 },
	{ name = "ultimate mana potion", chance = 13137, maxCount = 179 },
	{ name = "violet gem", chance = 14447, maxCount = 4 },
	{ name = "raw watermelon tourmaline", chance = 6788, maxCount = 2 },
	{ id = 3039, chance = 9047, maxCount = 1 }, -- red gem
	{ name = "supreme health potion", chance = 14635, maxCount = 37 },
	{ name = "berserk potion", chance = 14973, maxCount = 45 },
	{ name = "amber with a dragonfly", chance = 6470, maxCount = 1 },
	{ name = "gold ingot", chance = 11421, maxCount = 1 },
	{ name = "blue gem", chance = 8394, maxCount = 1 },
	{ name = "bullseye potion", chance = 13783, maxCount = 36 },
	{ name = "putrefactive figurine", chance = 11416, maxCount = 1 },
	{ name = "ichgahal's fungal infestation", chance = 7902, maxCount = 1 },
	{ name = "white gem", chance = 13559, maxCount = 3 },
	{ id = 43895, chance = 360 }, -- Bag you covet
	{ name = "bag of protection", chance = 10, maxCount = 1 },
	{ name = "unwanted energy backpack", chance = 10, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 3000, chance = 100, minDamage = -7500, maxDamage = -11000 },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -7000, maxDamage = -10000, length = 12, spread = 0, effect = 249, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -6800, maxDamage = -9700, length = 12, spread = 0, effect = 193, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -9000, maxDamage = -12000, length = 6, spread = 0, effect = CONST_ME_FIREAREA, target = false },
	{ name = "speed", interval = 2000, chance = 35, speedChange = -600, radius = 8, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 },
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{ name = "combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1200, effect = 236, target = false },
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
