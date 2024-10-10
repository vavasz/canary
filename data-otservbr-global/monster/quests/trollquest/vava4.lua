local mType = Game.createMonsterType("vava depresso")
local monster = {}

monster.description = "vava depresso"
monster.experience = 0
monster.outfit = {
    lookTypeEx = 12746,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.bosstiary = {
    bossRaceId = 5001,
    bossRace = RARITY_NEMESIS,
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 111
monster.speed = 64
monster.manaCost = 220

monster.changeTarget = {
    interval = 4000,
    chance = 0,
}

monster.events = {
    "bossDeath",
}

monster.strategiesTarget = {
    nearest = 100,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true, -- Set to true to make it an aggressive boss
    convinceable = false,
    pushable = false, -- Pushable should typically be false for bosses
    rewardBoss = true,
    illusionable = false, -- Typically false for bosses
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 15,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false,
}

monster.light = {
    level = 0,
    color = 0,
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Cara... O que voces fizeram comigo?", yell = true },
    { text = "Esse servidor era meu sonho. Por queee", yell = true },
    { text = "Nao tem motivo nenhum pra isso cara =())", yell = true },
    { text = "Stooooop", yell = false },
    { text = "Eu so queria que voces se divertissem", yell = true },
}

monster.loot = {
}

monster.attacks = {
    -- Define any attacks for the boss if necessary
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
