local config = {
	boss = {
		name = "Blasphemus",
		position = Position(1160, 329, 6),
	},
	timeAfterKill = 60,
		timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(1183, 334, 6), teleport = Position(1157, 337, 6) },
		{ pos = Position(1184, 334, 6), teleport = Position(1157, 337, 6) },
		{ pos = Position(1185, 334, 6), teleport = Position(1157, 337, 6) },
		{ pos = Position(1186, 334, 6), teleport = Position(1157, 337, 6) },
		{ pos = Position(1187, 334, 6), teleport = Position(1157, 337, 6) },
	},
	specPos = {
		from = Position(1150, 324, 6),
		to = Position(1168, 341, 6),
	},
	exit = Position(1190, 334, 6),
	exitTeleporter = Position(1161, 339, 6),
}

local lever = BossLever(config)
lever:position(Position(1182, 334, 6))
lever:register()
