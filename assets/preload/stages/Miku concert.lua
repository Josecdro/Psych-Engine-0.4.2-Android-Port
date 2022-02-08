function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'miku concert/stageback', -380, -110);
    setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 1.1, 1.1);
	makeLuaSprite('front', 'miku concert/front', -470, -80);
	scaleObject('front', 1.2, 1.1);
       
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('back', 'miku concert/back', -380, -110);
		setLuaSpriteScrollFactor('back', 0.9, 0.9);
		scaleObject('back', 1.1, 1.1);
		
		makeAnimatedLuaSprite('bunch_of_simps', 'miku concert/bunch_of_simps', -470, 660);
		setLuaSpriteScrollFactor('bunch_of_simps', 0.9, 0.9);
		scaleObject('bunch_of_simps', 1.3, 1.3);
       
	end

	addLuaSprite('stageback', false);
	addLuaSprite('back', false);
	addLuaSprite('front', false);
	addLuaSprite('bunch_of_simps', true); 
	addAnimationByPrefix('bunch_of_simps', 'idle', 'Downer Crowd Bob', 24, true);
	

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end