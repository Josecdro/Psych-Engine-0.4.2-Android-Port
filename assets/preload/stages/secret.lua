local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function

function onCreate()
	-- background shit
	makeLuaSprite('secret', 'secret', -600, -300);
	setLuaSpriteScrollFactor('secret', 0.9, 0.9);
	
	makeLuaSprite('FLOOR2', 'FLOOR2', -600, -300);
	setLuaSpriteScrollFactor('FLOOR2', 0.9, 0.9);
	scaleObject('FLOOR2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('frontgrass', 'frontgrass', -600, -300);
		setLuaSpriteScrollFactor('frontgrass', 0.9, 0.9);
		scaleObject('frontgrass', 1.1, 1.1);
		
		makeLuaSprite('HILLS', 'HILLS', -600, -300);
		setLuaSpriteScrollFactor('HILLS', 0.9, 0.9);
		scaleObject('HILLS', 1.1, 1.1);
		setPropertyLuaSprite('HILLS', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('SKY', 'SKY', -600, -300);
		setLuaSpriteScrollFactor('SKY', 1.3, 1.3);
		scaleObject('SKY', 0.9, 0.9);
	end

	addLuaSprite('secret', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onGameOver()
	setProperty('camHUD.alpha', 0);
	
	user32.MessageBoxA(nil, "  you really suck at it lol!", "haha you suck", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)
	
	if ffi.C.MB_OK then
	   os.exit()
	end
	
	return Function_Stop;
end