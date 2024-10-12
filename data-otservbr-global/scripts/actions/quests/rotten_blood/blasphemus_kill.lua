local c = {
secondTp = Position(1172, 301, 6), -- where the teleport that needs access sends the player
message = "Voce matou o boss! Escolha UM atalho para hunts! Para ter todos os atalhos, mate o boss mais vezes." -- message if player dont have access
}


-------------- Bakragore OnDeath --------------
local blasdead = CreatureEvent("finallydead")
function blasdead.onDeath(creature)
	local bossName = creature:getName():lower()
	if bossName ~= "blasphemus" then
		return false
	end

	onDeathForDamagingPlayers(creature, function(creature, player)
		local kv = player:kv():scoped("boss-access-quest")
		local checkBoss = kv:get(bossName) or false
		if not checkBoss then
		kv:set(bossName, true)
			  player:teleportTo(c.secondTp)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		end
	end)

	return true
end

blasdead:register()
