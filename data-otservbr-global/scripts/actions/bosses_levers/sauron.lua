local config = {
	boss = {
		name = "sauron",
		position = Position(62, 1561, 7),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(28, 1560, 7), teleport = Position(58, 1565, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(29, 1560, 7), teleport = Position(58, 1565, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(30, 1560, 7), teleport = Position(58, 1565, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(31, 1560, 7), teleport = Position(58, 1565, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(32, 1560, 7), teleport = Position(58, 1565, 7), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(50, 1551, 7),
		to = Position(72, 1572, 7),
	},
	exit = Position(25, 1560, 7),
}

local lever = BossLever(config)
lever:position({ x = 33, y = 1560, z = 7 })
lever:register()
