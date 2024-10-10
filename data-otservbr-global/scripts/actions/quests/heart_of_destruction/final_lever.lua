local config = {
	boss = {
		name = "World devourer",
		position = Position(32275, 31348, 14),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(32272, 31374, 14), teleport = Position(32271, 31348, 14) },
		{ pos = Position(32272, 31375, 14), teleport = Position(32271, 31348, 14) },
		{ pos = Position(32272, 31376, 14), teleport = Position(32271, 31348, 14) },
		{ pos = Position(32272, 31377, 14), teleport = Position(32271, 31348, 14) },
		{ pos = Position(32272, 31378, 14), teleport = Position(32271, 31348, 14) },
	},
	specPos = {
		from = Position(32258, 31336, 14),
		to = Position(32282, 31360, 14),
	},
	exit = Position(32214, 31376, 14),
	exitTeleporter = Position(32281, 31348, 14),
}

local lever = BossLever(config)
lever:position(Position(32272, 31373, 14))
lever:register()
