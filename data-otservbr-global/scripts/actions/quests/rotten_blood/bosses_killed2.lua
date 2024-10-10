local unbreakablebossesrottenblood = CreatureEvent("unbreakablerottenbloodbossdeath")
function unbreakablebossesrottenblood.onDeath(creature)
	local bossName = creature:getName():lower()
	if not table.contains({ "unbreakable murcion", "unbreakable chagorz", "unbreakable ichgahal", "unbreakable vemiath" }, bossName) then
		return false
	end

	onDeathForDamagingPlayers(creature, function(creature, player)
		local now = os.time()
		local kv = player:kv():scoped("rotten-blood-quest")
		local cooldown = kv:scoped(bossName):get("cooldown") or 0
		if cooldown <= now then
			kv:scoped(bossName):set("cooldown", now + 20 * 60 * 60)
			kv:set("taints", math.min(((kv:get("taints") or 0) + 1), 4))
			logger.info("taints: {}", kv:get("taints"))
		end
	end)

	return true
end

unbreakablebossesrottenblood:register()

-------------- Bakragore OnDeath --------------
local unbreakablebakragoreondeath = CreatureEvent("unbreakablerottenbloodbakragoredeath")
function unbreakablebakragoreondeath.onDeath(creature)
	local bossName = creature:getName():lower()
	if bossName ~= "unbreakable bakragore" then
		return false
	end

	onDeathForDamagingPlayers(creature, function(creature, player)
		local kv = player:kv():scoped("rotten-blood-quest")
		local checkBoss = kv:get(bossName) or false
		if not checkBoss then
			kv:set(bossName, true)
			if not player:hasOutfit("1663") or not player:hasOutfit("1662") then
				player:addOutfitAddon("1663", 1)
				player:addOutfitAddon("1662", 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have won a Decaying Defender Outfit.")
			end
		end
		kv:set("taints", 0)
		logger.info("taints after: {}", kv:get("taints"))
	end)

	return true
end

unbreakablebakragoreondeath:register()
