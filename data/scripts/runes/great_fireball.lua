local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 2.5) + (maglevel * 9.2) + 7
	local max = (level / 2.5) + (maglevel * 17.8) + 17
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

rune:id(16)
rune:group("attack")
rune:name("great fireball rune")
rune:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
rune:impactSound(SOUND_EFFECT_TYPE_SPELL_GREAT_FIREBALL_RUNE)
rune:runeId(3191)
rune:allowFarUse(true)
rune:charges(4)
rune:level(30)
rune:magicLevel(4)
rune:cooldown(2 * 1000)
rune:groupCooldown(1 * 1000)
rune:isBlocking(false) -- True = Solid / False = Creature
rune:register()
