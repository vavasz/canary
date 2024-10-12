local mType = Game.createMonsterType("ex pos-termino")
local monster = {}

monster.description = "ex pos-termino"
monster.experience = 0
monster.outfit = {
    lookType = 1278,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.bosstiary = {
    bossRaceId = 2678,
    bossRace = RARITY_NEMESIS,
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 111
monster.speed = 250
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
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = true, -- Indicates this is a boss
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
    { text = "E isso que da, nao cuida de mim, tem quem cuide", yell = true },
    { text = "Sempre tem alguem de olho.", yell = true },
    { text = "Voce ainda nao viu o carro deles...", yell = true },
    { text = "Voce nem casa tem, credo", yell = false },
    { text = "Ja comprou a moto?", yell = true },
}

monster.summon = {
    maxSummons = 8,
    summons = {
        { name = "urubu rico", chance = 40, interval = 1000, count = 2 },
    },
}

monster.loot = {
    { id = 49627, chance = 100000, maxCount = 1 },
    { id = 49630, chance = 100000, maxCount = 1 },
    { id = 49635, chance = 100000, maxCount = 1 },
    { id = 49634, chance = 100000, maxCount = 1 },
    { id = 49634, chance = 100000, maxCount = 1 },
    { id = 49709, chance = 100000, maxCount = 1 },
    { id = 49710, chance = 100000, maxCount = 1 },
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
