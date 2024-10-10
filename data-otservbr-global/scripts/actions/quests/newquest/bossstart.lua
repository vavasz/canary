local config = {
	boss = {
		name = "heavy bakragore",
		position = Position(232, 3202, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(209, 3203, 0), teleport = Position(227, 3208, 0) },
		{ pos = Position(208, 3203, 0), teleport = Position(227, 3208, 0) },
		{ pos = Position(207, 3203, 0), teleport = Position(227, 3208, 0) },
		{ pos = Position(206, 3203, 0), teleport = Position(227, 3208, 0) },
		{ pos = Position(205, 3203, 0), teleport = Position(227, 3208, 0) },
	},
	specPos = {
		from = Position(219, 3193, 0),
		to = Position(241, 3215, 0),
	},
	monsters = {
		{ name = "heavy murcion", pos = Position(229, 3199, 0) },
		{ name = "heavy chagorz", pos = Position(230, 3199, 0) },
		{ name = "heavy ichgahal", pos = Position(231, 3199, 0) },
		{ name = "heavy vemiath", pos = Position(232, 3199, 0) },
	},
	exit = Position(207, 3201, 0),
	exitTeleporter = Position(232, 3212, 0),
}

local lever = BossLever(config)
lever:position(Position(210, 3203, 0))
lever:register()
