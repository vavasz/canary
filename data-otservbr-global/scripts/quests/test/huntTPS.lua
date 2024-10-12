local StorageForPositions = {
    fx = 750101,
    fy = 750102,
    fz = 750103,
    tx = 750104,
    ty = 750105,
    tz = 750106,
}


local function huntTimeOut(playerGuid)
    local player = Player(playerGuid)
    if not player then 
        return true 
    end
    local fx, fy, fz = player:getStorageValue(StorageForPositions.fx), player:getStorageValue(StorageForPositions.fy), player:getStorageValue(StorageForPositions.fz)
    local tx, ty, tz = player:getStorageValue(StorageForPositions.tx), player:getStorageValue(StorageForPositions.ty), player:getStorageValue(StorageForPositions.tz)
    local playerPos = player:getPosition()
    if not player then 
        return true 
    end
    
    if playerPos.x >= fx and playerPos.x <= tx then
        if playerPos.y >= fy and playerPos.y <= ty then
            if playerPos.z >= fz and playerPos.z <= tz then
            return player:teleportTo(player:getTown():getTemplePosition())
            end
        end
    end
end

------------------------------------------------------------------------------------------------------------------

local function playerSetPositionStorages(playerGuid, fromPos, toPos)
    local player = Player(playerGuid)

    player:setStorageValue(StorageForPositions.fx, fromPos.x)
    player:setStorageValue(StorageForPositions.fy, fromPos.y)
    player:setStorageValue(StorageForPositions.fz, fromPos.z)
    player:setStorageValue(StorageForPositions.tx, toPos.x)
    player:setStorageValue(StorageForPositions.ty, toPos.y)
    player:setStorageValue(StorageForPositions.tz, toPos.z)
return true
end

-------------------------------------------------------------------------------------------------------------
local function resetDay(table, playerGuid)
    local player = Player(playerGuid)
    for _, huntTable in pairs(table.hunts) do
        for _, each in pairs(huntTable.instances) do
                if (getGlobalStorage(each.storage) - (table.time * 60)) < GetDailyRewardLastServerSave() then
                    setGlobalStorage(each.storage, 0)
                end
        end
    end



    return true
end



---------------------------------------------------------------------------------------------------------------

local hunt = {
    itemId = 49562,
    roomPosition = Position(141, 449, 14),
    
    storage = 620500, -- essa � pra bloquear de entrar em outras hunts
    time = 1,

    hunts = {
        fire =    {
                    name = "Fire",
                    tpPosition = Position(141, 459, 14),
                    elementStorage = 620100,
                    instances = {
                        {storage = 620101, huntPosition = Position(529, 111, 14), fromPos = Position(423, 99, 14), toPos = Position(541, 215, 14)},
                        {storage = 620102, huntPosition = Position(652, 111, 14), fromPos = Position(546, 99, 14), toPos = Position(663, 215, 14)},
                        {storage = 620103, huntPosition = Position(775, 111, 14), fromPos = Position(669, 99, 14), toPos = Position(786, 215, 14)},
                        {storage = 620104, huntPosition = Position(897, 111, 14), fromPos = Position(791, 99, 14), toPos = Position(909, 215, 14)},
                    },
                },

        ice =    {
                    name = "Ice",
                    tpPosition = Position(130, 449, 14),
                    elementStorage = 620200,
                    instances = {
                        {storage = 620201, huntPosition = Position(438, 234, 14), fromPos = Position(424, 219, 14), toPos = Position(541, 334, 14)},
                        {storage = 620202, huntPosition = Position(560, 234, 14), fromPos = Position(546, 219, 14), toPos = Position(663, 334, 14)},
                        {storage = 620203, huntPosition = Position(684, 234, 14), fromPos = Position(670, 219, 14), toPos = Position(787, 334, 14)},
                        {storage = 620204, huntPosition = Position(807, 234, 14), fromPos = Position(793, 219, 14), toPos = Position(910, 334, 14)},
                    },
                },
        earth =    {
                    name = "Earth",
                    tpPosition = Position(152, 449, 14),
                    elementStorage = 620300,
                    instances = {
                        {storage = 620301, huntPosition = Position(479, 444, 14), fromPos = Position(424, 337, 14), toPos = Position(541, 452, 14)},
                        {storage = 620302, huntPosition = Position(601, 444, 14), fromPos = Position(546, 337, 14), toPos = Position(663, 452, 14)},
                        {storage = 620303, huntPosition = Position(725, 444, 14), fromPos = Position(670, 337, 14), toPos = Position(787, 452, 14)},
                        {storage = 620304, huntPosition = Position(848, 444, 14), fromPos = Position(793, 337, 14), toPos = Position(910, 452, 14)},
                    },
                },

        energy =    {
                    name = "Energy",
                    tpPosition = Position(141, 439, 14),
                    elementStorage = 620400,
                    instances = {
                        {storage = 620401, huntPosition = Position(887, 547, 14), fromPos = Position(419, 457, 14), toPos = Position(542, 573, 14)},
                        {storage = 620402, huntPosition = Position(763, 547, 14), fromPos = Position(543, 457, 14), toPos = Position(667, 573, 14)},
                        {storage = 620403, huntPosition = Position(639, 547, 14), fromPos = Position(667, 457, 14), toPos = Position(790, 573, 14)},
                        {storage = 620404, huntPosition = Position(515, 547, 14), fromPos = Position(793, 457, 14), toPos = Position(914, 573, 14)},
                    },
                },

},
 
}




