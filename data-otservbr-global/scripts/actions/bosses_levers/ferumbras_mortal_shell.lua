local config = {
	boss = {
		name = "Ferumbras Mortal Shell",
		position = Position(33335, 31534, 14),
	},
	timeAfterKill = 60,
		timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(33285, 31538, 14), teleport = Position(33335, 31537, 14) },
		{ pos = Position(33286, 31538, 14), teleport = Position(33335, 31537, 14) },
		{ pos = Position(33287, 31538, 14), teleport = Position(33335, 31537, 14) },
		{ pos = Position(33288, 31538, 14), teleport = Position(33335, 31537, 14) },
		{ pos = Position(33289, 31538, 14), teleport = Position(33335, 31537, 14) },
	},
	specPos = {
		from = Position(33319, 31519, 14),
		to = Position(33349, 31548, 14),
	},
	exit = Position(33283, 31537, 14),
	exitTeleporter = Position(33335, 31546, 14),
}

local lever = BossLever(config)
lever:position(Position(33284, 31538, 14))
lever:register()
