local config = {
	boss = {
		name = "Immortal Goshnar's Spite",
		position = Position(266, 4295, 0),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(297, 4298, 0), teleport = Position(260, 4301, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(298, 4298, 0), teleport = Position(260, 4301, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(299, 4298, 0), teleport = Position(260, 4301, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(300, 4298, 0), teleport = Position(260, 4301, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(301, 4298, 0), teleport = Position(260, 4301, 0), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(251, 4286, 0),
		to = Position(276, 4309, 0),
	},
	exit = Position(303, 4298, 0),
}

local lever = BossLever(config)
lever:position({ x = 296, y = 4298, z = 0 })
lever:register()
