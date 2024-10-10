local config = {
	boss = {
		name = "Immortal Goshnar's Greed",
		position = Position(269, 4328, 0),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(299, 4329, 0), teleport = Position(265, 4333, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(300, 4329, 0), teleport = Position(265, 4333, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(301, 4329, 0), teleport = Position(265, 4333, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(302, 4329, 0), teleport = Position(265, 4333, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(303, 4329, 0), teleport = Position(265, 4333, 0), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(257, 4321, 0),
		to = Position(280, 4338, 0),
	},
	exit = Position(305, 4329, 0),
}

local lever = BossLever(config)
lever:position({ x = 298, y = 4329, z = 0 })
lever:register()
