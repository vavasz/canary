local config = {
	boss = {
		name = "valefor",
		position = Position(124, 3162, 0),
	},
requiredLevel = 4000,
playerPositions = {
	{ pos = Position(160, 3150, 0), teleport = Position(116, 3172, 0) },
	{ pos = Position(160, 3151, 0), teleport = Position(116, 3172, 0) },
	{ pos = Position(160, 3152, 0), teleport = Position(116, 3172, 0) },
	{ pos = Position(160, 3153, 0), teleport = Position(116, 3172, 0) },
	{ pos = Position(160, 3154, 0), teleport = Position(116, 3172, 0) },
},
specPos = {
	from = Position(111, 3156, 0),
	to = Position(134, 3175, 0),
},
	exit = Position(163, 3149, 0),
	exitTeleporter = Position(124, 3173, 0),
}

local lever = BossLever(config)
lever:position(Position(160, 3149, 0))
lever:register()
