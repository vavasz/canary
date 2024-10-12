local mType = Game.createMonsterType("Unbreakable Darklight Matter")
local monster = {}

monster.description = "an unbreakable darklight matter"
monster.experience = 222500  -- 10x experience
monster.outfit = {
	lookType = 1624,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2638
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Darklight Core.",
}

monster.health = 90450  -- 3x harder health
monster.maxHealth = 90450
monster.race = "venom"
monster.corpse = 43571
monster.speed = 230
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "*twiggle*", yell = false },
	{ text = "SSSSHRRR...", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 11755, maxCount = 1 },
	{ name = "unstable darklight matter", chance = 9060, maxCount = 1 },
	{ name = "darklight core", chance = 12887, maxCount = 1 },
	{ name = "ultimate health potion", chance = 6553, maxCount = 6 },
	{ id = 3039, chance = 5852, maxCount = 1 }, -- red gem
	{ name = "darklight matter", chance = 8849, maxCount = 1 },
	{ name = "rubber cap", chance = 7180, maxCount = 1 },
	{ id = 23544, chance = 3500, maxCount = 1 }, -- collar of red plasma
	{ name = "green gem", chance = 3500, maxCount = 1 },
	{ name = "shadow sceptre", chance = 3500, maxCount = 1 },
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -3300 },  -- 3x harder damage
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -4200, maxDamage = -5400, radius = 5, effect = CONST_ME_PURPLESMOKE, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -4500, maxDamage = -4800, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -4200, maxDamage = -4950, length = 8, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "largeredring", interval = 2000, chance = 15, minDamage = -2400, maxDamage = -4500, target = false },
}

monster.defenses = {
	defense = 98,
	armor = 98,
	mitigation = 3.28,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 40 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = -25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
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
