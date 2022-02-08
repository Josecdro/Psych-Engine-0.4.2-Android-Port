function onCreate()
	-- background shit
		makeLuaSprite('nightsky', 'miku concert night/nightsky', -360, -110);
 
	scaleObject('nightsky', 1.1, 1.1);
	
	makeLuaSprite('stageback', 'miku concert night/concerttop', -380, -110);
    setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 1.1, 1.1);
	makeLuaSprite('front', 'miku concert night/front', -470, -80);
	
	scaleObject('front', 1.2, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('back', 'miku concert night/mainstage', -380, -110);
		setLuaSpriteScrollFactor('back', 0.9, 0.9);
		scaleObject('back', 1.1, 1.1);
		
		makeLuaSprite('speakers', 'miku concert night/speakers', -380, -110);
		setLuaSpriteScrollFactor('speakers', 0.9, 0.9);
		scaleObject('speakers', 1.1, 1.1);
		
		makeAnimatedLuaSprite('bunch_of_simps', 'miku concert night/crowd', -450, 660);
		setLuaSpriteScrollFactor('bunch_of_simps', 0.9, 0.9);
		scaleObject('bunch_of_simps', 1.7, 1.7);
		
		makeLuaSprite('stadiumback', 'miku concert night/stadiumback', -380, -110);
		setLuaSpriteScrollFactor('stadiumback', 0.9, 0.9);
		
			makeLuaSprite('backlight', 'miku concert night/backlight', -380, -110);
		setLuaSpriteScrollFactor('backlight', 0.9, 0.9);
		
		makeLuaSprite('hell', 'miku concert night/hell', -380, -110);
		setLuaSpriteScrollFactor('hell', 0.9, 0.9);
	     scaleObject('hell', 1.7, 1.7);
	end
     addLuaSprite('nightsky', false); 
	 	 addLuaSprite('backlight', false);
		 addLuaSprite('hell', true);
	 addLuaSprite('stadiumback', false);
	addLuaSprite('stageback', false);
	addLuaSprite('speakers', false);
	addLuaSprite('back', false);
	addLuaSprite('front', false);
	
	addLuaSprite('bunch_of_simps', true); 
	addAnimationByPrefix('bunch_of_simps', 'idle', 'crowdbump', 24, true);
	 

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end