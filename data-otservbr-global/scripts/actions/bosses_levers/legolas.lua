local config = {
	boss = {
		name = "legolas",
		position = Position(43, 828, 0),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(41, 812, 0), teleport = Position(40, 832, 0) },
		{ pos = Position(42, 812, 0), teleport = Position(40, 832, 0) },
		{ pos = Position(43, 812, 0), teleport = Position(40, 832, 0) },
		{ pos = Position(44, 812, 0), teleport = Position(40, 832, 0) },
		{ pos = Position(45, 812, 0), teleport = Position(40, 832, 0) },
	},
	specPos = {
		from = Position(32, 819, 0),
		to = Position(52, 839, 0),
	},
	exit = Position(47, 812, 0),
	exitTeleporter = Position(48, 833, 0),
}
		
local lever = BossLever(config)
lever:position(Position(40, 812, 0))
lever:register()