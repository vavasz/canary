local config = {
	boss = {
		name = "Immortal Goshnar's Hatred",
		position = Position(266, 4263, 0),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(296, 4265, 0), teleport = Position(261, 4268, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(297, 4265, 0), teleport = Position(261, 4268, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(298, 4265, 0), teleport = Position(261, 4268, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(299, 4265, 0), teleport = Position(261, 4268, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(300, 4265, 0), teleport = Position(261, 4268, 0), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(255, 4255, 0),
		to = Position(276, 4271, 0),
	},
	exit = Position(302, 4265, 0),
}

local lever = BossLever(config)
lever:position({ x = 295, y = 4265, z = 0 })
lever:register()
