local config = {
	boss = {
		name = "Unbreakable Ichgahal",
		position = Position(494, 4774, 1),
	},
	timeAfterKill = 60,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(464, 4773, 1), teleport = Position(490, 4779, 1) },
		{ pos = Position(463, 4773, 1), teleport = Position(490, 4779, 1) },
		{ pos = Position(462, 4773, 1), teleport = Position(490, 4779, 1) },
		{ pos = Position(461, 4773, 1), teleport = Position(490, 4779, 1) },
		{ pos = Position(460, 4773, 1), teleport = Position(490, 4779, 1) },
	},
	specPos = {
		from = Position(483, 4764, 1),
		to = Position(504, 4784, 1),
	},
	exit = Position(459, 4775, 1),
	exitTeleporter = Position(490, 4783, 1),
}

local lever = BossLever(config)
lever:position(Position(465, 4773, 1))
lever:register()
