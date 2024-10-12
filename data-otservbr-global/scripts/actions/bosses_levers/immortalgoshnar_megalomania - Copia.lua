local config = {
	boss = {
		name = "Immortal Goshnar's Megalomania",
		position = Position(233, 4297, 0),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(199, 4298, 0), teleport = Position(228, 4302, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(200, 4298, 0), teleport = Position(228, 4302, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(201, 4298, 0), teleport = Position(228, 4302, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(202, 4298, 0), teleport = Position(228, 4302, 0), effect = CONST_ME_TELEPORT },
		{ pos = Position(203, 4298, 0), teleport = Position(228, 4302, 0), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(220, 4288, 0),
		to = Position(243, 4308, 0),
	},
	exit = Position(205, 4298, 0),
}

local lever = BossLever(config)
lever:position({ x = 198, y = 4298, z = 0 })
lever:register()
