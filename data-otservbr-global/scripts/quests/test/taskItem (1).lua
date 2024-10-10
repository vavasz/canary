
-------------------------- INICIO - FUNCTIONS DE KICK PLAYER -------------------------------

local StorageForPositions = {
    fx = 750111,
    fy = 750112,
    fz = 750113,
    tx = 750114,
    ty = 750115,
    tz = 750116,
}


local function huntTimeOut(playerGuid)
    local player = Player(playerGuid)
    if not player then return end
    local fx, fy, fz = player:getStorageValue(StorageForPositions.fx), player:getStorageValue(StorageForPositions.fy), player:getStorageValue(StorageForPositions.fz)
    local tx, ty, tz = player:getStorageValue(StorageForPositions.tx), player:getStorageValue(StorageForPositions.ty), player:getStorageValue(StorageForPositions.tz)
    local playerPos = player:getPosition()
    
    if playerPos.x >= fx and playerPos.x <= tx then
        if playerPos.y >= fy and playerPos.y <= ty then
            if playerPos.z >= fz and playerPos.z <= tz then
            return player:teleportTo(player:getTown():getTemplePosition())
            end
        end
    end
end

local function isInArea(playerGuid)
    local player = Player(playerGuid)
    if not player then return end
    local fx, fy, fz = player:getStorageValue(StorageForPositions.fx), player:getStorageValue(StorageForPositions.fy), player:getStorageValue(StorageForPositions.fz)
    local tx, ty, tz = player:getStorageValue(StorageForPositions.tx), player:getStorageValue(StorageForPositions.ty), player:getStorageValue(StorageForPositions.tz)
    local playerPos = player:getPosition()
    
    if playerPos.x >= fx and playerPos.x <= tx then
        if playerPos.y >= fy and playerPos.y <= ty then
            if playerPos.z >= fz and playerPos.z <= tz then
            return true
            end
        end
    end
end

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

-------------------------- FIM - FUNCTIONS DE KICK PLAYER -------------------------------
local function getCorrectTime(total)
local horas = math.floor(total / 3600)
local minutos = math.floor((total - (horas * 3600)) / 60)
local segundos = math.floor(total % 60)
if horas < 10 then horas = "0"..horas.."" end
if minutos < 10 then minutos = "0"..minutos.."" end
if segundos < 10 then segundos = "0"..segundos.."" end
local time = "".. horas ..":" .. minutos .. ":" .. segundos .. ""
return time
end

-------------------------- INICIO - CONFIGURACOES DAS TASKS ------------------------------

