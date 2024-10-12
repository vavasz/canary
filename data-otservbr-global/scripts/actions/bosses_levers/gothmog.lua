local config = {
	boss = {
		name = "gothmog",
		position = Position(131, 1558, 7),
	},
	playerPositions = {
		{ pos = Position(107, 1560, 7), teleport = Position(130, 1565, 7) },
		{ pos = Position(108, 1560, 7), teleport = Position(130, 1565, 7) },
		{ pos = Position(109, 1560, 7), teleport = Position(130, 1565, 7) },
		{ pos = Position(110, 1560, 7), teleport = Position(130, 1565, 7) },
		{ pos = Position(111, 1560, 7), teleport = Position(130, 1565, 7) },
	},
	specPos = {
		from = Position(123, 1552, 7),
		to = Position(143, 1573, 7),
	},
	monsters = {
		{ name = "lurtz", pos = Position(135, 1558, 7) },
	},
	exit = Position(109, 1557, 7),
}

local lever = BossLever(config)
lever:position({ x = 112, y = 1560, z = 7 })
lever:register()