local huntItem = Action()

    function huntItem.onUse(player, item, fromPosition, toPosition)
        local lastSave = GetDailyRewardLastServerSave()
        local mtime = os.time()

            if not Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
                return player:sendCancelMessage("Voce precisa estar em pz!")
            end

            if player:getExhaustion("antiEstressExhaust") > 0 then
                return player:sendCancelMessage("Voce pode tentar de novo em "..player:getExhaustion("antiEstressExhaust")..".")
            end

                if player:getStorageValue(hunt.storage) > lastSave and player:getStorageValue(hunt.storage) < mtime then
                    player:sendCancelMessage("Voce deve esperar ate o proximo dia.")
                else 
                    player:teleportTo(hunt.roomPosition)
                end
    
            player:setExhaustion("antiEstressExhaust", 15)
            -- descomenta a linha de cima pra adicionar exhaust no item quando usa pra n ficar teleportando direto, 15 segundos ta ali
        return true
    end

huntItem:id(hunt.itemId)
huntItem:register()



local huntTp = MoveEvent()

    function huntTp.onStepIn(creature, item, position, fromPosition, toPosition)
        local player = creature:getPlayer()
        local lastSave = GetDailyRewardLastServerSave()
        local mtime = os.time()
        

        if not player then
            return true
        end
        
        local guid = player:getGuid()
         resetDay(hunt, guid)


        for _, data in pairs(hunt.hunts) do
            if player:getPosition() == data.tpPosition then
                if player:getStorageValue(hunt.storage) > lastSave and player:getStorageValue(hunt.storage) < mtime then
                    player:sendCancelMessage("Voce deve esperar ate o proximo dia.")
                    player:teleportTo(fromPosition, true)
                    return true
                elseif  player:getStorageValue(data.elementStorage) > mtime then
                    for _, each in pairs(data.instances) do
                        if player:getStorageValue(each.storage) > mtime then
                            player:teleportTo(each.huntPosition)
                            playerSetPositionStorages(guid, each.fromPos, each.toPos)
                            addEvent(huntTimeOut, (player:getStorageValue(each.storage) - os.time()) * 1000, guid)
                        return true
                        end
                    end
                elseif player:getStorageValue(hunt.storage) > mtime and player:getStorageValue(data.elementStorage) < mtime then
                    for _, which in pairs(hunt.hunts) do
                        if player:getStorageValue(which.elementStorage) > mtime then
                            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce ja escolheu a hunt de "..which.name..".")
                            player:teleportTo(fromPosition, true)
                        end
                    end
                else
                    for _, each in pairs(data.instances) do
                        if getGlobalStorage(each.storage) < mtime then
                            if player:removeItem(hunt.itemId, 1) then
                                player:teleportTo(each.huntPosition)
                                player:setStorageValue(each.storage, os.time() + (hunt.time * 60))
                                player:setStorageValue(data.elementStorage, os.time() + (hunt.time * 60))
                                player:setStorageValue(hunt.storage, os.time() + (hunt.time * 60))
                                setGlobalStorage(each.storage, os.time() + (hunt.time * 60))
                                playerSetPositionStorages(guid, each.fromPos, each.toPos)
                                addEvent(huntTimeOut, hunt.time * 60000, guid)
                                return true
                            else
                                player:sendCancelMessage("Voce nao tem o item necessario")
                                player:teleportTo(fromPosition)
                                return true
                            end
                        elseif getGlobalStorage(each.storage) > mtime and _ == (#data.instances) then 
                                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As hunts de "..data.name.." estao todas ocupadas.")
                                player:teleportTo(fromPosition)
                                return true
                        end
                    end
                end

            end
        end

    return true
    end
    

    for _, data in pairs(hunt.hunts) do
    huntTp:position(data.tpPosition)
    end


huntTp:type("stepin")
huntTp:register()

---------------------------------------------------------

local huntChangeDay = CreatureEvent("resetHuntDay")

function huntChangeDay.onLogin(player)
        if player:getLastLoginSaved() < GetDailyRewardLastServerSave() then
                player:setStorageValue(hunt.storage, 0)
                    for _, hunts in pairs(hunt.hunts) do
                        player:setStorageValue(hunts.elementStorage, 0)
                        player:setStorageValue(hunt.storage, 0)
                        for _, each in pairs(hunts.instances) do
                            player:setStorageValue(each.storage, 0)
                        end
                    end
            return true
        end
    return true
end

huntChangeDay:register()

-- registra no login.lua essa creaturescript