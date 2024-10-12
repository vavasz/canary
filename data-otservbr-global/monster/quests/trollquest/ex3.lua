local mType = Game.createMonsterType("ex depois de comer lanche")
local monster = {}

monster.description = "ex depois de comer lanche"
monster.experience = 0
monster.outfit = {
    lookType = 1464,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 6042
monster.speed = 64
monster.manaCost = 220

monster.changeTarget = {
    interval = 4000,
    chance = 0,
}

monster.events = {
    "exfunctions",
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
    rewardBoss = true, -- Set to true to indicate it's a boss
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true,
}

monster.light = {
    level = 0,
    color = 0,
}

monster.voices = {
    interval = 500,
    chance = 10,
    { text = "Voce e um fofo, sabia?", yell = true },
    { text = "As vezes eu gosto de voce.", yell = true },
    { text = "Kkkkkk voce nem e tao feio assim.", yell = true },
    { text = "Quero mais.", yell = false },
    { text = "Vai piorar.", yell = true },
}

monster.loot = {
}

monster.attacks = {
    { name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -4000 },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -4000, maxDamage = -5000, length = 7, spread = 0, effect = 1, target = false },
    { name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -4000, maxDamage = -5000, radius = 4, effect = 2, target = true },
    { name = "death chain", interval = 2500, chance = 40, minDamage = -4000, maxDamage = -4000, range = 7 },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = -4000, maxDamage = -5000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 4, target = true },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -4000, maxDamage = -5000, length = 8, spread = 0, effect = 5, target = false },
    { name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -4000, maxDamage = -5000, length = 8, spread = 0, effect = 6, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -4000, maxDamage = -5000, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 7, target = true },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -4000, maxDamage = -5000, length = 8, spread = 0, effect = 8, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -4000, maxDamage = -5000, length = 8, spread = 0, effect = 9, target = false },
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 4000, maxDamage = -5000, range = 7, target = false },
}

monster.defenses = {
    defense = 5,
    armor = 1,
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
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = false },
    { type = "bleed", condition = false },
}

monster.bosstiary = {
    bossRaceId = 5679, -- Replace with an appropriate ID
    bossRace = RARITY_NEMESIS,
}

mType:register(monster)
