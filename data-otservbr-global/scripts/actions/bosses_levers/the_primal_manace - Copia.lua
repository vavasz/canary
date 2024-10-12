local config = {
	boss = {
		name = "The Enhanced Primal Menace",
		position = Position(205, 3930, 2),
	},
	requiredLevel = 500,
	timeToFightAgain = ParseDuration("1h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(196, 3923, 1), teleport = Position(210, 3929, 2) },
		{ pos = Position(197, 3923, 1), teleport = Position(210, 3929, 2) },
		{ pos = Position(198, 3923, 1), teleport = Position(210, 3929, 2) },
		{ pos = Position(199, 3923, 1), teleport = Position(210, 3929, 2) },
		{ pos = Position(200, 3923, 1), teleport = Position(210, 3929, 2) },
	},
	specPos = {
		from = Position(190, 3919, 2),
		to = Position(216, 3939, 2),
	},
	disableCooldown = true,
	exit = Position(203, 3923, 1),
}

lever = BossLever(config)
lever:position(Position(195, 3923, 1))
lever:register()
