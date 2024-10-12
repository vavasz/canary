local mType = Game.createMonsterType("Unbreakable Darklight Striker")
local monster = {}

monster.description = "an unbreakable darklight striker"
monster.experience = 222000  -- 10x experience
monster.outfit = {
	lookType = 1661,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2636
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Darklight Core",
}

monster.health = 89100  -- 3x harder health
monster.maxHealth = 89100
monster.race = "undead"
monster.corpse = 43844
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	canPushCreatures = true,
	staticAttackChance = 90,
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

monster.loot = {
	{ name = "crystal coin", chance = 14380, maxCount = 1 },
	{ name = "unstable darklight matter", chance = 14492, maxCount = 1 },
	{ name = "darklight core", chance = 9783, maxCount = 1 },
	{ name = "small topaz", chance = 11140, maxCount = 3 },
	{ name = "ice rapier", chance = 5104, maxCount = 1 },
	{ name = "dark obsidian splinter", chance = 14185, maxCount = 1 },
	{ name = "blue gem", chance = 7355, maxCount = 1 },
	{ name = "crystal mace", chance = 8812, maxCount = 1 },
	{ name = "zaoan helmet", chance = 5572, maxCount = 1 },
	{ name = "bag of protection", chance = 1 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2500, chance = 100, minDamage = 0, maxDamage = -3300 },  -- 3x harder damage
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -4200, maxDamage = -4950, length = 8, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -3300, maxDamage = -4800, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "combat", interval = 2500, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -3900, maxDamage = -4500, radius = 5, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "extended holy chain", interval = 2000, chance = 15, minDamage = -2400, maxDamage = -3600 },
	{ name = "largepinkring", interval = 2500, chance = 10, minDamage = -4500, maxDamage = -5700, target = false },
}

monster.defenses = {
	defense = 112,
	armor = 112,
	mitigation = 3.10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = -25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
