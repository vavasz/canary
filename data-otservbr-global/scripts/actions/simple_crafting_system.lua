local config = {
-- Window Config
	mainTitleMsg = "Crafting", -- Main window title
	mainMsg = "Escolha uma opcao", -- Main window message
 
	craftTitle = "Crafting System: ", -- Title of the crafting screen after player picks of vocation
	craftMsg = "Lista de itens ", -- Message on the crafting screen after player picks of vocation
-- End Window Config
 
-- Player Notifications Config
	needItems = "Voce nao tem os itens necessarios para craftar ", -- This is the message the player recieves if he does not have all required items
 
-- Crafting Config
	system = {

		[1] = {vocation = "Mage", -- This is the category can be anything.
			items = {
				[1] = {item = "Greatest Staff", -- item name (THIS MUST BE EXACT OR IT WILL NOT WORK!)
						itemID = 49393, -- item to be made
						reqItems = { -- items and the amounts in order to craft.
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30400, count = 50}, -- Cobra Rod
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
							},
						},
										[2] = {item = "Ultima Staff", -- item name (THIS MUST BE EXACT OR IT WILL NOT WORK!)
						itemID = 49402, -- item to be made
						reqItems = { -- items and the amounts in order to craft.
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30400, count = 100}, -- Cobra Rod
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49393, count = 1}, -- Greatest Staff
							},
						},
				},
			},

	[2] = {vocation= "Paladin", 
			items = {
				[1] = {item = "Greatest Bow",
						itemID = 49377,
						reqItems = {
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30393, count = 50}, -- Cobra Crossbow
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
						},
					},
									[2] = {item = "Ultima Bow",
						itemID = 49378,
						reqItems = {
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30393, count = 100}, -- Cobra Crossbow
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49377, count = 1}, -- Greatest Bow
						},
					},
					[3] = {item = "Greatest Crossbow",
						itemID = 49682,
						reqItems = {
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30393, count = 50}, -- Cobra Crossbow
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
						},
					},
									[4] = {item = "Ultima Crossbow",
						itemID = 49681,
						reqItems = {
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30393, count = 100}, -- Cobra Crossbow
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49682, count = 1}, -- Greatest Bow
						},
					},
				},
			},
 
		[3] = {vocation = "Knight", 
				items = {
				[1] = {item = "Greatest Sword",
						itemID = 49388,
						reqItems = {
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30398, count = 50}, -- Elven Mail
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
						},
					},
									[2] = {item = "Ultima Sword",
						itemID = 49422,
						reqItems = {
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30398, count = 100}, -- Cobra club
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49388, count = 1}, -- Greatest Sword
						},
					},
									[3] = {item = "Greatest Axe",
						itemID = 49397,
						reqItems = {
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30396, count = 50}, -- Cobra Axe
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
						},
					},
									[4] = {item = "Ultima Axe",
						itemID = 49423,
						reqItems = {
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30396, count = 100}, -- Cobra Axe
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49397, count = 1}, -- Greatest Axe
						},
					},
									[5] = {item = "Greatest Club",
						itemID = 49396,
						reqItems = {
								[1] = {item = 22721, count = 200}, -- Gold Tokens
								[2] = {item = 30395, count = 50}, -- Elven Mail
								[3] = {item = 34109, count = 200}, -- Bag you desire
								[4] = {item = 39546, count = 200}, -- Primal Bag
								[5] = {item = 37110, count = 350}, -- Exalted Core
								[6] = {item = 22723, count = 500}, -- Online Tokens
						},
					},
									[6] = {item = "Ultima Club",
						itemID = 49392,
						reqItems = {
								[1] = {item = 22721, count = 400}, -- Gold Tokens
								[2] = {item = 30395, count = 100}, -- Cobra club
								[3] = {item = 34109, count = 400}, -- Bag you desire
								[4] = {item = 39546, count = 400}, -- Primal Bag
								[5] = {item = 37110, count = 1000}, -- Exalted Core
								[6] = {item = 22723, count = 1000}, -- Online Tokens
								[7] = {item = 49396, count = 1}, -- Greatest club
						},
					},
					},
				},
 
		[4] = {vocation = "Uteis",
				items = {
					[1] = {item = "Ultima Trinket",
							itemID = 38844,
							reqItems = {
								[1] = {item = 22516, count = 150}, -- Silver Tokens
								[2] = {item = 34109, count = 200}, -- Bag you desire
								[3] = {item = 39546, count = 200}, -- Primal Bag
								[4] = {item = 37110, count = 700}, -- Exalted Core
								[5] = {item = 34154, count = 50}, -- Lion Shield
								[6] = {item = 22723, count = 1000}, -- Online Tokens
							},
						},
 
					[2] = {item = "Ultima BP",
							itemID = 44760,
							reqItems = {
								[1] = {item = 22516, count = 150}, -- Silver Tokens
								[2] = {item = 34109, count = 200}, -- Bag you desire
								[3] = {item = 39546, count = 200}, -- Primal Bag
								[4] = {item = 37110, count = 700}, -- Exalted Core
								[5] = {item = 9604, count = 50}, -- Moon Backpack
								[6] = {item = 22723, count = 1000}, -- Online Tokens
							},
						},
 
					[3] = {item = "Ultima Ring",
							itemID = 44753,
							reqItems = {
								[1] = {item = 22516, count = 150}, -- Silver Tokens
								[2] = {item = 34109, count = 200}, -- Bag you desire
								[3] = {item = 39546, count = 200}, -- Primal Bag
								[4] = {item = 37110, count = 700}, -- Exalted Core
								[5] = {item = 39180, count = 50}, -- Alicorn Ring
								[6] = {item = 22723, count = 1000}, -- Online Tokens
							},
						},
 
					[4] = {item = "Ultima Necklace",
							itemID = 44754,
							reqItems = {
								[1] = {item = 22516, count = 150}, -- Silver Tokens
								[2] = {item = 34109, count = 200}, -- Bag you desire
								[3] = {item = 39546, count = 200}, -- Primal Bag
								[4] = {item = 37110, count = 700}, -- Exalted Core
								[5] = {item = 31631, count = 50}, -- Cobra Amulet
								[6] = {item = 22723, count = 1000}, -- Online Tokens
							},
						},
 
					[5] = {item = "PortableForge",
							itemID = 37114,
							reqItems = {
								[1] = {item = 22516, count = 150}, -- Silver Tokens
								[2] = {item = 34109, count = 200}, -- Bag you desire
								[3] = {item = 39546, count = 200}, -- Primal Bag
								[4] = {item = 37110, count = 1000}, -- Exalted Core
								[5] = {item = 22723, count = 1000}, -- Online Tokens
							},
						},	
					},
				},
			},
		}
 
local simpleCraftingSystem = Action()
function simpleCraftingSystem.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    player:sendMainCraftWindow(config)
    return true
end

simpleCraftingSystem:id(32041)
simpleCraftingSystem:register()
