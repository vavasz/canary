local config = {
	boss = {
		name = "master of earth",
		position = Position(117, 655, 14),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(117, 619, 14), teleport = Position(117, 662, 14) },
		{ pos = Position(118, 619, 14), teleport = Position(117, 662, 14) },
		{ pos = Position(119, 619, 14), teleport = Position(117, 662, 14) },
		{ pos = Position(120, 619, 14), teleport = Position(117, 662, 14) },
		{ pos = Position(121, 619, 14), teleport = Position(117, 662, 14) },
	},
	specPos = {
		from = Position(105, 642, 14),
		to = Position(129, 667, 14),
	},
	exit = Position(119, 621, 14),
	exitTeleporter = Position(117, 646, 14),
}


local lever = BossLever(config)
lever:position(Position(116, 619, 14))
lever:register()

--

config = {
	boss = {
		name = "master of energy",
		position = Position(168, 655, 14),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(166, 619, 14), teleport = Position(168, 663, 14) },
		{ pos = Position(167, 619, 14), teleport = Position(168, 663, 14) },
		{ pos = Position(168, 619, 14), teleport = Position(168, 663, 14) },
		{ pos = Position(169, 619, 14), teleport = Position(168, 663, 14) },
		{ pos = Position(170, 619, 14), teleport = Position(168, 663, 14) },
	},
	specPos = {
		from = Position(152, 640, 14),
		to = Position(180, 669, 14),
	},
	exit = Position(169, 621, 14),
	exitTeleporter = Position(168, 644, 14),
}


lever = BossLever(config)
lever:position(Position(166, 619, 14))
lever:register()

config = {
	boss = {
		name = "master of ice",
		position = Position(212, 657, 14),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(210, 619, 14), teleport = Position(212, 665, 14) },
		{ pos = Position(211, 619, 14), teleport = Position(212, 665, 14) },
		{ pos = Position(212, 619, 14), teleport = Position(212, 665, 14) },
		{ pos = Position(213, 619, 14), teleport = Position(212, 665, 14) },
		{ pos = Position(214, 619, 14), teleport = Position(212, 665, 14) },
	},
	specPos = {
		from = Position(198, 642, 14),
		to = Position(226, 670, 14),
	},
	exit = Position(212, 621, 14),
	exitTeleporter = Position(212, 646, 14),
}


lever = BossLever(config)
lever:position(Position(209, 619, 14))
lever:register()


config = {
	boss = {
		name = "master of fire",
		position = Position(261, 655, 14),
	},
	timeAfterKill = 60,
	playerPositions = {
		{ pos = Position(258, 618, 14), teleport = Position(261, 663, 14) },
		{ pos = Position(259, 618, 14), teleport = Position(261, 663, 14) },
		{ pos = Position(260, 618, 14), teleport = Position(261, 663, 14) },
		{ pos = Position(261, 618, 14), teleport = Position(261, 663, 14) },
		{ pos = Position(262, 618, 14), teleport = Position(261, 663, 14) },
	},
	specPos = {
		from = Position(247, 642, 14),
		to = Position(275, 671, 14),
	},
	exit = Position(261, 620, 14),
	exitTeleporter = Position(261, 645, 14),
}


lever = BossLever(config)
lever:position(Position(258, 618, 14))
lever:register()