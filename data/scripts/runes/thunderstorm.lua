local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 2.5) + (magicLevel * 9.2) + 7
	local max = (level / 2.5) + (magicLevel * 17.8) + 17
	local voc = player:getVocation():getBaseId()

if voc < 3 then 
return -min*2.2, -max*2.2
else
return -min, -max
end 
	end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	return combat:execute(creature, var)
end

rune:id(117)
rune:group("attack")
rune:name("thunderstorm rune")
rune:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
rune:impactSound(SOUND_EFFECT_TYPE_SPELL_THUNDERSTORM_RUNE)
rune:runeId(3202)
rune:allowFarUse(true)
rune:charges(4)
rune:level(28)
rune:magicLevel(4)
rune:cooldown(2 * 1000)
rune:groupCooldown(1 * 1000)
rune:isBlocking(false) -- True = Solid / False = Creature
rune:register()
