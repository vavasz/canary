local immortalmirrorImageTransform = CreatureEvent("ImmortalMirrorImageTransform")

function immortalmirrorImageTransform.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	if attacker and attacker:isPlayer() then
		local newForm = nil
		if attacker:isSorcerer() then
			newForm = "Immortal Sorcerer's Apparition"
		elseif attacker:isDruid() then
			newForm = "Immortal Druid's Apparition"
		elseif attacker:isPaladin() then
			newForm = "Immortal Paladin's Apparition"
		elseif attacker:isKnight() then
			newForm = "Immortal Knight's Apparition"
		end
		if newForm and creature then
			creature:setType(newForm)
		end
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

immortalmirrorImageTransform:register()
