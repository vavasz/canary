local config = {
	boss = {
		name = "yojimbo",
		position = Position(239, 3096, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(761, 3124, 1), teleport = Position(239, 3104, 0) },
		{ pos = Position(760, 3124, 1), teleport = Position(239, 3104, 0) },
		{ pos = Position(759, 3124, 1), teleport = Position(239, 3104, 0) },
		{ pos = Position(758, 3124, 1), teleport = Position(239, 3104, 0) },
		{ pos = Position(757, 3124, 1), teleport = Position(239, 3104, 0) },
	},
	specPos = {
		from = Position(226, 3085, 0),
		to = Position(250, 3108, 0),
	},
	exit = Position(756, 3127, 1),
	exitTeleporter = Position(239, 3088, 0),
}

local lever = BossLever(config)
lever:position(Position(762, 3124, 1))
lever:register()
