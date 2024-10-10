local config = {
	boss = {
		name = "Unbreakable Murcion",
		position = Position(495, 4806, 1),
	},
	timeAfterKill = 60,
	timeToFightAgain = ParseDuration("12h") / ParseDuration("1s"),
	playerPositions = {
		{ pos = Position(464, 4805, 1), teleport = Position(490, 4811, 1) },
		{ pos = Position(463, 4805, 1), teleport = Position(490, 4811, 1) },
		{ pos = Position(462, 4805, 1), teleport = Position(490, 4811, 1) },
		{ pos = Position(461, 4805, 1), teleport = Position(490, 4811, 1) },
		{ pos = Position(460, 4805, 1), teleport = Position(490, 4811, 1) },
	},
	specPos = {
		from = Position(483, 4797, 1),
		to = Position(504, 4816, 1),
	},
	exit = Position(459, 4807, 1),
	exitTeleporter = Position(495, 4814, 1),
}

local lever = BossLever(config)
lever:position(Position(465, 4805, 1))
lever:register()