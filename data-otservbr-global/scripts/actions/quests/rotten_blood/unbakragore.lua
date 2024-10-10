local config = {
	boss = {
		name = "Unbreakable Bakragore",
		position = Position(530, 4836, 1),
	},
	timeAfterKill = 60,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(564, 4838, 1), teleport = Position(526, 4843, 1) },
		{ pos = Position(563, 4838, 1), teleport = Position(526, 4843, 1) },
		{ pos = Position(562, 4838, 1), teleport = Position(526, 4843, 1) },
		{ pos = Position(561, 4838, 1), teleport = Position(526, 4843, 1) },
		{ pos = Position(560, 4838, 1), teleport = Position(526, 4843, 1) },
	},
	specPos = {
		from = Position(518, 4829, 1),
		to = Position(540, 4850, 1),
	},
	exit = Position(558, 4842, 1),
	exitTeleporter = Position(530, 4849, 1),
}

local lever = BossLever(config)
lever:position(Position(565, 4838, 1))
lever:register()
