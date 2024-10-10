local mountain = CreatureEvent("mountainlosehp")

local monsterName = "mountain" -- pra garantir que nao vai pegar em outro
function mountain.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if creature and creature:getName() == monsterName then
        primaryDamage = 1
    end
return primaryDamage
end

mountain:register()