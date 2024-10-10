-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 50,
		multiplier = 1300,
	},
	{
		minlevel = 51,
		maxlevel = 1000,
		multiplier = 1300,
	},
	{
		minlevel = 1001,
		maxlevel = 2500,
		multiplier = 1000,
	},
	{
		minlevel = 2501,
		maxlevel = 4500,
		multiplier = 750,
	},
	{
		minlevel = 4501,
		maxlevel = 7500,
		multiplier = 500,
	},
	{
		minlevel = 7501,
		maxlevel = 15000,
		multiplier = 150,
	},
	{
		minlevel = 15001,
		multiplier = 30,
	},
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 80,
		multiplier = 150,
	},
	{
		minlevel = 81,
		maxlevel = 120,
		multiplier = 80,
	},
	{
		minlevel = 121,
		maxlevel = 140,
		multiplier = 40,
	},
	{
		minlevel = 141,
		maxlevel = 160,
		multiplier = 30,
	},
	{
		minlevel = 161,
		multiplier = 10,
	},
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 80,
		multiplier = 150,
	},
	{
		minlevel = 81,
		maxlevel = 120,
		multiplier = 75,
	},
	{
		minlevel = 121,
		maxlevel = 140,
		multiplier = 35,
	},
	{
		minlevel = 141,
		maxlevel = 160,
		multiplier = 25,
	},
	{
		minlevel = 161,
		maxlevel = 180,
		multiplier = 8,
	},
	{
		minlevel = 181,
		multiplier = 6,
	},
}
