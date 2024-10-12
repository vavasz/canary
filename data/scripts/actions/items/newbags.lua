local rewardBags = {
	[49592] = {
		{ id = 49657, name = "immortal knight helmet" },
		{ id = 49658, name = "immortal knight armor" },
		{ id = 49533, name = "immortal knight legs" },
		{ id = 49660, name = "immortal knight boots" },
		{ id = 49661, name = "immortal paladin helmet" },
		{ id = 49662, name = "immortal paladin armor" },
		{ id = 49663, name = "immortal paladin legs" },
		{ id = 49664, name = "immortal paladin boots" },
		{ id = 49665, name = "immortal druid helmet" },
		{ id = 49666, name = "immortal druid armor" },
		{ id = 49667, name = "immortal druid legs" },
		{ id = 49668, name = "immortal druid boots" },
		{ id = 49669, name = "immortal sorcerer helmet" },
		{ id = 49670, name = "immortal sorcerer armor" },
		{ id = 49671, name = "immortal sorcerer legs" },
		{ id = 49672, name = "immortal sorcerer boots" },
	},
	[49596] = {
		{ id = 49508, name = "enhanced knight helmet" },
		{ id = 49514, name = "enhanced knight armor" },
		{ id = 49529, name = "enhanced knight legs" },
		{ id = 49536, name = "enhanced knight boots" },
		{ id = 49494, name = "enhanced paladin helmet" },
		{ id = 49495, name = "enhanced paladin armor" },
		{ id = 49496, name = "enhanced paladin legs" },
		{ id = 49497, name = "enhanced paladin boots" },
		{ id = 49534, name = "enhanced druid helmet" },
		{ id = 49520, name = "enhanced druid armor" },
		{ id = 49528, name = "enhanced druid legs" },
		{ id = 49537, name = "enhanced druid boots" },
		{ id = 49510, name = "enhanced sorcerer helmet" },
		{ id = 49515, name = "enhanced sorcerer armor" },
		{ id = 49524, name = "enhanced sorcerer legs" },
		{ id = 49535, name = "enhanced sorcerer boots" },
	},

	[49597] = {
		{ id = 49674, name = "undyeing knight helmet" },
		{ id = 49675, name = "undyeing knight armor" },
		{ id = 49676, name = "undyeing knight legs" },
		{ id = 49677, name = "undyeing knight boots" },
		{ id = 49683, name = "unholy paladin helmet" },
		{ id = 49684, name = "unholy paladin armor" },
		{ id = 49685, name = "unholy paladin legs" },
		{ id = 49686, name = "unholy paladin boots" },
		{ id = 49687, name = "unfreezing druid helmet" },
		{ id = 49688, name = "unfreezing druid armor" },
		{ id = 49689, name = "unfreezing druid legs" },
		{ id = 49690, name = "unfreezing druid boots" },
		{ id = 49691, name = "unfireing sorcerer helmet" },
		{ id = 49692, name = "unfireing sorcerer armor" },
		{ id = 49693, name = "unfireing sorcerer legs" },
		{ id = 49694, name = "unfireing sorcerer boots" },
	},
}

local newbags = Action()

function newbags.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rewardBag = rewardBags[item.itemid]
	if not rewardBag then
		return false
	end

	local randomIndex = math.random(1, #rewardBag)
	local rewardItem = rewardBag[randomIndex]
	player:addItem(rewardItem.id, 1)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received a " .. rewardItem.name .. ".")

	item:remove(1)
	return true
end

for itemId, info in pairs(rewardBags) do
	newbags:id(tonumber(itemId))
end

newbags:register()
