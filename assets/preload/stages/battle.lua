function onCreate()
	--Stage thingies
	makeLuaSprite('temp_box', 'stages/battle/box', -77, 480)
	scaleLuaSprite('temp_box', 4, 4)
	
	--Adding sprites
	addLuaSprite('temp_box', false)

	--Layering
	setObjectOrder('dadGroup', 1)
	setObjectOrder('temp_box', 2)
	setObjectOrder('boyfriendGroup', 3)
	
	--Remove GF
	setProperty('girlfriendGroup.visible', false)

end	
		
--Special Events
beatHitFuncs = {
	--[10] = function() 
	--addLuaSprite('exemple', false)
	--setObjectOrder('exemple', 4)
	--end,
}
--Simpler Version
function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end
end