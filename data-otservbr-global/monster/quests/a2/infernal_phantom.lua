local mType = Game.createMonsterType("Immortal Infernal Phantom")
local monster = {}

monster.description = "an immortal infernal phantom"
monster.experience = 157700 -- 10x experience
monster.outfit = {
	lookType = 1298,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2650
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno.",
}

monster.health = 78000 -- 3x health
monster.maxHealth = 78000
monster.race = "undead"
monster.corpse = 34125
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	staticAttackChance = 90,
	targetDistance = 4,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Ashes to ashes.", yell = false },
	{ text = "Burn, baby! Burn!", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 61900 },
	{ name = "terra rod", chance = 34070 },
	{ name = "ultimate health potion", chance = 24400, maxCount = 4 },
	{ name = "hailstorm rod", chance = 7460 },
	{ name = "springsprout rod", chance = 4640 },
	{ name = "infernal heart", chance = 4440 },
	{ name = "underworld rod", chance = 3830 },
	{ name = "fire axe", chance = 3630 },
	{ name = "wand of starstorm", chance = 3430 },
	{ name = "glorious axe", chance = 3230 },
	{ name = "infernal robe", chance = 2620 },
	{ name = "chaos mace", chance = 2420 },
	{ name = "titan axe", chance = 2020 },
	{ name = "wand of voodoo", chance = 1610 },
	{ name = "crystal mace", chance = 1610 },
	{ name = "war axe", chance = 1410 },
	{ name = "warrior's axe", chance = 1410 },
	{ id = 34109, chance = 20 }, -- bag you desire
	{ name = "bag of immortals", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2400 }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2850, maxDamage = -3900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true }, -- 3x maxDamage
	{ name = "extended fire chain", interval = 2000, chance = 15, minDamage = -2100, maxDamage = -2700, range = 7 }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -2700, maxDamage = -4050, radius = 4, effect = CONST_ME_FIREAREA, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2940, maxDamage = -3750, length = 6, spread = 3, effect = CONST_ME_EXPLOSIONHIT, target = false }, -- 3x maxDamage
	{ name = "combat", interval = 3000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -2550, maxDamage = -3600, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true }, -- 3x maxDamage
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.45,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 1 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 80 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = -20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
