local config = {
	boss = {
		name = "anima",
		position = Position(205, 3060, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(192, 3142, 1), teleport = Position(197, 3061, 0) },
		{ pos = Position(191, 3142, 1), teleport = Position(197, 3061, 0) },
		{ pos = Position(190, 3142, 1), teleport = Position(197, 3061, 0) },
		{ pos = Position(189, 3142, 1), teleport = Position(197, 3061, 0) },
		{ pos = Position(188, 3142, 1), teleport = Position(197, 3061, 0) },
	},
	specPos = {
		from = Position(192, 3049, 0),
		to = Position(216, 3071, 0),
	},
	exit = Position(188, 3146, 1),
	exitTeleporter = Position(205, 3079, 0),
}

local lever = BossLever(config)
lever:position(Position(193, 3142, 1))
lever:register()
