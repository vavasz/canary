local config = {
	boss = {
		name = "Unbreakable Chagorz",
		position = Position(529, 4805, 1),
	},
	timeAfterKill = 60,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(564, 4807, 1), teleport = Position(525, 4811, 1) },
		{ pos = Position(563, 4807, 1), teleport = Position(525, 4811, 1) },
		{ pos = Position(562, 4807, 1), teleport = Position(525, 4811, 1) },
		{ pos = Position(561, 4807, 1), teleport = Position(525, 4811, 1) },
		{ pos = Position(560, 4807, 1), teleport = Position(525, 4811, 1) },
	},
	specPos = {
		from = Position(519, 4798, 1),
		to = Position(538, 4817, 1),
	},
	exit = Position(560, 4809, 1),
	exitTeleporter = Position(530, 4815, 1),
}

local lever = BossLever(config)
lever:position(Position(565, 4807, 1))
lever:register()
