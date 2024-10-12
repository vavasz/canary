local mType = Game.createMonsterType("ex sem corote")
local monster = {}

monster.description = "ex sem corote"
monster.experience = 0
monster.outfit = {
    lookType = 12,
    lookHead = 94,
    lookBody = 94,
    lookLegs = 94,
    lookFeet = 94,
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
    chance = 40,
    { text = "VOCE TEM", yell = true },
    { text = "VINTE SEGUNDOS", yell = true },
    { text = "PRA ME DAR MEU TUTTI-FRUTTI", yell = true },
    { text = "TUTTI-FRUTTI, EU TO AVISANDO", yell = false },
    { text = "MISTURA TODOS QUE CHEGA NELE", yell = true },
}

monster.loot = {
}

monster.defenses = {
    defense = 5,
    armor = 1,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 99 },
    { type = COMBAT_ENERGYDAMAGE, percent = 99 },
    { type = COMBAT_EARTHDAMAGE, percent = 99 },
    { type = COMBAT_FIREDAMAGE, percent = 99 },
    { type = COMBAT_LIFEDRAIN, percent = 99 },
    { type = COMBAT_MANADRAIN, percent = 99 },
    { type = COMBAT_DROWNDAMAGE, percent = 99 },
    { type = COMBAT_ICEDAMAGE, percent = 99 },
    { type = COMBAT_HOLYDAMAGE, percent = 99 },
    { type = COMBAT_DEATHDAMAGE, percent = 99 },
}

monster.immunities = {
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = false },
    { type = "bleed", condition = false },
}

monster.bosstiary = {
    bossRaceId = 5678, -- Replace with an appropriate ID
    bossRace = RARITY_NEMESIS,
}

mType:register(monster)
