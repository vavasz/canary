math.randomseed(os.time())

function random(min, max)
    return math.random(min, max)
end

local function RE(effects) -- random effects
    return effects[math.random(#effects)]
end


local function RDE() -- random death effect
    local deathEffects = {18, 39, 67, 69, 158, 202, 264}
    return RE(deathEffects)
end
local function REE() -- random energy effect
    local energyEffects = {5, 23, 170, 179, 184, 185, 195, 198, 222, 244, 271}
    return RE(energyEffects)
end
local function RPE() -- random poison effect
    local poisonEffects = {213, 206, 196, 178, 169, 66, 55, 51, 45, 17, 9}
    return RE(poisonEffects)
end
local function RFE() -- random fire effect
    local fireEffects = {1, 7, 30, 37, 167, 177, 197, 215, 223, 249, 268}
    return RE(fireEffects)
end
local function RIE() -- random ice effect
    local iceEffects = {243, 241, 216, 191, 176, 44, 43, 42, 34, 12}
    return RE(iceEffects)
end
local function RHE() -- random holy effect
    local holyEffects = {4, 8, 22, 32, 40, 49, 50, 181, 34, 12}
    return RHE(holyEffects)
end

-- Damage types
local DT = { 
    COMBAT_ENERGYDAMAGE,
    COMBAT_EARTHDAMAGE,
    COMBAT_FIREDAMAGE,
    COMBAT_ICEDAMAGE,
    COMBAT_DEATHDAMAGE,
    COMBAT_HOLYDAMAGE,
    COMBAT_LIFEDRAIN,
    COMBAT_MANADRAIN,
    COMBAT_PHYSICALDAMAGE
}

local function RD() -- random damage
    return random(-400, -200)
end
local function RI() -- random interval
    return random(1500, 3500)
end
local function RC() -- random chance of performing the attack
    return random(30, 70)
end
local function RR() -- random radius
    return random(3, 7)
end
local function RS() -- random spread
    return random(1, 5)
end

 -------------- creating monsters --------------

local function createMonsters(mountTable)
    for i = 1, #mountTable.name do
        local mType = Game.createMonsterType(mountTable.name[i])
        local monster = {}
        monster.description = string.format("a %s", mountTable.name[i]:lower())
        monster.outfit = {
            lookType = mountTable.ltype[i],
            lookHead = 114,
            lookBody = 114,
            lookLegs = 114,
            lookFeet = 1,
            lookAddons = 3,
        }

        monster.experience = random(2000000, 3000000)   --   randomize health from range
        monster.health = random(700000, 900000)         --   randomize exp from range
        monster.maxHealth = monster.health
        monster.race = "blood"
        monster.corpse = 111
        monster.speed = 250
        monster.manaCost = 450
        monster.changeTarget = {
            interval = 4000,
            chance = 0,
        }
        monster.strategiesTarget = {
            nearest = 70,
            health = 20,
            damage = 10,
        }
        monster.flags = {
            summonable = true,
            attackable = true,
            hostile = true,
            convinceable = false,
            pushable = true,
            illusionable = true,
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
            pet = true,
        }

        monster.attacks = {
            { name = "melee", interval = RI(), chance = 100, minDamage = RD(), maxDamage = RD(), effect = RDE() },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = 8, spread = RS(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = 6, spread = RS(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = 8, spread = RS(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = 8, spread = RS(), effect = RDE(), target = false },
            { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), radius = RR(), effect = RDE(), target = false },
        }
        
        mType:register(monster)        
    end
end

local elementalDeath = {
    name = {"voidest faun", "voidest squid", "voidest book", "voidest eye", "voidest asura", "voidest falcon paladin", "voidest falcon knight", "voidest spectre", "voidest faceless", "voidest spiky", "voidest carnivor", "voidest carnivora", "voidest soul", "voidest phanton", "voidest girtabillu", "voidest bashmu", "voidest sphinx", "voidest manticore", "voidest lamassu", "voidest guzzlemaw", "voidest fairy", "voidest sharper", "voidest carnysilvan"},
    ltype = {980, 1059, 1061, 1063, 1068, 1071, 1072, 1119, 1122, 1133, 1138, 1139, 1268, 1298, 1407, 1408, 1188, 1119, 1190, 1737, 1747, 932, 1418}
}
createMonsters(elementalDeath)