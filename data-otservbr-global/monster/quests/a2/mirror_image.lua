local mType = Game.createMonsterType("Immortal Mirror Image")
local monster = {}

monster.description = "an immortal mirror image"
monster.experience = 270000  -- 10x experience
monster.outfit = {
	lookType = 136,
	lookHead = 76,
	lookBody = 114,
	lookLegs = 76,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 105000  -- 3x health
monster.maxHealth = 105000  -- 3x max health
monster.race = "blood"
monster.corpse = 0
monster.speed = 117
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
	{ text = "Delusional!", yell = false },
	{ text = "I'll be your worst nightmare", yell = false },
	{ text = "The mirrors can't contain the night.", yell = false },
	{ text = "What a lovely reflection.", yell = false },
}

monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2100 },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -2400, maxDamage = -3300, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -2850, maxDamage = -4200, radius = 4, effect = CONST_ME_HOLYAREA, target = false },  -- Increased max damage
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -3240, maxDamage = -4050, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },  -- Increased max damage
	{ name = "ice chain", interval = 2000, chance = 15, minDamage = -2700, maxDamage = -3900, range = 7 },  -- Increased max damage
}

monster.defenses = {
	defense = 225,  -- Adjusted for increased difficulty
	armor = 0,
	--	mitigation = ???,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 3 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -3 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 3 },
	{ type = COMBAT_HOLYDAMAGE, percent = 3 },
	{ type = COMBAT_DEATHDAMAGE, percent = -3 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

monster.events = {
	"ImmortalMirrorImageTransform",
}

mType:register(monster)
