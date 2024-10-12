taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 2, -- rate bonus reward
	taskBoardPositions = {
        {x = 32364, y = 32240, z = 7},
        {x = 31873, y = 32365, z = 5},
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = false, -- do one task at a time
	uniqueTaskStorage = 65002
}

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Quadro De Missoes",
	missionError = "Missao esta em andamento ou ela ja foi concluida.",
	uniqueMissionError = "Voce so pode fazer uma missao por vez.",
	missionErrorTwo = "Voce concluiu a missao",
	missionErrorTwoo = "\nAqui estão suas recompensas:",
	choiceText = "- Experiencia: ",
	messageAcceptedText = "Voce aceitou essa missao!",
	messageDetailsText = "Detalhes da missao:",
	choiceMonsterName = "Missao: ",
	choiceMonsterRace = "Monstros: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repeticao: Todos os dias",
	choiceRepeatable = "Repeticao: Sempre",
	choiceOnce = "Repeticao: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Voce ja concluiu essa missao.",
	choiceCancelTask = "Voce cancelou essa missao",
	choiceCancelTaskError = "Voce nao pode cancelar essa missao, porque ela ja foi concluida ou nao foi iniciada.",
	choiceBoardText = "Escolha uma missao e use os botoes abaixo:",
	choiceRewardOnHold = "Resgatar Prêmio",
	choiceDailyConclued = "Diaria Concluida",
	choiceConclued = "Concluida",
	messageTaskBoardError = "O quadro de missoes esta muito longe ou esse nao e o quadro de missoes correto.",
	messageCompleteTask = "Voce terminou essa missao! \nRetorne para o quadro de missoes e pegue sua recompensa.",
}

taskConfiguration = {

{name = "Infernal Demon", color = 40, total = 15000, type = "daily", storage = 190026, storagecount = 190027, 
	rewards = { 
	{"exp", 30000000},
	{22724, 20}
	},
	races = {
		"Bony Sea Devil", "Brachiodemon", "Branchy Crawler", "Capricious Phantom", "Cloak Of Terror", "Courage Leech", "Distorted Phantom", "Druid's Apparition", "Hazardous Phantom", "Infernal Demon", "Infernal Phantom", "Knight's Apparition", "Many Faces", "Mirror Image", "Mould Phantom", "Paladin's Apparition", "Rotten Golem", "Sorcerer's Apparition", "Turbulent Elemental", "Vibrant Phantom",
	},
},
{name = "Converter", color = 40, total = 15000, type = "daily", storage = 190042, storagecount = 190043, 
	rewards = { 
	{"exp", 40000000},
	{22724, 20}
	},
	races = {
		"Bloated Man-Maggot", "Converter", "Darklight Construct", "Darklight Emitter", "Darklight Matter", "Darklight Source", "Darklight Striker", "Meandering Mushroom", "Mycobiontic Beetle", "Oozing Corpus", "Rotten Man-Maggot", "Sopping Carcass", "Sopping Corpus", "Walking Pillar", "Wandering Pillar",
	},
},
{name = "Gore Horn", color = 40, total = 15000, type = "daily", storage = 190044, storagecount = 190045, 
	rewards = { 
	{"exp", 40000000},
	{22724, 20}
	},
	races = {
		"Emerald Tortoise", "Gore Horn", "Gorerilla", "Headpecker", "Hulking Prehemoth", "Mantosaurus", "Mercurial Menace", "Nighthunter", "Noxious Ripptor", "Sabretooth", "Shrieking Cry-Stal", "Stalking Stalk", "Sulphider", "Sulphur Spouter", "Undertaker",
	},
},
{name = "Vip Bloated Man-Maggot", color = 40, total = 20000, type = "daily", storage = 190046, storagecount = 190047, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Bloated Man-Maggot"
	},
},
{name = "Vip Converter", color = 40, total = 20000, type = "daily", storage = 190048, storagecount = 190049, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Converter"
	},
},
{name = "Vip Darklight Construct", color = 40, total = 20000, type = "daily", storage = 190050, storagecount = 190051, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Darklight Construct"
	},
},
{name = "Vip Bloated Man-Maggot", color = 40, total = 20000, type = "daily", storage = 190052, storagecount = 190053, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Darklight Emitter"
	},
},
{name = "Vip Gore Horn", color = 40, total = 20000, type = "daily", storage = 190056, storagecount = 190057, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Gore Horn"
	},
},
{name = "Vip Hulking Prehemoth", color = 40, total = 20000, type = "daily", storage = 190058, storagecount = 190059, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Hulking Prehemoth"
	},
},
{name = "Vip Cloak Of Terror", color = 40, total = 20000, type = "daily", storage = 190060, storagecount = 190061, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Cloak Of Terror"
	},
},
{name = "Vip Infernal Demon", color = 40, total = 20000, type = "daily", storage = 190062, storagecount = 190063, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Infernal Demon"
	},
},
{name = "Vip Sorcerer's Apparition", color = 40, total = 20000, type = "daily", storage = 190064, storagecount = 190065, 
	rewards = { 
	{"exp", 90000000},
	{22724, 25}
	},
	races = {
		"VIP Sorcerer's Apparition"
	},
},
{name = "Drankhio", color = 40, total = 20000, type = "daily", storage = 190066, storagecount = 190067, 
	rewards = { 
	{"exp", 140000000},
	{22724, 35}
	},
	races = {
		"drokhazur", "drankhio", "dhrazzhonur"
	},
},
{name = "Kloavsz", color = 40, total = 20000, type = "daily", storage = 190068, storagecount = 190069, 
	rewards = { 
	{"exp", 140000000},
	{22724, 35}
	},
	races = {
		"klasfiz", "kloavsz", "klioshiv"
	},
},
{name = "Alpatroz", color = 40, total = 20000, type = "daily", storage = 190070, storagecount = 190071, 
	rewards = { 
	{"exp", 140000000},
	{22724, 35}
	},
	races = {
		"abreachio", "alamantur", "alpatroz"
	},
},
{name = "Chaotic Legolas", color = 40, total = 35000, type = "daily", storage = 190071, storagecount = 190072, 
	rewards = { 
	{"exp", 20000000},
	{22724, 40}
	},
	races = {
		"chaotic saruman", "chaotic legolas", "chaotic gandalf", "chaotic eowyn"
	},
},
}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
local player = self
	if not player then
		return false
	end
local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
		if dataList:lower() == name:lower() then
			return data
		end
		end
	end
	return false
end

function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end
