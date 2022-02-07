function onCreate() -- Prevent teared Grass
	cameraSetTarget('boyfriend')
	setProperty('gf.visible', false)

	--Custom Game Over
	setPropertyFromClass('GameOverSubstate', 'characterName', 'heart'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'mus_gameover'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover_confirm'); --put in mods/music/	
end
