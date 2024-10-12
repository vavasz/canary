-- Function to create monsters from a table
local damageTypeEffects = {
    [COMBAT_ENERGYDAMAGE] = {5, 23, 170, 179, 184, 185, 195, 198, 222, 244, 271},
    [COMBAT_EARTHDAMAGE] = {261, 213, 206, 196, 178, 169, 66, 55, 51, 45, 17, 9},
    [COMBAT_FIREDAMAGE] = {1, 7, 30, 37, 167, 177, 197, 215, 223, 249, 268},
    [COMBAT_ICEDAMAGE] = {243, 241, 216, 191, 176, 44, 43, 42, 34, 12},
}

local function createMonsters(mounttable, damageType)
    for i = 1, #mounttable.name do
        local mType = Game.createMonsterType(mounttable.name[i])
        local monster = {}

        monster.description = string.format("a %s", mounttable.name[i]:lower())
        monster.outfit = {
            lookType = mounttable.ltype[i],
            lookAddons = 3,
            lookMount = 0,
        }

        monster.health = 360000
        monster.maxHealth = 360000
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

        local effects = damageTypeEffects[damageType]

        monster.attacks = {
            { name = "melee", interval = 2000, chance = 100, minDamage = -2000, maxDamage = -3000, effect = effects[math.random(#effects)] },  
            { name = "combat", interval = 2500, chance = 15, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2500, chance = 20, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 20, type = damageType, minDamage = -2000, maxDamage = -3000, length = 8, spread = 3, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 3000, chance = 10, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 4, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 25, type = damageType, minDamage = -2000, maxDamage = -3000, length = 6, spread = 2, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 2500, chance = 15, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2500, chance = 20, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 5, effect = effects[math.random(#effects)], target = true },
            { name = "combat", interval = 2000, chance = 20, type = damageType, minDamage = -2000, maxDamage = -3000, length = 8, spread = 3, effect = effects[math.random(#effects)], target = false },
            { name = "combat", interval = 3000, chance = 10, type = damageType, minDamage = -2000, maxDamage = -3000, radius = 4, effect = effects[math.random(#effects)], target = true },
            }
        mType:register(monster)        
    end
end

-- Group 1
local mounttable1 = {
    name = {"Widow Queen (mountable)", "Racing Bird (mountable)", "War Bear (mountable)", "Black Sheep (mountable)", "Midnight Panther (mountable)", "Draptor (mountable)", "Titanica (mountable)", "Tin Lizzard (mountable)", "Blazebringer (mountable)", "Rapid Boar (mountable)", "Stampor (mountable)", "Undead Cavebear (mountable)"},
    ltype = {368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379}
}
createMonsters(mounttable1, COMBAT_ENERGYDAMAGE)

-- Group 2
local mounttable2 = {
    name = {"Donkey (mountable)", "Tiger Slug (mountable)", "Uniwheel (mountable)", "Crystal Wolf (mountable)", "War Horse (mountable)", "Kingly Deer (mountable)", "Tamed Panda (mountable)", "Dromedary (mountable)", "Scorpion King (mountable)", "Rented Horse (mountable)", "Armoured War Horse (mountable)", "Shadow Draptor (mountable)"},
    ltype = {387, 388, 389, 390, 392, 401, 402, 405, 406, 421, 426, 427}
}
createMonsters(mounttable2, COMBAT_EARTHDAMAGE)

-- Group 3
local mounttable3 = {
    name = {"Rented Horse (Gray) (mountable)", "Rented Horse (Brown) (mountable)", "Lady Bug (mountable)", "Manta Ray (mountable)", "Ironblight (mountable)", "Magma Crawler (mountable)", "Dragonling (mountable)", "Gnarlhound (mountable)", "Crimson Ray (mountable)", "Steelbeak (mountable)", "Water Buffalo (mountable)", "Tombstinger (mountable)"},
    ltype = {437, 438, 447, 450, 502, 503, 506, 515, 521, 522, 526, 546}
}
createMonsters(mounttable3, COMBAT_FIREDAMAGE)

-- Group 4
local mounttable4 = {
    name = {"Platesaurian (mountable)", "Ursagrodon (mountable)", "The Hellgrip (mountable)", "Noble Lion (mountable)", "Desert King (mountable)", "Shock Head (mountable)", "Walker (mountable)", "Azudocus (mountable)", "Carpacosaurus (mountable)", "Death Crawler (mountable)", "Flamesteed (mountable)", "Jade Lion (mountable)"},
    ltype = {547, 548, 559, 571, 572, 580, 606, 621, 622, 624, 626, 627}
}
createMonsters(mounttable4, COMBAT_ICEDAMAGE)

-- Group 5
local mounttable5 = {
    name = {"Jade Pincer (mountable)", "Nethersteed (mountable)", "Tempest (mountable)", "Winter King (mountable)", "Doombringer (mountable)", "Woodland Prince (mountable)", "Hailstorm Fury (mountable)", "Siegebreaker (mountable)", "Poisonbane (mountable)", "Blackpelt (mountable)", "Golden Dragonfly (mountable)", "Steel Bee (mountable)"},
    ltype = {628, 629, 630, 631, 644, 647, 648, 649, 650, 651, 669, 670}
}
createMonsters(mounttable5, COMBAT_ENERGYDAMAGE)

-- Group 6
local mounttable6 = {
    name = {"Copper Fly (mountable)", "Tundra Rambler (mountable)", "Highland Yak (mountable)", "Glacier Vagabond (mountable)", "Flying Divan (mountable)", "Magic Carpet (mountable)", "Floating Kashmir (mountable)", "Ringtail Waccoon (mountable)", "Night Waccoon (mountable)", "Emerald Waccoon (mountable)", "Glooth Glider (mountable)", "Shadow Hart (mountable)"},
    ltype = {671, 672, 673, 674, 688, 689, 690, 691, 692, 693, 682, 685}
}
createMonsters(mounttable6, COMBAT_EARTHDAMAGE)

-- Group 7
local mounttable7 = {
    name = {"Black Stag (mountable)", "Emperor Deer (mountable)", "Flitterkatzen (mountable)", "Venompaw (mountable)", "Batcat (mountable)", "Sea Devil (mountable)", "Coralripper (mountable)", "Plumfish (mountable)", "Gorongra (mountable)", "Noctungra (mountable)", "Silverneck (mountable)", "Slagsnare (mountable)"},
    ltype = {686, 687, 726, 727, 728, 734, 735, 736, 738, 739, 740, 761}
}
createMonsters(mounttable7, COMBAT_FIREDAMAGE)

-- Group 8
local mounttable8 = {
    name = {"Nightstinger (mountable)", "Razorcreep (mountable)", "Rift Runner (mountable)", "Nightdweller (mountable)", "Frostflare (mountable)", "Cinderhoof (mountable)", "Mouldpincer (mountable)", "Bloodcurl (mountable)", "Leafscuttler (mountable)", "Sparkion (mountable)", "Swamp Snapper (mountable)", "Mould Shell (mountable)"},
    ltype = {762, 763, 848, 849, 850, 851, 868, 869, 870, 883, 886, 887}
}
createMonsters(mounttable8, COMBAT_ICEDAMAGE)

-- Group 9
local mounttable9 = {
    name = {"Reed Lurker (mountable)", "Neon Sparkid (mountable)", "Vortexion (mountable)", "Ivory Fang (mountable)", "Shadow Claw (mountable)", "Snow Pelt (mountable)", "Jackalope (mountable)", "Dreadhare (mountable)", "Wolpertinger (mountable)", "Stone Rhino (mountable)", "Gold Sphinx (mountable)", "Emerald Sphinx (mountable)"},
    ltype = {888, 889, 890, 901, 902, 903, 905, 906, 907, 937, 950, 951}
}
createMonsters(mounttable9, COMBAT_ENERGYDAMAGE)

-- Group 10
local mounttable10 = {
    name = {"Shadow Sphinx (mountable)", "Jungle Saurian (mountable)", "Ember Saurian (mountable)", "Lagoon Saurian (mountable)", "Blazing Unicorn (mountable)", "Arctic Unicorn (mountable)", "Prismatic Unicorn (mountable)", "Cranium Spider (mountable)", "Cave Tarantula (mountable)", "Gloom Widow (mountable)", "Mole (mountable)", "Marsh Toad (mountable)"},
    ltype = {952, 959, 960, 961, 1017, 1018, 1019, 1025, 1026, 1027, 1049, 1052}
}
createMonsters(mounttable10, COMBAT_EARTHDAMAGE)

-- Group 11
local mounttable11 = {
    name = {"Sanguine Frog (mountable)", "Toxic Toad (mountable)", "Ebony Tiger (mountable)", "Feral Tiger (mountable)", "Jungle Tiger (mountable)", "Fleeting Knowledge (mountable)", "Tawny Owl (mountable)", "Snowy Owl (mountable)", "Boreal Owl (mountable)", "Lacewing Moth (mountable)", "Hibernal Moth (mountable)", "Cold Percht Sleigh (mountable)"},
    ltype = {1053, 1054, 1091, 1092, 1093, 1101, 1104, 1105, 1106, 1150, 1151, 1163}
}
createMonsters(mounttable11, COMBAT_ICEDAMAGE)

-- Group 12
local mounttable12 = {
    name = {"Bright Percht Sleigh (mountable)", "Dark Percht Sleigh (mountable)", "Festive Snowman (mountable)", "Muffled Snowman (mountable)", "Caped Snowman (mountable)", "Rabbit Rickshaw (mountable)", "Bunny Dray (mountable)", "Cony Cart (mountable)", "River Crocovile (mountable)", "Swamp Crocovile (mountable)", "Nightmarish Crocovile (mountable)", "Gryphon (mountable)"},
    ltype = {1164, 1165, 1167, 1168, 1169, 1179, 1180, 1181, 1183, 1184, 1185, 1191}
}
createMonsters(mounttable12, COMBAT_FIREDAMAGE)

-- Group 13
local mounttable13 = {
    name = {"Jousting Eagle (mountable)", "Cerberus Champion (mountable)", "Cold Percht Sleigh Variant (mountable)", "Bright Percht Sleigh Variant (mountable)", "Dark Percht Sleigh Variant (mountable)", "Cold Percht Sleigh Final (mountable)", "Bright Percht Sleigh Final (mountable)", "Dark Percht Sleigh Final (mountable)", "Battle Badger (mountable)", "Ether Badger (mountable)", "Zaoan Badger (mountable)", "Blue Rolling Barrel (mountable)"},
    ltype = {1208, 1209, 1229, 1230, 1231, 1232, 1233, 1234, 1247, 1248, 1249, 1257}
}
createMonsters(mounttable13, COMBAT_ENERGYDAMAGE)

-- Group 14
local mounttable14 = {
    name = {"Red Rolling Barrel (mountable)", "Green Rolling Barrel (mountable)", "Floating Sage (mountable)", "Floating Scholar (mountable)", "Floating Augur (mountable)", "Haze (mountable)", "Antelope (mountable)", "Snow Strider (mountable)", "Dusk Pryer (mountable)", "Dawn Strayer (mountable)", "Phantasmal Jade (mountable)", "Savanna Ostrich (mountable)"},
    ltype = {1258, 1259, 1264, 1265, 1266, 1269, 1281, 1284, 1285, 1286, 1321, 1324}
}
createMonsters(mounttable14, COMBAT_EARTHDAMAGE)

-- Group 15
local mounttable15 = {
    name = {"Coral Rhea (mountable)", "Eventide Nandu (mountable)", "Voracious Hyaena (mountable)", "Cunning Hyaena (mountable)", "Scruffy Hyaena (mountable)", "White Lion (mountable)", "Krakoloss (mountable)", "Merry Mammoth (mountable)", "Holiday Mammoth (mountable)", "Festive Mammoth (mountable)", "Void Watcher (mountable)", "Rune Watcher (mountable)"},
    ltype = {1325, 1326, 1333, 1334, 1335, 1336, 1363, 1379, 1380, 1381, 1389, 1390}
}
createMonsters(mounttable15, COMBAT_ICEDAMAGE)

-- Group 16
local mounttable16 = {
    name = {"Rift Watcher (mountable)", "Phant (mountable)", "Shellodon (mountable)", "Singeing Steed (mountable)", "Hyacinth (mountable)", "Peony (mountable)", "Dandelion (mountable)", "Rustwurm (mountable)", "Bogwurm (mountable)", "Gloomwurm (mountable)", "Emerald Raven (mountable)", "Mystic Raven (mountable)"},
    ltype = {1391, 1417, 1430, 1431, 1439, 1440, 1441, 1446, 1447, 1448, 1453, 1454}
}
createMonsters(mounttable16, COMBAT_ENERGYDAMAGE)

-- Group 17
local mounttable17 = {
    name = {"Radiant Raven (mountable)", "Gloothomotive (mountable)", "Topaz Shrine (mountable)", "Jade Shrine (mountable)", "Obsidian Shrine (mountable)", "Poppy Ibex (mountable)", "Mint Ibex (mountable)", "Cinnamon Ibex (mountable)", "Giant Beaver (mountable)", "Noxious Ripptor (mountable)", "Parade Horse (mountable)", "Jousting Horse (mountable)"},
    ltype = {1455, 1459, 1491, 1492, 1493, 1526, 1527, 1528, 1536, 1577, 1578, 1579}
}
createMonsters(mounttable17, COMBAT_EARTHDAMAGE)

-- Group 18
local mounttable18 = {
    name = {"Tourney Horse (mountable)", "Mutated Abomination (mountable)", "Tangerine Flecked Koi (mountable)", "Brass Speckled Koi (mountable)", "Ink Spotted Koi (mountable)", "Frostbringer (mountable)", "Winterstride (mountable)", "Icebreacher (mountable)", "Boisterous Bull (mountable)", "Surly Steer (mountable)", "Obstinate Ox (mountable)", "Darkfire Devourer (mountable)"},
    ltype = {1580, 1599, 1608, 1609, 1610, 1615, 1616, 1617, 1672, 1673, 1674, 1677}
}
createMonsters(mounttable18, COMBAT_FIREDAMAGE)

-- Group 19
local mounttable19 = {
    name = {"Spirit of Purity (mountable)", "Foxmouse (mountable)", "Doom Skull (mountable)", "Magma Skull (mountable)", "Corpsefire Skull (mountable)", "Mystic Jaguar (mountable)", "Gorgon Hydra (mountable)", "Dawnbringer Pegasus (mountable)", "Wrathfire Pegasus (mountable)", "Skybreaker Pegasus (mountable)", "Pegasus (mountable)", "Glacier Wyrm (mountable)"},
    ltype = {1682, 1632, 1685, 1686, 1687, 1721, 1724, 1727, 1728, 1729, 1730, 1742}
}
createMonsters(mounttable19, COMBAT_ENERGYDAMAGE)

-- Group 20
local mounttable20 = {
    name = {"Bog Tyrant (mountable)", "Crimson Fang (mountable)", "Bulltar Mount (mountable)", "Dargka Mount (mountable)", "Megahydra (mountable)"},
    ltype = {1743, 1744, 1717, 1703, 1712}
}
createMonsters(mounttable20, COMBAT_EARTHDAMAGE)
