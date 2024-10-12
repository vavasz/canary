local config = {
	boss = {
		name = "gandalf",
		position = Position(129, 828, 0),
	},
	requiredLevel = 3500,
	playerPositions = {
		{ pos = Position(127, 812, 0), teleport = Position(125, 832, 0) },
		{ pos = Position(128, 812, 0), teleport = Position(125, 832, 0) },
		{ pos = Position(129, 812, 0), teleport = Position(125, 832, 0) },
		{ pos = Position(130, 812, 0), teleport = Position(125, 832, 0) },
		{ pos = Position(131, 812, 0), teleport = Position(125, 832, 0) },
	},
	specPos = {
		from = Position(118, 820, 0),
		to = Position(138, 840, 0),
	},
	exit = Position(133, 812, 0),
}

local lever = BossLever(config)
lever:position({ x = 126, y = 812, z = 0 })
lever:register()