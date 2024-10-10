local boss = {
    {
        name = "Mondays farm",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Monday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Mondays farm',
    },
    {
        name = "Tuesdays farm",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Tuesday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Tuesdays farm',
    },
    {
        name = "Wednesdays farm",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Wednesday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Wednesdays farm',
    },
    {
        name = "Thursdays farm",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Thursday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Thursdays farm',
    },
    {
        name = "Fridays farm",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Friday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Fridays farm',
    },
    {
        name = "Saturdays overpower",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Saturday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'Saturdays overpower',
    },
    {
        name = "alienator",
        bossPosition = Position(32218, 32187, 3),
        days = {
            ["Sunday"] =  --[sábado]
            {
                '12:55:00', '22:25:00'
            },
        },
        bossName = 'alienator',
    },
}

for _, bossConfig in ipairs(boss) do
for _, timeSpawn in ipairs(bossConfig.days[os.date("%A")] or {}) do

    local bossRespawnEvent = GlobalEvent(bossConfig.name .. "Respawn_" .. timeSpawn)

    function bossRespawnEvent.onTime(interval)


        Game.broadcastMessage(bossConfig.bossName .. ' vai spawnar em 5 minutos! Prepare-se!')

        -- Broadcast 3 minutos antes
        addEvent(function()
            print("Broadcast 3 minutos antes")
            Game.broadcastMessage(bossConfig.bossName .. ' vai spawnar em 3 minutos! Prepare-se!')
        end, (2 * 60 * 1000))

        -- Broadcast 1 minuto antes
        addEvent(function()
            print("Broadcast 1 minuto antes")
            Game.broadcastMessage(bossConfig.bossName .. ' vai spawnar em 1 minuto! Prepare-se!')
        end, (4 * 60 * 1000))

        addEvent(function()
            print("Attempting to spawn boss:", bossConfig.bossName, "on", os.date("%A"), "at", timeSpawn)
            local monster = Game.createMonster(bossConfig.bossName, bossConfig.bossPosition, false, true)
            if monster then
                print("Boss spawned successfully!")
                Game.broadcastMessage(bossConfig.bossName .. ' spawned! Go to the EVENT ROOM!')
            else
                print("Failed to spawn boss.")
            end
        end, (5 * 60 * 1000))
        return true
    end

    bossRespawnEvent:time(timeSpawn)
    bossRespawnEvent:register()
    print("Event registered for", bossConfig.name, "on", os.date("%A"), "at", timeSpawn)
end
end