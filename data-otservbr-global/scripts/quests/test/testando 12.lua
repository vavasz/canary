function random(min, max)
    return math.random(min, max)
end

local EM = {  -- effect mapping
    [COMBAT_ENERGYDAMAGE] = REE,   -- Energy effect function
    [COMBAT_EARTHDAMAGE] = RPE,    -- Poison effect function (for earth-related)
    [COMBAT_FIREDAMAGE] = RFE,     -- Fire effect function
    [COMBAT_ICEDAMAGE] = RIE,      -- Ice effect function
    [COMBAT_DEATHDAMAGE] = RDE,    -- Death effect function
    [COMBAT_HOLYDAMAGE] = RHE,     -- Holy effect function
}

-- Define a function to get the effect based on the damage type
local function ME(damageType) -- matching effect
    local effectFunction = EM[damageType]
    if effectFunction then
        return effectFunction()
    else
        return 0 
    end
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
    return RE(holyEffects)
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
    return random(-5000, -2000)
end
local function RI() -- random interval
    return random(2000, 3500)
end
local function RC() -- random chance of performing the attack
    return random(30, 60)
end
local function RR() -- random radius
    return random(3, 7)
end
local function RS() -- random spread
    return random(1, 5)
end
local function RL() -- random lenght
    return random(1, 5)
end


local function createMonsters(mountTable)
    for i = 1, #mountTable.name do
        local mType = Game.createMonsterType(mountTable.name[i])
        local monster = {}
        monster.description = string.format("a %s", mountTable.name[i]:lower())
        monster.outfit = {
            lookType = mountTable.ltype[i],
            lookHead = 114,
            lookBody = mountTable.lookBody or 114,
            lookLegs = mountTable.lookLegs or 114,
            lookFeet = mountTable.lookFeet or 1,
            lookAddons = mountTable.lookAddons or 3,
        }

        monster.raceId = mountTable.idrace[i]
        monster.Bestiary = {
            class = "Extra Dimensional",
            race = BESTY_RACE_EXTRA_DIMENSIONAL,
            toKill = 1000,
            FirstUnlock = 50,
            SecondUnlock = 500,
            CharmsPoints = 100,
            Stars = 3,
            Occurrence = 0,
            Locations = "Hell.",
    }
    
            monster.experience = random(500000, 512000)   --   randomize health from range
            monster.health = random(315000, 315000)         --   randomize exp from range
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
    
            monster.loot = {
                { name = "Crystal Coin", chance = 7000, minCount = 1, maxCount = 5 },
                { name = "Magic Plate Armor", chance = 7000 },
                { name = "Mastermind Shield", chance = 7000 },
                { name = "Royal Helmet", chance = 7000 },
                { name = "Boots Of Haste", chance = 7000 },
                { name = "White Gem", chance = 7000 },
                { name = "Violet Gem", chance = 7000 },
                { name = "Stone Skin Amulet", chance = 7000 },
                { name = "Bag you desire", chance = 7 },
                { name = "Primal bag", chance = 7 },
            }
    
            monster.attacks = {
                { name = "melee", interval = RI(), chance = 100, minDamage = RD(), maxDamage = RD(), effect = ME(damageType) },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), radius = RR(), spread = RS(), effect = RFE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), radius = RR(), spread = RS(), effect = RIE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), radius = RR(), spread = RS(), effect = REE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), radius = RR(), spread = RS(), effect = RPE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), radius = RR(), spread = RS(), effect = RDE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = RHE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = RFE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = RIE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = REE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = RPE(), target = false },
                { name = "combat", interval = RI(), chance = RC(), type = DT[math.random(#DT)], minDamage = RD(), maxDamage = RD(), length = RL(), spread = RS(), effect = RDE(), target = false },
            }
            
            mType:register(monster)        
        end
    end

        local elementalFire = {
            name = {"a blazing burning gladiator", "a blazing sphinx acolyte", "a blazing priestess of the suns"},
            ltype = {541, 1200, 1199},
            idrace = {3501, 3502, 3503},
            lookBody = 114,
            lookLegs = 114,
            lookFeet = 1,
            lookAddons = 3,
        }
        createMonsters(elementalFire)
        
        local elementalIce = {
            name = {"a wet priestess", "outgoing insect", "freezing horse"},
            ltype = {1199, 1339, 1615},
            idrace = {3504, 3505, 3506},
            lookBody = 114,
            lookLegs = 10,
            lookFeet = 85,
            lookAddons = 3,
        }
        createMonsters(elementalIce)
        
        local elementalHoly = {
            name = {"bashholy", "holy anomaly", "a priest priestess"},
            ltype = {1408, 876, 1199},
            idrace = {3509, 3510, 3511},
            lookBody = 79,
            lookLegs = 3,
            lookFeet = 114,
            lookAddons = 3,
        }
        createMonsters(elementalHoly)
        
        local elementalEarth = {
            name = {"a swamp priestess", "melting mouth"},
            ltype = {1199, 1737},
            idrace = {3507, 3508},
            lookBody = 7,
            lookLegs = 7,
            lookFeet = 7,
            lookAddons = 2,
        }
        createMonsters(elementalEarth)