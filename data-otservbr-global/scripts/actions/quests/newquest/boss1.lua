local config = {
	boss = {
		name = "chaos",
		position = Position(237, 3061, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(522, 2872, 1), teleport = Position(234, 3055, 0) },
		{ pos = Position(521, 2872, 1), teleport = Position(234, 3055, 0) },
		{ pos = Position(520, 2872, 1), teleport = Position(234, 3055, 0) },
		{ pos = Position(519, 2872, 1), teleport = Position(234, 3055, 0) },
		{ pos = Position(518, 2872, 1), teleport = Position(234, 3055, 0) },
	},
	specPos = {
		from = Position(225, 3050, 0),
		to = Position(246, 3071, 0),
	},
	exit = Position(520, 2876, 1),
	exitTeleporter = Position(239, 3053, 0),
}

local lever = BossLever(config)
lever:position(Position(523, 2872, 1))
lever:register()
