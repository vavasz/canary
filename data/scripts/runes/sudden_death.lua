local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 2.5) + (maglevel * 12.605) + 28
	local max = (level / 2.5) + (maglevel * 21.395) + 46
	local voc = player:getVocation():getBaseId()

if voc < 3 then 
return -min*3.2, -max*3.2
else
return -min, -max
end 
	end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	return combat:execute(creature, var)
end

rune:id(21)
rune:group("attack")
rune:name("sudden death rune")
rune:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
rune:impactSound(SOUND_EFFECT_TYPE_SPELL_SUDDENDEATH_RUNE)
rune:runeId(3155)
rune:allowFarUse(true)
rune:charges(3)
rune:level(45)
rune:magicLevel(15)
rune:cooldown(2 * 1000)
rune:groupCooldown(1 * 1000)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
