local mType = Game.createMonsterType("Saturdays overpower")
local monster = {}

monster.description = "Saturday's Overpower"
monster.experience = 1000000
monster.outfit = {
	lookType = 1422,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
}

monster.bosstiary = {
	bossRaceId = 2698,
	bossRace = RARITY_NEMESIS,
}

monster.health = 14000000
monster.maxHealth = 14000000
monster.race = "undead"
monster.corpse = 111
monster.speed = 3500
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 20,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
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

monster.summon = {
}


monster.loot = {
{ name = "crystal coin", chance = 100000, maxCount = 900 },
{ name = "Exalted core", chance = 4000, maxCount = 20 },
{ name = "Bag you desire", chance = 4000, maxCount = 11 },
{ name = "Primal bag", chance = 4000, maxCount = 11 },
{ id = 43895, chance = 1000, maxCount = 2 }, -- Bag you covet
{ id = 36725, chance = 5000, maxCount = 2 }, -- Bag you covet
{ id = 22724, chance = 5000, maxCount = 15 }, -- Bag you covet
{ id = 49609, chance = 1, maxCount = 1 }, -- Bulltair's Bait
{ id = 49623, chance = 1, maxCount = 1 }, -- Darkga Bait
{ id = 49610, chance = 1, maxCount = 1 }, -- Daigoro's Bait
{ id = 48515, chance = 1, maxCount = 1 }, -- Zaffhinor's Bait
{ id = 49624, chance = 1, maxCount = 1 }, -- Icy Eyes' Bait
{ id = 49626, chance = 1, maxCount = 1 }, -- Pegasus' Bait
{ id = 48512, chance = 1, maxCount = 1 }, -- Horsea's Bait
{ id = 49702, chance = 1, maxCount = 1 }, -- Cerberus' Bait
{ id = 48510, chance = 1, maxCount = 1 }, -- Reaven's Bait
{ id = 48509, chance = 1, maxCount = 1 }, -- Eagles' Bait
{ id = 49611, chance = 1, maxCount = 1 }, -- Antelope's Bait
{ id = 49625, chance = 1, maxCount = 1 }, -- Megahydra's Bait
{ id = 47374, chance = 1, maxCount = 1 }, -- Chaotic Sword
{ id = 47375, chance = 1, maxCount = 1 }, -- Chaotic Axe
{ id = 47376, chance = 1, maxCount = 1 }, -- Chaotic Club
{ id = 47372, chance = 1, maxCount = 1 }, -- Chaotic Staff
{ id = 47371, chance = 1, maxCount = 1 }, -- Chaotic Bow
{ id = 45641, chance = 1, maxCount = 1 }, -- Chaotic Necklace
{ id = 45643, chance = 1, maxCount = 1 }, -- Chaotic Shield
{ id = 45639, chance = 1, maxCount = 1 }, -- Chaotic Spellbook
{ id = 45644, chance = 1, maxCount = 1 }, -- Chaotic Quiver
{ id = 43501, chance = 1, maxCount = 1 }, -- Anima's Soul Stone Potion
{ id = 43502, chance = 1, maxCount = 1 }, -- Anima's Cloak Potion
{ id = 43503, chance = 1, maxCount = 1 }, -- Chaos' Mace Potion
{ id = 43504, chance = 1, maxCount = 1 }, -- Chaos' Protective Armor Potion
{ id = 48514, chance = 1, maxCount = 1 }, -- Shiva's Icy Cloak
{ id = 45252, chance = 1, maxCount = 1 }, -- Shiva's Icy Staff
{ id = 45253, chance = 1, maxCount = 1 }, -- Bahamuth's Helmet Transpasser
{ id = 45254, chance = 1, maxCount = 1 }, -- Bahamuth's Axe's Insides
{ id = 48419, chance = 1, maxCount = 1 }, -- Yojimbo's Helmet's Aid
{ id = 48197, chance = 1, maxCount = 1 }, -- Yojimbo's Flyingblades' Fruit
{ id = 45255, chance = 1, maxCount = 1 }, -- Ifrit's BloodHunger
{ id = 44989, chance = 1, maxCount = 1 }, -- Ifrit's Teeth
{ id = 44729, chance = 1, maxCount = 1 }, -- Hades' Infernal Helmet
{ id = 44438, chance = 1, maxCount = 1 }, -- Hade's Horns
{ id = 43930, chance = 1, maxCount = 1 }, -- Valefor's Compass
{ id = 49695, chance = 1, maxCount = 1 }, -- Valefor's Empty Rune
{ id = 49508, chance = 1, maxCount = 1 }, -- Enhanced Knight Helmet
{ id = 49514, chance = 1, maxCount = 1 }, -- Enhanced Knight Armor
{ id = 49529, chance = 1, maxCount = 1 }, -- Enhanced Knight Legs
{ id = 49536, chance = 1, maxCount = 1 }, -- Enhanced Knight Boots
{ id = 49494, chance = 1, maxCount = 1 }, -- Enhanced Paladin Helmet
{ id = 49495, chance = 1, maxCount = 1 }, -- Enhanced Paladin Armor
{ id = 49496, chance = 1, maxCount = 1 }, -- Enhanced Paladin Legs
{ id = 49497, chance = 1, maxCount = 1 }, -- Enhanced Paladin Boots
{ id = 49510, chance = 1, maxCount = 1 }, -- Enhanced Sorcerer Helmet
{ id = 49515, chance = 1, maxCount = 1 }, -- Enhanced Sorcerer Armor
{ id = 49524, chance = 1, maxCount = 1 }, -- Enhanced Sorcerer Legs
{ id = 49535, chance = 1, maxCount = 1 }, -- Enhanced Sorcerer Boots
{ id = 49534, chance = 1, maxCount = 1 }, -- Enhanced Druid Helmet
{ id = 49520, chance = 1, maxCount = 1 }, -- Enhanced Druid Armor
{ id = 49528, chance = 1, maxCount = 1 }, -- Enhanced Druid Legs
{ id = 49537, chance = 1, maxCount = 1 }, -- Enhanced Druid Boots
{ id = 49645, chance = 1, maxCount = 270 }, -- Extreme Spirit Potion
{ id = 49646, chance = 1, maxCount = 150 }, -- Extreme Mana Potion
{ id = 49647, chance = 1, maxCount = 150 }, -- Extreme Health Potion
{ id = 49679, chance = 1, maxCount = 150 }, -- Divine Mana Potion
{ id = 49542, chance = 1, maxCount = 1 }, -- Unwanted Death Backpack
{ id = 49543, chance = 1, maxCount = 1 }, -- Unwanted Holy Backpack
{ id = 49544, chance = 1, maxCount = 1 }, -- Unwanted Fire Backpack
{ id = 49545, chance = 1, maxCount = 1 }, -- Unwanted Ice Backpack
{ id = 49662, chance = 1, maxCount = 1 }, -- Immortal Paladin Armor
{ id = 49663, chance = 1, maxCount = 1 }, -- Immortal Paladin Legs
{ id = 49664, chance = 1, maxCount = 1 }, -- Immortal Paladin Boots
{ id = 49669, chance = 1, maxCount = 1 }, -- Immortal Sorcerer Helmet
{ id = 49670, chance = 1, maxCount = 1 }, -- Immortal Sorcerer Armor
{ id = 49672, chance = 1, maxCount = 1 }, -- Immortal Sorcerer Boots
{ id = 49665, chance = 1, maxCount = 1 }, -- Immortal Druid Helmet
{ id = 49666, chance = 1, maxCount = 1 }, -- Immortal Druid Armor
{ id = 49667, chance = 1, maxCount = 1 }, -- Immortal Druid Legs
{ id = 49686, chance = 1, maxCount = 1 }, -- Unholy Paladin Boots
{ id = 49691, chance = 1, maxCount = 1 }, -- Unfireing Sorcerer Helmet
{ id = 49692, chance = 1, maxCount = 1 }, -- Unfireing Sorcerer Armor
{ id = 49687, chance = 1, maxCount = 1 }, -- Unfreezing Druid Helmet
{ id = 49688, chance = 1, maxCount = 1 }, -- Unfreezing Druid Armor
{ id = 49689, chance = 1, maxCount = 1 }, -- Unfreezing Druid Legs
{ id = 49659, chance = 1, maxCount = 1 }, -- Immortal Knight Legs
{ id = 49660, chance = 1, maxCount = 1 }, -- Immortal Knight Boots
{ id = 49596, chance = 1, maxCount = 1 }, -- Bag of Enhanceds
{ id = 49592, chance = 1, maxCount = 1 }, -- Bag of Immortals
{ id = 49597, chance = 1, maxCount = 1 }, -- Bag of Protection
{ name = "blue tome", chance = 200 },
	{ name = "teddy bear", chance = 1250 },
	{ id = 3007, chance = 8333}, -- crystal ring
	{ name = "white pearl", chance = 2500, maxCount = 15 },
	{ name = "black pearl", chance = 1111, maxCount = 14 },
	{ name = "small diamond", chance = 2500, maxCount = 5 },
	{ name = "small sapphire", chance = 2500, maxCount = 10 },
	{ name = "small emerald", chance = 2500, maxCount = 10 },
	{ name = "small amethyst", chance = 2500, maxCount = 17 },
	{ name = "talon", chance = 1250, maxCount = 7 },
	{ name = "platinum coin", chance = 100000, maxCount = 69 },
	{ name = "green gem", chance = 2000 },
	{ name = "blue gem", chance = 1428 },
	{ name = "might ring", chance = 1250 },
	{ id = 3049, chance = 1250 }, -- stealth ring
	{ name = "strange symbol", chance = 1111 },
	{ name = "life crystal", chance = 1250 },
	{ name = "mind stone", chance = 2000 },
	{ name = "gold ring", chance = 2000 },
	{ id = 3098, chance = 2000 }, -- ring of healing
	{ name = "twin axe", chance = 1111 },
	{ name = "golden armor", chance = 833 },
	{ name = "magic plate armor", chance = 833 },
	{ name = "demon shield", chance = 1250 },
	{ name = "golden boots", chance = 833 },
	{ name = "demon horn", chance = 3333, maxCount = 2 },
	{ id = 6299, chance = 2500 }, -- death ring
	{ name = "demonic essence", chance = 100000 },
	{ name = "ruthless axe", chance = 1428 },
	{ name = "assassin star", chance = 1250, maxCount = 44 },
	{ name = "havoc blade", chance = 1666 },
	{ name = "ravenwing", chance = 1428 },
	{ name = "great mana potion", chance = 2000 },
	{ name = "great health potion", chance = 2000 },
	{ name = "glacier kilt", chance = 833 },
	{ name = "great spirit potion", chance = 2500 },
	{ name = "ultimate health potion", chance = 2500 },
	{ name = "oceanborn leviathan armor", chance = 1666 },
	{ name = "frozen plate", chance = 833 },
	{ name = "spellbook of warding", chance = 2000 },
	{ name = "spellbook of mind control", chance = 1111 },
	{ name = "spellbook of lost souls", chance = 1666 },
	{ name = "spellscroll of prophecies", chance = 2500 },
	{ name = "spellbook of dark mysteries", chance = 2000 },
	{ name = "platinum coin", chance = 9500, maxCount = 74 },
	{ name = "demonic essence", chance = 9500, maxCount = 5 },
	{ name = "green gem", chance = 5000 },
	{ name = "great mana potion", chance = 4500 },
	{ name = "small amethyst", chance = 3600, maxCount = 18 },
	{ name = "devileye", chance = 3600 },
	{ name = "small emerald", chance = 2700, maxCount = 7 },
	{ name = "small sapphire", chance = 2700, maxCount = 9 },
	{ name = "red tome", chance = 2700 },
	{ name = "ultimate health potion", chance = 2000 },
	{ name = "talon", chance = 2200, maxCount = 7 },
	{ name = "demon horn", chance = 2000, maxCount = 2 },
	{ id = 6299, chance = 2200 }, -- death ring
	{ id = 3098, chance = 2200 }, -- ring of healing
	{ name = "chain bolter", chance = 2200 },
	{ name = "dark lord's cape", chance = 2200 },
	{ name = "ironworker", chance = 2500 },
	{ name = "double axe", chance = 1800 },
	{ name = "great spirit potion", chance = 1000 },
	{ name = "magic plate armor", chance = 1800 },
	{ name = "might ring", chance = 1800 },
	{ name = "mind stone", chance = 1800 },
	{ id = 3049, chance = 1800 }, -- stealth ring
	{ name = "fireborn giant armor", chance = 1800 },
	{ name = "royal crossbow", chance = 1800 },
	{ name = "teddy bear", chance = 1800 },
	{ name = "white pearl", chance = 1300, maxCount = 11 },
	{ name = "black pearl", chance = 1300, maxCount = 13 },
	{ name = "assassin star", chance = 1300, maxCount = 35 },
	{ name = "demonbone", chance = 1300 },
	{ name = "golden mug", chance = 1300 },
	{ name = "Morgaroth's heart", chance = 1300 },
	{ name = "obsidian truncheon", chance = 1300 },
	{ name = "stomper", chance = 1300 },
	{ name = "blue gem", chance = 900 },
	{ name = "gold ring", chance = 900 },
	{ name = "demon shield", chance = 900 },
	{ id = 3051, chance = 900 }, -- energy ring
	{ name = "giant sword", chance = 900 },
	{ name = "golden legs", chance = 900 },
	{ name = "life crystal", chance = 900 },
	{ id = 3046, chance = 900 }, -- magic light wand
	{ name = "orb", chance = 900 },
	{ name = "strange symbol", chance = 900 },
	{ name = "steel boots", chance = 900 },
	{ name = "thunder hammer", chance = 900 },
	{ name = "small diamond", chance = 450, maxCount = 5 },
	{ id = 3007, chance = 450 }, -- crystal ring
	{ name = "fire axe", chance = 450 },
	{ name = "great health potion", chance = 450 },
	{ name = "mastermind shield", chance = 450 },
	{ name = "dragon robe", chance = 450 },
	{ name = "molten plate", chance = 450 },
	{ name = "great shield", chance = 50 },
	{ id = 3043, chance = 10000, maxCount = 6 }, -- crystal coin
	{ id = 16124, chance = 10000, maxCount = 15 }, -- blue crystal splinter
	{ id = 7368, chance = 10000, maxCount = 100 }, -- assassin star
	{ id = 20264, chance = 7000, maxCount = 3 }, -- unrealized dream
	{ id = 6499, chance = 1000, maxCount = 2 }, -- demonic essence
	{ id = 7643, chance = 10000, maxCount = 100 }, -- ultimate health potion
	{ id = 238, chance = 10000, maxCount = 100 }, -- great mana potion
	{ id = 7642, chance = 10000, maxCount = 100 }, -- great spirit potion
	{ id = 20063, chance = 2000, maxCount = 3 }, -- dream matter
	{ id = 20062, chance = 12000, maxCount = 14 }, -- cluster of solace
	{ id = 3041, chance = 10000, maxCount = 2 }, -- blue gem
	{ id = 16122, chance = 10000, maxCount = 10 }, -- green crystal splinter
	{ id = 16120, chance = 10000, maxCount = 15 }, -- violet crystal shard
	{ id = 6528, chance = 600 }, -- infernal bolt
	{ id = 20278, chance = 600 }, -- demonic tapestry
	{ id = 5914, chance = 600 }, -- yellow piece of cloth
	{ id = 5911, chance = 600 }, -- red piece of cloth
	{ id = 20276, chance = 1100 }, -- dream warden mask
	{ id = 281, chance = 600 }, -- giant shimmering pearl (green)
	{ id = 5954, chance = 600 }, -- demon horn
	{ id = 20274, chance = 600, unique = true }, -- nightmare horn
	{ id = 3052, chance = 600 }, -- life ring
	{ id = 20280, chance = 600 }, -- nightmare beacon
	{ id = 20279, chance = 600 }, -- eye pod
	{ id = 20277, chance = 600 }, -- psychedelic tapestry
	{ id = 20064, chance = 800 }, -- crude umbral blade
	{ id = 20067, chance = 1000 }, -- crude umbral slayer
	{ id = 20070, chance = 1000 }, -- crude umbral axe
	{ id = 20073, chance = 1000 }, -- crude umbral chopper
	{ id = 20079, chance = 1000 }, -- crude umbral hammer
	{ id = 20076, chance = 500 }, -- crude umbral mace
	{ id = 20082, chance = 1000 }, -- crude umbral bow
	{ id = 20085, chance = 400 }, -- crude umbral crossbow
	{ id = 20088, chance = 700 }, -- crude umbral spellbook
	{ id = 20065, chance = 100 }, -- umbral blade
	{ id = 20068, chance = 200 }, -- umbral slayer
	{ id = 20071, chance = 1000 }, -- umbral axe
	{ id = 20074, chance = 500 }, -- umbral chopper
	{ id = 20080, chance = 1000 }, -- umbral hammer
	{ id = 20077, chance = 500 }, -- umbral mace
	{ id = 20083, chance = 250 }, -- umbral bow
	{ id = 20086, chance = 400 }, -- umbral crossbow
	{ id = 20089, chance = 200 }, -- umbral spellbook
	{ id = 20066, chance = 300 }, -- umbral masterblade
	{ id = 20069, chance = 700 }, -- umbral master slayer
	{ id = 20072, chance = 500 }, -- umbral master axe
	{ id = 20075, chance = 300 }, -- umbral master chopper
	{ id = 20081, chance = 250 }, -- umbral master hammer
	{ id = 20078, chance = 300 }, -- umbral master mace
	{ id = 20084, chance = 1300 }, -- umbral master bow
	{ id = 20087, chance = 1000 }, -- umbral master crossbow
	{ id = 20090, chance = 140 }, -- umbral master spellbook
	{ id = 10345, chance = 600 }, -- solitude charm
	{ id = 10344, chance = 600 }, -- twin sun charm
	{ id = 10343, chance = 600 }, -- spiritual charm
	{ id = 10342, chance = 600 }, -- unity charm
	{ id = 10341, chance = 600 }, -- phoenix charm
	{ id = 3043, chance = 6000, maxCount = 35 }, -- crystal coin
	{ id = 3035, chance = 1000, maxCount = 69 }, -- Platinum Coin
	{ id = 23373, chance = 4000, maxCount = 100 }, -- Ultimate Mana Potion
	{ id = 7643, chance = 3000, maxCount = 100 }, -- Ultimate Health Potion
	{ id = 23374, chance = 3000, maxCount = 100 }, -- Ultimate Spirit Potion
	{ id = 37810, chance = 10000 }, -- Morshabaal's Extract
	{ id = 33780, chance = 10000 }, -- Watermelon Tourmaline (Pear)
	{ id = 33779, chance = 10000 }, -- Watermelon Tourmaline (Slice)
	{ id = 32625, chance = 4000 }, -- Amber with a Dragonfly
	{ id = 30054, chance = 2000 }, -- Unicorn Figurine
	{ id = 31323, chance = 2000 }, -- Sea Horse Figurine
	{ id = 37611, chance = 1000 }, -- Morshabaal's Mask
	{ id = 30060, chance = 1000 }, -- Giant Emerald
	{ id = 14112, chance = 1000 }, -- Bar of Gold
	{ id = 37613, chance = 666 }, -- Morshabaal's Brain
	{ id = 37608, chance = 666 }, -- Green Demon Armor
	{ id = 37609, chance = 666 }, -- Green Demon Helmet
	{ id = 37607, chance = 666 }, -- Green Demon Legs
	{ id = 37610, chance = 666 }, -- Green Demon Slippers
	{ id = 30053, chance = 666 }, -- Dragon Figurine
	{ id = 3309, chance = 666 }, -- Thunder Hammer
	{ name = "purple tome", chance = 2000 },
	{ name = "golden mug", chance = 1250 },
	{ name = "crystal necklace", chance = 2000 },
	{ name = "white pearl", chance = 3333, maxCount = 15 },
	{ name = "black pearl", chance = 2500, maxCount = 8 },
	{ name = "small diamond", chance = 2000, maxCount = 5 },
	{ name = "small sapphire", chance = 3333, maxCount = 8 },
	{ name = "small emerald", chance = 2500, maxCount = 7 },
	{ name = "small amethyst", chance = 2000, maxCount = 17 },
	{ name = "talon", chance = 2000, maxCount = 3 },
	{ name = "platinum coin", chance = 10000, maxCount = 69 },
	{ name = "green gem", chance = 666 },
	{ name = "blue gem", chance = 2000 },
	{ id = 3046, chance = 6666 }, -- magic light wand
	{ name = "might ring", chance = 666 },
	{ name = "silver amulet", chance = 2000 },
	{ name = "platinum amulet", chance = 1250 },
	{ name = "strange symbol", chance = 2000 },
	{ name = "orb", chance = 666 },
	{ name = "life crystal", chance = 1250 },
	{ name = "mind stone", chance = 2000 },
	{ name = "boots of haste", chance = 1250 },
	{ name = "protection amulet", chance = 2000 },
	{ id = 3098, chance = 3333 }, -- ring of healing
	{ name = "two handed sword", chance = 1250 },
	{ name = "giant sword", chance = 2500 },
	{ name = "silver dagger", chance = 666 },
	{ name = "golden sickle", chance = 666 },
	{ name = "fire axe", chance = 1250 },
	{ name = "dragon hammer", chance = 666 },
	{ name = "devil helmet", chance = 3333 },
	{ name = "golden legs", chance = 1250 },
	{ name = "magic plate armor", chance = 666 },
	{ name = "mastermind shield", chance = 666 },
	{ name = "demon shield", chance = 2500 },
	{ name = "Orshabaal's brain", chance = 666 },
	{ name = "thunder hammer", chance = 666 },
	{ name = "demon horn", chance = 5000 },
	{ id = 6299, chance = 5000 }, -- death ring
	{ name = "demonic essence", chance = 1000 },
	{ name = "assassin star", chance = 1500, maxCount = 42 },
	{ name = "great mana potion", chance = 3333 },
	{ name = "great health potion", chance = 2000 },
	{ name = "great spirit potion", chance = 1200 },
	{ name = "ultimate health potion", chance = 3333 },
	{ name = "gold ingot", chance = 666 },
	{ id = 5903, chance = 1, unique = true }, -- ferumbras' hat
	{ id = 3031, chance = 9800, maxCount = 184 }, -- gold coin
	{ id = 9058, chance = 7500, maxCount = 2 }, -- gold ingot
	{ id = 3422, chance = 2600, unique = true }, -- great shield
	{ id = 8075, chance = 2600 }, -- spellbook of lost souls
	{ id = 3360, chance = 2400 }, -- golden armor
	{ id = 3364, chance = 2200 }, -- golden legs
	{ id = 8074, chance = 2200 }, -- spellbook of mind control
	{ id = 8040, chance = 2200 }, -- velvet mantle
	{ id = 3420, chance = 2000 }, -- demon shield
	{ id = 8057, chance = 2000 }, -- divine plate
	{ id = 821, chance = 2000 }, -- magma legs
	{ id = 3442, chance = 2000 }, -- tempest shield
	{ id = 3010, chance = 1800 }, -- emerald bangle
	{ id = 823, chance = 1800 }, -- glacier kilt
	{ id = 822, chance = 1800 }, -- lightning legs
	{ id = 3439, chance = 1800 }, -- phoenix shield
	{ id = 8090, chance = 1800 }, -- spellbook of dark mysteries
	{ id = 812, chance = 1800 }, -- terra legs
	{ id = 8102, chance = 1600 }, -- emerald sword
	{ id = 7405, chance = 1600 }, -- havoc blade
	{ id = 7451, chance = 1600 }, -- shadow sceptre
	{ id = 3032, chance = 1600, maxCount = 100 }, -- small emerald
	{ id = 281, chance = 1400, maxCount = 5 }, -- giant shimmering pearl (green)
	{ id = 282, chance = 1400, maxCount = 5 }, -- giant shimmering pearl (brown)
	{ id = 3366, chance = 1400 }, -- magic plate armor
	{ id = 3414, chance = 1400 }, -- mastermind shield
	{ id = 7417, chance = 1400 }, -- runed sword
	{ id = 8076, chance = 1400 }, -- spellscroll of prophecies
	{ id = 7427, chance = 1200 }, -- chaos mace
	{ id = 8098, chance = 1200 }, -- demonwing axe
	{ id = 8041, chance = 1200 }, -- greenwood coat
	{ id = 3029, chance = 1200, maxCount = 98 }, -- small sapphire
	{ id = 3026, chance = 1200, maxCount = 88 }, -- white pearl
	{ id = 7407, chance = 1000 }, -- haunted blade
	{ id = 8096, chance = 1000 }, -- hellforged axe
	{ id = 7411, chance = 1000 }, -- ornamented axe
	{ id = 3033, chance = 1000, maxCount = 54 }, -- small amethyst
	{ id = 9057, chance = 1000, maxCount = 87 }, -- small topaz
	{ id = 7382, chance = 800 }, -- demonrage sword
	{ id = 7422, chance = 800 }, -- jade hammer
	{ id = 3035, chance = 800, maxCount = 58 }, -- platinum coin
	{ id = 7423, chance = 800 }, -- skullcrusher
	{ id = 5944, chance = 800, maxCount = 9 }, -- soul orb
}


monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = 3000, maxDamage = 7000 },
{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = 3000, maxDamage = 7000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 100, target = true },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 200, target = false },
{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 250, target = false },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = 3000, maxDamage = 7000, range = 7, radius = 3, shootEffect = 37, effect = 150, target = true },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 175, target = false },
{ name = "combat", interval = 3000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 3000, maxDamage = 7000, length = 7, spread = 0, effect = 90, target = false },
{ name = "combat", interval = 2500, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 3000, maxDamage = 7000, radius = 4, effect = 80, target = true },
{ name = "death chain", interval = 2500, chance = 40, minDamage = 3000, maxDamage = 7000, range = 7 },
{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ICEDAMAGE, minDamage = 3000, maxDamage = 7000, range = 7, radius = 7, shootEffect = CONST_ANI_ICE, effect = 110, target = true },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 160, target = false },
{ name = "combat", interval = 3000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 180, target = false },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = 3000, maxDamage = 7000, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = 140, target = true },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 170, target = false },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = 3000, maxDamage = 7000, length = 8, spread = 0, effect = 130, target = false },
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_MANADRAIN, minDamage = 3000, maxDamage = 7000, range = 7, target = false },

}

monster.defenses = {
	defense = 135,
	armor = 135,
	{ name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 25000, maxDamage = 35000, effect = 234, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
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
