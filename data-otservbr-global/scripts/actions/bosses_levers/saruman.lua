local config = {
	boss = {
		name = "saruman",
		position = Position(299, 828, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(297, 812, 0), teleport = Position(295, 832, 0) },
		{ pos = Position(298, 812, 0), teleport = Position(295, 832, 0) },
		{ pos = Position(299, 812, 0), teleport = Position(295, 832, 0) },
		{ pos = Position(300, 812, 0), teleport = Position(295, 832, 0) },
		{ pos = Position(301, 812, 0), teleport = Position(295, 832, 0) },
	},
	specPos = {
		from = Position(287, 818, 0),
		to = Position(309, 839, 0),
	},
	exit = Position(303, 812, 0),
	exitTeleporter = Position(304, 833, 0),
}

local lever = BossLever(config)
lever:position(Position(296, 812, 0))
lever:register()