local c = {
    itemId = 3115, -- item que teleporta pra sala
    roomPosition = Position(227, 449, 14), -- pra onde vai quando usa o item
   -------------------------------------------------------------------------------------------------
    SExhaust = 250001, -- ... muda ai
    time = 60, -- tempo pra ficar la dentro em minutos
    exhaust = 12 * 60,
    toKill = 200,
    tasks = {
        {   
            taskExhaust = 250002,
            teleportPosition = Position(216, 449, 14),
            taskPosition = Position(131, 504, 14), -- pra onde vai quando pisa no tp
            fromPos = Position(91, 490, 14), -- topo esquerdo da area
            toPos = Position(142, 680, 14), -- inferior direito da area, pega TODOS SQMS POSSIVEIS DO PLAYER ESTAR}
            message = "Que comecem os jogos",
            monstersToKill = {"instanced swamp overloading", "instanced nature overloading"},
            waitBossRoom = Position(119, 617, 14),
            teleportToBossWaitRoom = Position(107, 589, 14),
        },

        {   
            taskExhaust = 250003,
            teleportPosition = Position(227, 459, 14),
            taskPosition = Position(161, 503, 14), -- pra onde vai quando pisa no tp
            fromPos = Position(146, 491, 14), -- topo esquerdo da area
            toPos = Position(189, 680, 14), -- inferior direito da area, pega TODOS SQMS POSSIVEIS DO PLAYER ESTAR}
            message = "Que comecem os jogos",
            monstersToKill = {"instanced storm overloading", "instanced tempest overloading"},
            waitBossRoom = Position(169, 617, 14),
            teleportToBossWaitRoom = Position(163, 605, 14),
        },
        {   
            taskExhaust = 250004,
            teleportPosition = Position(222, 501, 14),
            taskPosition = Position(10265, 10226, 7), -- pra onde vai quando pisa no tp
            fromPos = Position(194, 492, 14), -- topo esquerdo da area
            toPos = Position(234, 680, 14), -- inferior direito da area, pega TODOS SQMS POSSIVEIS DO PLAYER ESTAR}
            message = "Que comecem os jogos",
            monstersToKill = {"instanced ice overloading", "instanced avalanche overloading"},
            waitBossRoom = Position(212, 617, 14),
            teleportToBossWaitRoom = Position(210, 602, 14),
        },

        {   
            taskExhaust = 250005,
            teleportPosition = Position(),
            taskPosition = Position(273, 500, 14), -- pra onde vai quando pisa no tp
            fromPos = Position(238, 491, 14), -- topo esquerdo da area
            toPos = Position(288, 681, 14), -- inferior direito da area, pega TODOS SQMS POSSIVEIS DO PLAYER ESTAR}
            message = "Que comecem os jogos",
            monstersToKill = {"instanced fire overloading", "instanced lava overloading"},
            waitBossRoom = Position(261, 616, 14),
            teleportToBossWaitRoom = Position(262, 601, 14),
        },

            },
------------------------------------------------------------------------------------------------------------
    chests = {
            [62001] = {itemId = 49700, count = 1, actionId = 62001},
            },
}
-------------------------- FIM - CONFIGURACOES DAS TASKS ------------------------------


-------------------------- INICIO - FUNCTION TASK ON USE TELEPORT TO CHOOSE ROOM ------------------------------

local taskItem = Action()

    function taskItem.onUse(player, item, fromPosition, toPosition)
        local mtime = os.time()
            if not Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
                return player:sendCancelMessage("Voce precisa estar em pz!")
            end

            player:teleportTo(c.roomPosition)
        return true
    end

taskItem:id(c.itemId)
taskItem:register()


-------------------------- FIM - FUNCTION TASK ON USE TELEPORT TO CHOOSE ROOM ------------------------------

local registerDeaths = CreatureEvent("registerTasksDeaths")
    function registerDeaths.onDeath(creature)

        onDeathForDamagingPlayers(creature, function(creature, player)
            local playerkv = player:kv()
            local mtime = os.time()
            if player:getStorageValue(c.SExhaust) < mtime then
                return true
            end
    
            if isInArea(player:getGuid()) then
                playerkv:set("killedMonstersTask", playerkv:get("killedMonstersTask") + 1)
                if playerkv:get("killedMonstersTask") <= c.toKill then
                player:sendTextMessage(MESSAGE_TRADE, "voce matou "..playerkv:get("killedMonstersTask").. " de "..c.toKill)
                end
            end
            return true
        end)

        
return true
end

registerDeaths:register()

-------------------------- INICIO - FUNCTION TASK TELEPORT TO TASK-ROOM ------------------------------


