local config = {
	boss = {
		name = "ifrit",
		position = Position(173, 3062, 0),
	},
requiredLevel = 4000,
playerPositions = {
	{ pos = Position(964, 3087, 1), teleport = Position(173, 3066, 0) },
	{ pos = Position(963, 3087, 1), teleport = Position(173, 3066, 0) },
	{ pos = Position(962, 3087, 1), teleport = Position(173, 3066, 0) },
	{ pos = Position(961, 3087, 1), teleport = Position(173, 3066, 0) },
	{ pos = Position(960, 3087, 1), teleport = Position(173, 3066, 0) },
},
specPos = {
	from = Position(161, 3048, 0),
	to = Position(184, 3074, 0),
},
	monsters = {
		{ name = "hades", pos = Position(175, 3062, 0) },
	},
	exit = Position(960, 3090, 1),
	exitTeleporter = Position(173, 3072, 0),
}

local lever = BossLever(config)
lever:position(Position(965, 3087, 1))
lever:register()
