local config = {
	boss = {
		name = "eowyn",
		position = Position(213, 828, 0),
	},
	requiredLevel = 3500,
	playerPositions = {
		{ pos = Position(211, 812, 0), teleport = Position(209, 832, 0) },
		{ pos = Position(212, 812, 0), teleport = Position(209, 832, 0) },
		{ pos = Position(213, 812, 0), teleport = Position(209, 832, 0) },
		{ pos = Position(214, 812, 0), teleport = Position(209, 832, 0) },
		{ pos = Position(215, 812, 0), teleport = Position(209, 832, 0) },
	},
	specPos = {
		from = Position(201, 818, 0),
		to = Position(223, 838, 0),
	},
	exit = Position(217, 812, 0),
}

local lever = BossLever(config)
lever:position({ x = 210, y = 812, z = 0 })
lever:register()


