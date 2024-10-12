local config = {
	boss = {
		name = "Immortal Goshnar's Malice",
		position = Position(232, 4262, 0),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(202, 4263, 0), teleport = Position(227, 4267, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(203, 4263, 0), teleport = Position(227, 4267, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(204, 4263, 0), teleport = Position(227, 4267, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(205, 4263, 0), teleport = Position(227, 4267, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(206, 4263, 0), teleport = Position(227, 4267, 0), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(220, 4253, 0),
		to = Position(242, 4273, 0),
	},
	exit = Position(208, 4263, 0),
}

local lever = BossLever(config)
lever:position({ x = 201, y = 4263, z = 0 })
lever:register()
