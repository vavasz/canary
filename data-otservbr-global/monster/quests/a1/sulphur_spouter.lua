local mType = Game.createMonsterType("Enhanced Sulphur Spouter")
local monster = {}

monster.description = "an enhanced sulphur spouter"
monster.experience = 115170  -- Experience multiplied by 10
monster.outfit = {
	lookType = 1547,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 2613
monster.Bestiary = {
	class = "Extra Dimensional",
	race = BESTY_RACE_EXTRA_DIMENSIONAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Monster Graveyard",
}

monster.health = 57000  -- Health tripled
monster.maxHealth = 57000  -- Max health tripled
monster.race = "blood"
monster.corpse = 39279
monster.speed = 180  -- Speed remains the same
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	targetDistance = 2,
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
	{ text = "Gruugl...", yell = false },
}

monster.loot = {
	{ name = "Sulphur Powder", chance = 39440 },
	{ name = "Crystal Coin", chance = 22310, minCount = 1, maxCount = 2 },
	{ name = "Ultimate Mana Potion", chance = 12890, minCount = 1, maxCount = 2 },
	{ name = "Yellow Gem", chance = 2820 },
	{ id = 282, chance = 2450 }, -- Giant Shimmering Pearl (Green)
	{ name = "Slightly Rusted Legs", chance = 2420 },
	{ name = "Knight Legs", chance = 2360 },
	{ id = 3039, chance = 2190 }, -- Red Gem
	{ name = "Warrior's Shield", chance = 1760 },
	{ id = 23533, chance = 1110 }, -- Ring of Red Plasma
	{ name = "Fire Sword", chance = 770 },
	{ name = "Crystal Crossbow", chance = 510 },
	{ name = "bag of enhanceds", chance = 3 }, -- bag you desire
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2403 },  -- Damage tripled
	{ name = "combat", interval = 3500, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -2400, maxDamage = -3600, range = 4, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_YELLOW_RINGS, target = true },  -- Damage tripled
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2400, maxDamage = -3600, radius = 4, effect = CONST_ME_YELLOWSMOKE, target = true },  -- Damage tripled
	{ name = "sulphur spouter wave", interval = 4500, chance = 30, minDamage = -1950, maxDamage = -2700 },  -- Damage tripled
}

monster.defenses = {
	defense = 110 * 3,  -- Defense tripled
	armor = 84 * 3,  -- Armor tripled
	mitigation = 2.05 * 3,  -- Increased mitigation
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
