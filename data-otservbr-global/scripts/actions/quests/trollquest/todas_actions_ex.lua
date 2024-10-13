local config = {
	boss = {
		name = "atal da ex",
		position = Position(532, 1241, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(537, 1286, 0), teleport = Position(527, 1244, 0) },
		{ pos = Position(536, 1286, 0), teleport = Position(527, 1244, 0) },
		{ pos = Position(535, 1286, 0), teleport = Position(527, 1244, 0) },
		{ pos = Position(534, 1286, 0), teleport = Position(527, 1244, 0) },
		{ pos = Position(533, 1286, 0), teleport = Position(527, 1244, 0) },
	},
	specPos = {
		from = Position(521, 1232, 0),
		to = Position(541, 1249, 0),
	},
	exit = Position(534, 1284, 0),
	exitTeleporter = Position(532, 1249, 0),
}


local lever = BossLever(config)
lever:position(Position(538, 1286, 0))
lever:register()

--

config = {
	boss = {
		name = "psiquiatra farmer",
		position = Position(552, 1241, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(562, 1269, 0), teleport = Position(549, 1245, 0) },
		{ pos = Position(561, 1269, 0), teleport = Position(549, 1245, 0) },
		{ pos = Position(560, 1269, 0), teleport = Position(549, 1245, 0) },
		{ pos = Position(559, 1269, 0), teleport = Position(549, 1245, 0) },
		{ pos = Position(558, 1269, 0), teleport = Position(549, 1245, 0) },
	},
	specPos = {
		from = Position(543, 1232, 0),
		to = Position(561, 1251, 0),
	},
	exit = Position(558, 1272, 0),
	exitTeleporter = Position(544, 1241, 0),
}


lever = BossLever(config)
lever:position(Position(563, 1269, 0))
lever:register()

config = {
	boss = {
		name = "vavasz",
		position = Position(572, 1241, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(562, 1304, 0), teleport = Position(569, 1245, 0) },
		{ pos = Position(561, 1304, 0), teleport = Position(569, 1245, 0) },
		{ pos = Position(560, 1304, 0), teleport = Position(569, 1245, 0) },
		{ pos = Position(559, 1304, 0), teleport = Position(569, 1245, 0) },
		{ pos = Position(558, 1304, 0), teleport = Position(569, 1245, 0) },
	},
	specPos = {
		from = Position(563, 1232, 0),
		to = Position(581, 1250, 0),
	},
	exit = Position(559, 1302, 0),
	exitTeleporter = Position(572, 1233, 0),
}


lever = BossLever(config)
lever:position(Position(563, 1304, 0))
lever:register()


config = {
	boss = {
		name = "ademiro",
		position = Position(592, 1241, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(609, 1286, 1), teleport = Position(589, 1245, 0) },
		{ pos = Position(608, 1286, 1), teleport = Position(589, 1245, 0) },
		{ pos = Position(607, 1286, 1), teleport = Position(589, 1245, 0) },
		{ pos = Position(606, 1286, 1), teleport = Position(589, 1245, 0) },
		{ pos = Position(605, 1286, 1), teleport = Position(589, 1245, 0) },
	},
	specPos = {
		from = Position(583, 1232, 0),
		to = Position(601, 1252, 0),
	},
	exit = Position(606, 1283, 1),
	exitTeleporter = Position(600, 1241, 0),
}


lever = BossLever(config)
lever:position(Position(610, 1286, 1))
lever:register()


----- levers ------

local acessopiso = Action()

local c = {
    [58001] = {
            tilePos = {Position(540, 1281, 0), Position(540, 1293, 0)},
            stoneId = 1842,
            time = 30 -- tempo pra voltar ao normal em segundos
        },
    [58002] = {
            tilePos = {Position(565, 1276, 0), Position(554, 1276, 0)},
            stoneId = 1842,
            time = 30 -- tempo pra voltar ao normal em segundos
        },
[58003] = {
            tilePos = {Position(553, 1298, 0), Position(565, 1298, 0)},
            stoneId = 1842,
            time = 30 -- tempo pra voltar ao normal em segundos
        },
}


function acessopiso.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local aid = item:getAttribute(ITEM_ATTRIBUTE_ACTIONID)
        
        for i = 1, #c[aid].tilePos do
                local position = Tile(c[aid].tilePos[i])
                local stone = position:getItemById(c[aid].stoneId)
                if not stone then
                    return
                end
                
                        Position(c[aid].tilePos[i]):sendMagicEffect(CONST_ME_POFF)
                        stone:remove(1)
                        
                        addEvent(
                                function()
                                    Position(c[aid].tilePos[i]):sendMagicEffect(CONST_ME_POFF)
                                    Game.createItem(c[aid].stoneId, 1, c[aid].tilePos[i])
                                end
                        , c[aid].time * 1000)
        end
		player:say("Voce escuta um leve click, em algum lugar por ai. Corra", TALKTYPE_MONSTER_SAY)

    return true
end

acessopiso:aid(58001, 58002, 58003)
acessopiso:register()

--

local leverescada = Action()

local c = {
tilePos = Position(533, 1309, 0), -- posicao de onde vai criar
tileId = 12746, -- id do tile antigo pra voltar ao normal
newId = 34255, -- id do que vai se transformar
time = 90 -- tempo pra voltar ao normal em segundos
}


function leverescada.onUse(player, item, fromPosition, target, toPosition, isHotkey)
if item.itemid == 2772 then
local tile = Game.createItem(c.newId, 1, c.tilePos)
item:transform(2773)
player:say("Voce escuta um leve click, em algum lugar por ai. Corra", TALKTYPE_MONSTER_SAY)
addEvent(function()
tile:remove(1)
Game.createItem(c.tileId, 1, c.tilePos)
item:transform(2772)
end
, c.time * 1000)
end
return true
end

leverescada:uid(58077)
leverescada:register()



----- troll retorno -----
local teleports = {
    {from = Position(348, 1225, 0), toPos = Position(402, 1275, 0)},
    {from = Position(452, 1224, 0), toPos = Position(402, 1275, 0)},
    {from = Position(548, 1286, 0), toPos = Position(496, 1272, 0)},
    {from = Position(457, 1272, 0), toPos = Position(402, 1275, 0)},
    {from = Position(346, 1272, 0), toPos = Position(402, 1275, 0)},
    {from = Position(512, 1288, 0), toPos = Position(496, 1272, 0)},
    {from = Position(535, 1300, 1), toPos = Position(496, 1272, 0)},
    {from = Position(554, 1287, 0), toPos = Position(496, 1272, 0)},
    {from = Position(548, 1280, 0), toPos = Position(496, 1272, 0)},
}

local teleportPlayers = MoveEvent()

function teleportPlayers.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return
    end

    for _, teleporting in ipairs(teleports) do
        if position == teleporting.from then
            player:teleportTo(teleporting.toPos)
            player:say("EROOOOOOOOOOU, volta tudo. KKKKKKKK", TALKTYPE_MONSTER_SAY)
        end
    end
end

for _, teleport in ipairs(teleports) do
    teleportPlayers:position(teleport.from)
end

teleportPlayers:type("stepin")
teleportPlayers:register()


