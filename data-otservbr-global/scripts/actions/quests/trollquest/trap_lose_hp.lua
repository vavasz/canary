local darklosehp = CreatureEvent("darklosehp")

local monsterNames = {
    "complete darkness",
    "complete darknesss",
    "mountain",
    "earth",
}

function darklosehp.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if creature and isMonsterName(creature:getName()) then
        primaryDamage = 1
    end
    return primaryDamage
end

function isMonsterName(name)
    for _, monsterName in ipairs(monsterNames) do
        if name == monsterName then
            return true
        end
    end
    return false
end

darklosehp:register()