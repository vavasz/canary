local function checkBlood(position)
	local tile = Tile(position)
	local items = tile:getItems()
	for i = 1, #items do
		local item = items[i]
		if not ItemType(item):isMovable() then
			item:remove()
		end
	end
end
local dragonslayerboss = CreatureEvent("dragonslayerboss")
function dragonslayerboss.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
	if creature:getName():lower() == "a complete dragonslayer" then
		creature:say("CURSE YOU BALE! I HEREBY VOW, YOU WILL RUE THIS DAY", TALKTYPE_MONSTER_SAY)
		Game.createMonster("an empowered dragon slayer", creature:getPosition(), true, true)
		Game.createMonster("bale", creature:getPosition(), false, true)
		addEvent(checkBlood, 1, creature:getPosition())
		return true
	elseif creature:getName():lower() == "an empowered dragon slayer" then
		creature:say("ME, and a true Dragon Warrior. Your fears made flesh!", TALKTYPE_MONSTER_SAY)
		Game.createMonster("Igon", creature:getPosition(), true, true)
		addEvent(checkBlood, 1, creature:getPosition())
		return true
	end
	return true
end

dragonslayerboss:register()
