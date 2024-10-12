local config = {
	boss = {
		name = "Immortal Goshnar's Cruelty",
		position = Position(521, 4428, 4),
	},
	requiredLevel = 4000,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(517, 4420, 3), teleport = Position(515, 4437, 4), effect = CONST_ME_TELEPORT },
		{ pos = Position(518, 4420, 3), teleport = Position(515, 4437, 4), effect = CONST_ME_TELEPORT },
		{ pos = Position(519, 4420, 3), teleport = Position(515, 4437, 4), effect = CONST_ME_TELEPORT },
		{ pos = Position(520, 4420, 3), teleport = Position(515, 4437, 4), effect = CONST_ME_TELEPORT },
		{ pos = Position(521, 4420, 3), teleport = Position(515, 4437, 4), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(507, 4422, 4),
		to = Position(529, 4442, 4),
	},
	exit = Position(3512, 4421, 3),
}

local lever = BossLever(config)
lever:position({ x = 516, y = 4420, z = 3 })
lever:register()