local taskTp = MoveEvent()

    function taskTp.onStepIn(creature, item, position, fromPosition, toPosition)
        local player = creature:getPlayer()
        local mtime = os.time()
        local guid = player:getGuid()

        if not player then
            return true
        end
        for _, eachTask in pairs(c.tasks) do
            if player:getPosition() == eachTask.teleportPosition then
                if player:getStorageValue(c.SExhaust) >= mtime and player:getStorageValue(eachTask.taskExhaust) <= mtime then
                    player:sendCancelMessage("Voce deve esperar "..getCorrectTime(player:getStorageValue(c.SExhaust) - mtime).." at� poder escolher novamente.")
                    player:teleportTo(fromPosition, true)
                elseif player:getStorageValue(eachTask.taskExhaust) > mtime then
                    player:teleportTo(eachTask.taskPosition)
                    addEvent(huntTimeOut, (player:getStorageValue(eachTask.taskExhaust) - os.time()) * 1000, player:getGuid())
                else
                    player:teleportTo(eachTask.taskPosition)
                    player:setStorageValue(c.SExhaust, os.time() + (c.exhaust * 60))
                    player:setStorageValue(eachTask.taskExhaust, os.time() + (c.time * 60))
                    player:kv():set("killedMonstersTask", 0)
                    playerSetPositionStorages(guid, eachTask.fromPos, eachTask.toPos)
                    addEvent(huntTimeOut, c.time * 60000, player:getGuid())
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, eachTask.message)
                end
            end
        end



    return true
    end
    
for _, eachTask in pairs(c.tasks) do
taskTp:position(eachTask.teleportPosition)
end
taskTp:type("stepin")
taskTp:register()




-------------------------- FIM - FUNCTION TASK TELEPORT TO TASK-ROOM ------------------------------

-------------------------- INICIO - FUNCTION BAU -----------------

local bausTask = Action()

function bausTask.onUse(player, item, position, fromPosition, toPosition)
    local playerkv = player:kv()
    local actionId = item:getAttribute(ITEM_ATTRIBUTE_ACTIONID)
    
    if player:getExhaustion("taskChestsEx") > 0 then
        return player:sendCancelMessage("Voce deve esperar ".. getCorrectTime(player:getExhaustion("taskChestsEx")) .." para resgatar novamente.")
    end

    if playerkv:get("killedMonstersTask") < c.toKill then
        return player:sendCancelMessage("voce so matou "..playerkv:get("killedMonstersTask").." dos "..c.toKill.." necessarios.")
    end


    if c.chests[actionId] then
        local reward = c.chests[actionId].itemId
        local count = c.chests[actionId].count
    player:setExhaustion("taskChestsEx", c.exhaust * 60)
    player:addItem(reward, count)
    end
return true
end

for _, eachChest in pairs(c.chests) do
    bausTask:aid(eachChest.actionId)
end

bausTask:register()

--------------------------------------------------------------------------------------------------------------

local starttask = GlobalEvent("starttask")
function starttask.onStartup()
	for _, data in pairs(c.tasks) do
        for _, monster in pairs(data.monstersToKill)do
            local mType = MonsterType(monster)
            if not mType then
                logger.error("[starttask] monster with name {} is not a valid MonsterType", monster)
            else
                mType:registerEvent("registerTasksDeaths")
            end
        end
	end
end
starttask:register()

-------------------------------------------------------------------------------------

local toBoss = MoveEvent()

    function toBoss.onStepIn(creature, item, position, fromPosition, toPosition)
        local player = creature:getPlayer()
        local playerkv = player:kv()
        local mtime = os.time()
        local guid = player:getGuid()

        if not player then
            return true
        end
        for _, eachTask in pairs(c.tasks) do
            if player:getPosition() == eachTask.teleportToBossWaitRoom then
                if playerkv:get("killedMonstersTask") < c.toKill then
                    player:sendCancelMessage("voce so matou "..playerkv:get("killedMonstersTask").." dos "..c.toKill.." necessarios.")
                    player:teleportTo(fromPosition, true)
                    return true
                elseif player:getExhaustion("tasksBossExhaustion") > 0 then
                    player:sendCancelMessage("Voce deve esperar ".. getCorrectTime(player:getExhaustion("tasksBossExhaustion")) .." para entrar novamente.")
                else
                    player:teleportTo(eachTask.waitBossRoom)
                    player:setExhaustion("tasksBossExhaustion", c.exhaust * 60)
                    return true
                end
            end
        end



    return true
    end
    
for _, eachTask in pairs(c.tasks) do
toBoss:position(eachTask.teleportToBossWaitRoom)
end
toBoss:type("stepin")
toBoss:register()
