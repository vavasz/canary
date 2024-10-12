local effects = {
    {position = Position(32369, 32241, 7), text = 'ULTIMA OTSERV. DIVIRTA-SE!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(32366, 32232, 7), text = 'BOSS DIARIO', effect = CONST_ME_GROUNDSHAKER},
		{position = Position(32363, 32242, 7), text = 'VIP', effect = 264},
		{position = Position(33554, 32925, 10), text = 'HUNTS', effect = CONST_ME_GROUNDSHAKER},
		{position = Position(33551, 32928, 10), text = 'BOSSES', effect = CONST_ME_GROUNDSHAKER},
		{position = Position(33548, 32925, 10), text = 'TREINERS', effect = CONST_ME_GROUNDSHAKER},
		{position = Position(33551, 32922, 10), text = 'THAIS', effect = CONST_ME_GROUNDSHAKER},
		{position = Position(32358, 32236, 7), text = 'CRAFT', effect = CONST_ME_GROUNDSHAKER},
        {position = Position(32373, 32232, 7), text = 'RAIDS', effect = CONST_ME_GROUNDSHAKER},
        {position = Position(31771, 32371, 5), text = 'NPCS', effect = 194},
        {position = Position(31773, 32374, 5), text = 'TREINERS', effect = 1},
        {position = Position(31781, 32374, 5), text = 'HUNTS', effect = 217},
        {position = Position(31783, 32371, 5), text = 'BOSSES', effect = 67},
        {position = Position(31777, 32361, 5), text = 'THAIS', effect = 36},
        {position = Position(31773, 32366, 5), text = 'DP', effect = 33},
        {position = Position(32364, 32240, 7), text = 'TASK', effect = 194},
        {position = Position(32369, 32244, 7), text = 'TELEPORTS', effect = 1},
}

local animatedText = GlobalEvent("AnimatedText") 
function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

animatedText:interval(4550)
animatedText:register()
