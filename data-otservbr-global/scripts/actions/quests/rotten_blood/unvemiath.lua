local config = {
	boss = {
		name = "Unbreakable Vemiath",
		position = Position(529, 4774, 1),
	},
	timeAfterKill = 60,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(564, 4773, 1), teleport = Position(525, 4780, 1) },
		{ pos = Position(563, 4773, 1), teleport = Position(525, 4780, 1) },
		{ pos = Position(562, 4773, 1), teleport = Position(525, 4780, 1) },
		{ pos = Position(561, 4773, 1), teleport = Position(525, 4780, 1) },
		{ pos = Position(560, 4773, 1), teleport = Position(525, 4780, 1) },
	},
	specPos = {
		from = Position(519, 4766, 1),
		to = Position(540, 4786, 1),
	},
	exit = Position(560, 4775, 1),
	exitTeleporter = Position(529, 4784, 1),
}

local lever = BossLever(config)
lever:position(Position(565, 4773, 1))
lever:register()
