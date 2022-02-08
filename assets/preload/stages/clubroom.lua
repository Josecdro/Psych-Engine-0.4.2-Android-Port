function onCreate()
	--background boi
	makeLuaSprite( 'back1', 'clubroom/sky', 0, 0)
	setLuaSpriteScrollFactor('back1', 0.6, 0.6)
	scaleObject('back1', 1.6, 1.6)
	addLuaSprite('back1', false)

	makeLuaSprite( 'back2', 'clubroom/clubfarbg', 0, 0)
	setLuaSpriteScrollFactor('back2', 0.6, 0.6)
	scaleObject('back2', 1.6, 1.6)
	addLuaSprite('back2', false)

	makeLuaSprite('stage', 'clubroom/clubroom1', 0, 0)
	setLuaSpriteScrollFactor('stage', 0.6, 0.6)
	scaleObject('stage', 1.6, 1.6)
	addLuaSprite('stage', false)

	makeLuaSprite( 'stage2', 'clubroom/clubroom2', 0, 0)
	setLuaSpriteScrollFactor('stage2', 0.6, 0.6)
	scaleObject('stage2', 1.6, 1.6)
	addLuaSprite('stage2', false)

	makeLuaSprite('desk1', 'clubroom/DesksFront', 0, 0)
	setLuaSpriteScrollFactor('desk1', 0.7, 0.6)
	scaleObject('desk1', 1.6, 1.6)
	addLuaSprite('desk1', false)

	makeLuaSprite( 'stage3', 'clubroom/clubroom3', 0, 0)
	setLuaSpriteScrollFactor('stage3', 0.6, 0.6)
	scaleObject('stage3', 1.6, 1.6)
	addLuaSprite('stage3', false)

	makeLuaSprite('banner', 'clubroom/FestivalBanner', 0, 0)
	scaleObject('banner', 1.6, 1.6)
	setLuaSpriteScrollFactor('banner', 0.6, 0.6)
	addLuaSprite('banner', false)

	makeLuaSprite('desk2', 'clubroom/DesksFestival', 0, 0)

	scaleObject('desk2', 1.6, 1.6)
	setLuaSpriteScrollFactor('desk2', 0.7, 0.6)
	addLuaSprite('desk2', false)

	makeLuaSprite( 'stage4', 'clubroom/monikaclubroom', 0, 0)
	setLuaSpriteScrollFactor('stage4', 0.6, 0.6)
	scaleObject('stage4', 1.6, 1.6)
	addLuaSprite('stage4', false)


	setProperty('back1.visible', false)
	setProperty('stage2.visible', false)
	setProperty('stage3.visible', false)
	setProperty('desk2.visible', false)
	setProperty('stage4.visible', false)


end

function onEvent(name,value1,value2)
	if name == 'Change Main BG' then

		if value1 == '2' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('desk1.visible', true);
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);
			setProperty('banner.visible', true);
			setProperty('desk2.visible', false)
			setProperty('stage4.visible', false);

		end

		if value1 == '3' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('desk1.visible', false);
			setProperty('stage3.visible', true);
			setProperty('desk2.visible', true);
			setProperty('banner.visible', true);
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage4.visible', false);

		end

		if value1 == '4' then
			setProperty('back1.visible', true);
			setProperty('back2.visible', false);
			setProperty('stage2.visible', false);
			setProperty('desk1.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('banner.visible', false);
			setProperty('desk2.visible', false);
			setProperty('stage4.visible', true);

		end

		if value1 == '1' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);
			setProperty('desk1.visible', true);
			setProperty('stage2.visible', false);
			setProperty('stage.visible', true);
			setProperty('stage3.visible', false);
			setProperty('banner.visible', true);
			setProperty('desk2.visible', false);
			setProperty('stage4.visible', false);

		end
	end
	if name == 'Change Back BG' then

		if value1 == '1' then
			setProperty('back1.visible', false);
			setProperty('back2.visible', true);

		end

		if value1 == '2' then
			setProperty('back1.visible', true);
			setProperty('back2.visible', false);


		end

	end
end
