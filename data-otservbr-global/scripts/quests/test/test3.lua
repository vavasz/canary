local wzbosschange = CreatureEvent("wzbosschange")

local monsterGroups = {
    ["fire"] = {"Widow Queen (mountable)", "Racing Bird (mountable)", "War Bear (mountable)", "Black Sheep (mountable)", "Midnight Panther (mountable)", "Draptor (mountable)", "Titanica (mountable)", "Tin Lizzard (mountable)", "Blazebringer (mountable)", "Rapid Boar (mountable)", "Stampor (mountable)", "Undead Cavebear (mountable)", "Donkey (mountable)", "Tiger Slug (mountable)", "Uniwheel (mountable)", "Crystal Wolf (mountable)", "War Horse (mountable)", "Kingly Deer (mountable)", "Tamed Panda (mountable)", "Dromedary (mountable)", "Gorongra (mountable)", "Noctungra (mountable)", "Silverneck (mountable)", "Slagsnare (mountable)", "Nightstinger (mountable)", "Razorcreep (mountable)", "Nightdweller (mountable)", "Frostflare (mountable)", "Cinderhoof (mountable)", "Mouldpincer (mountable)", "Bloodcurl (mountable)", "Leafscuttler (mountable)", "Sparkion (mountable)", "Swamp Snapper (mountable)", "Mould Shell (mountable)", "Reed Lurker (mountable)", "Ivory Fang (mountable)", "Bright Percht Sleigh (mountable)", "Dark Percht Sleigh (mountable)", "Festive Snowman (mountable)", "Muffled Snowman (mountable)", "Caped Snowman (mountable)", "Rabbit Rickshaw (mountable)", "Bunny Dray (mountable)", "Cony Cart (mountable)", "River Crocovile (mountable)", "Swamp Crocovile (mountable)", "Nightmarish Crocovile (mountable)", "Gryphon (mountable)", "Jousting Eagle (mountable)", "Cerberus Champion (mountable)", "Cold Percht Sleigh Variant (mountable)", "Bright Percht Sleigh Variant (mountable)", "Dark Percht Sleigh Variant (mountable)"},
    ["energy"] = {"Widow Queen (mountable)", "Racing Bird (mountable)", "War Bear (mountable)", "Black Sheep (mountable)", "Midnight Panther (mountable)", "Draptor (mountable)", "Titanica (mountable)", "Tin Lizzard (mountable)", "Blazebringer (mountable)", "Rapid Boar (mountable)", "Stampor (mountable)", "Undead Cavebear (mountable)", "Donkey (mountable)", "Tiger Slug (mountable)", "Uniwheel (mountable)", "Crystal Wolf (mountable)", "War Horse (mountable)", "Kingly Deer (mountable)", "Tamed Panda (mountable)", "Dromedary (mountable)", "Holiday Mammoth (mountable)", "Festive Mammoth (mountable)", "Void Watcher (mountable)", "Rune Watcher (mountable)", "Rift Watcher (mountable)", "Phant (mountable)", "Shellodon (mountable)", "Hyacinth (mountable)", "Peony (mountable)", "Dandelion (mountable)", "Rustwurm (mountable)", "Bogwurm (mountable)", "Gloomwurm (mountable)", "Emerald Raven (mountable)", "Mystic Raven (mountable)", "Radiant Raven (mountable)", "Gloothomotive (mountable)", "Topaz Shrine (mountable)", "Jade Shrine (mountable)"},
    ["earth"] = {"Scorpion King (mountable)", "Rented Horse (mountable)", "Armoured War Horse (mountable)", "Shadow Draptor (mountable)", "Rented Horse (Gray) (mountable)", "Rented Horse (Brown) (mountable)", "Lady Bug (mountable)", "Manta Ray (mountable)", "Ironblight (mountable)", "Magma Crawler (mountable)", "Dragonling (mountable)", "Gnarlhound (mountable)", "Crimson Ray (mountable)", "Steelbeak (mountable)", "Water Buffalo (mountable)", "Tombstinger (mountable)", "Platesaurian (mountable)", "Ursagrodon (mountable)", "The Hellgrip (mountable)", "Noble Lion (mountable)", "Copper Fly (mountable)", "Tundra Rambler (mountable)", "Highland Yak (mountable)", "Glacier Vagabond (mountable)", "Flying Divan (mountable)", "Magic Carpet (mountable)", "Floating Kashmir (mountable)", "Ringtail Waccoon (mountable)", "Night Waccoon (mountable)", "Emerald Waccoon (mountable)", "Glooth Glider (mountable)", "Shadow Hart (mountable)", "Black Stag (mountable)", "Emperor Deer (mountable)", "Flitterkatzen (mountable)", "Venompaw (mountable)", "Batcat (mountable)", "Sea Devil (mountable)", "Coralripper (mountable)", "Plumfish (mountable)", "Jackalope (mountable)", "Dreadhare (mountable)", "Wolpertinger (mountable)", "Stone Rhino (mountable)", "Gold Sphinx (mountable)", "Emerald Sphinx (mountable)", "Shadow Sphinx (mountable)", "Jungle Saurian (mountable)", "Ember Saurian (mountable)", "Lagoon Saurian (mountable)", "Blazing Unicorn (mountable)", "Arctic Unicorn (mountable)", "Prismatic Unicorn (mountable)", "Cranium Spider (mountable)", "Cave Tarantula (mountable)", "Gloom Widow (mountable)", "Mole (mountable)", "Marsh Toad (mountable)", "Sanguine Frog (mountable)", "Toxic Toad (mountable)"},
    ["ice"] = {"Desert King (mountable)", "Shock Head (mountable)", "Walker (mountable)", "Azudocus (mountable)", "Carpacosaurus (mountable)", "Death Crawler (mountable)", "Flamesteed (mountable)", "Jade Lion (mountable)", "Jade Pincer (mountable)", "Nethersteed (mountable)", "Tempest (mountable)", "Winter King (mountable)", "Doombringer (mountable)", "Woodland Prince (mountable)", "Hailstorm Fury (mountable)", "Siegebreaker (mountable)", "Poisonbane (mountable)", "Blackpelt (mountable)", "Golden Dragonfly (mountable)", "Steel Bee (mountable)", "Battle Badger (mountable)", "Ether Badger (mountable)", "Zaoan Badger (mountable)", "Blue Rolling Barrel (mountable)", "Red Rolling Barrel (mountable)", "Green Rolling Barrel (mountable)", "Floating Sage (mountable)", "Floating Scholar (mountable)", "Floating Augur (mountable)", "Haze (mountable)", "Antelope (mountable)", "Snow Strider (mountable)", "Dusk Pryer (mountable)", "Dawn Strayer (mountable)", "Phantasmal Jade (mountable)", "Savanna Ostrich (mountable)", "Coral Rhea (mountable)", "Eventide Nandu (mountable)", "Voracious Hyaena (mountable)", "Cunning Hyaena (mountable)"}
}

function getRandomMonsters(monsterList)
    local selectedMonsters = {}
    for i = 1, 5 do
        local randomIndex = math.random(1, #monsterList)
        table.insert(selectedMonsters, monsterList[randomIndex])
        table.remove(monsterList, randomIndex)
    end
    return selectedMonsters
end

function wzbosschange.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    local bossName = creature:getName():lower()
    local monsterType

    if bossName == "master of fire" then
        monsterType = "fire"
    elseif bossName == "master of energy" then
        monsterType = "energy"
    elseif bossName == "master of earth" then
        monsterType = "earth"
    elseif bossName == "master of ice" then
        monsterType = "ice"
    else
        return true
    end


    local monstersToSpawn = getRandomMonsters(monsterGroups[monsterType])

    for _, monsterName in ipairs(monstersToSpawn) do
    end

    for _, monsterName in ipairs(monstersToSpawn) do
        Game.createMonster(monsterName, creature:getPosition(), true, true)
    end

    local weakenedBossName = "Weakened " .. creature:getName()
    Game.createMonster(weakenedBossName, creature:getPosition(), true, true)
    return true
end

function onInit()
    wzbosschange:register()
end

onInit()
