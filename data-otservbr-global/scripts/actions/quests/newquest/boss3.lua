local config = {
	boss = {
		name = "shiva",
		position = Position(205, 3096, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(288, 3145, 1), teleport = Position(205, 3103, 0) },
		{ pos = Position(287, 3145, 1), teleport = Position(205, 3103, 0) },
		{ pos = Position(286, 3145, 1), teleport = Position(205, 3103, 0) },
		{ pos = Position(285, 3145, 1), teleport = Position(205, 3103, 0) },
		{ pos = Position(284, 3145, 1), teleport = Position(205, 3103, 0) },
	},
	specPos = {
		from = Position(193, 3084, 0),
		to = Position(216, 31-7, 0),
	},
	exit = Position(283, 3141, 1),
	exitTeleporter = Position(205, 3087, 0),
}

local lever = BossLever(config)
lever:position(Position(289, 3145, 1))
lever:register()
