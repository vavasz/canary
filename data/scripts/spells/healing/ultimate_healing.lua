local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 1) + (magicLevel * 15.8) + 230
	local max = (level / 1) + (magicLevel * 23.9) + 350
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Ultimate Healing")
spell:words("exura vita")
spell:group("healing")
spell:vocation("druid;true", "elder druid;true", "sorcerer;true", "master sorcerer;true")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_ULTIMATE_HEALING)
spell:id(3)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:level(30)
spell:mana(160)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
