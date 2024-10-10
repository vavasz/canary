local config = {
	boss = {
		name = "bahamuth",
		position = Position(173, 3095, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(581, 3118, 1), teleport = Position(173, 3103, 0) },
		{ pos = Position(580, 3118, 1), teleport = Position(173, 3103, 0) },
		{ pos = Position(579, 3118, 1), teleport = Position(173, 3103, 0) },
		{ pos = Position(578, 3118, 1), teleport = Position(173, 3103, 0) },
		{ pos = Position(577, 3118, 1), teleport = Position(173, 3103, 0) },
	},
	specPos = {
		from = Position(161, 3085, 0),
		to = Position(183, 3106, 0),
	},
	exit = Position(579, 3121, 1),
	exitTeleporter = Position(173, 3087, 0),
}

local lever = BossLever(config)
lever:position(Position(582, 3118, 1))
lever:register()
