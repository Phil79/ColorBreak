-- mainmenu.lua 


-- Initialize Main Menu Classes 
mainmenu = gideros.class(Sprite)
mainmenu = Core.class(Sprite)

-- Main Menu Init Function - Info Goes In Here 
function mainmenu:init()

---------------------------------------------------------------------------------------------------------------------------------

	-- Go To Classic Mode 

	-- Classic Mode Button 
	local btn_classicMode = Bitmap.new(Texture.new("ball.png"))

	-- Addchild btn_classicMode to this scene 
	self:addChild(btn_classicMode)

	-- Set Position of btn_classicMode 	
	btn_classicMode:setPosition(10,20)

	-- Function - Go To Classic Mode Scene 
	local function GoToClassicMode(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("classicmode", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Classic Mode Function 	
	end

	-- Event Listener | GoToClassicMode Function | btn_classicMode 
	btn_classicMode:addEventListener(Event.TOUCHES_END, GoToClassicMode, btn_classicMode)
	
	-- End Classic Mode 
	
----------------------------------------------------------------------------------------------------------------------------------
	
	-- Go To Campaign 
	
	-- Campaign Button 
	local btn_campaign = Bitmap.new(Texture.new("ball2.png"))

	-- Addchild btn_campaign to this scene 
	self:addChild(btn_campaign)

	-- Set Position of btn_campaign	
	btn_campaign:setPosition(200,20)

	-- Function - Go To Campaign Scene 
	local function GoToCampaign(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("campaign", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Campaign Function 	
	end

	-- Event Listener | GoToCampaign Function | btn_campaign 
	btn_campaign:addEventListener(Event.TOUCHES_END, GoToCampaign, btn_campaign)
	
	-- End Campaign 
	
-----------------------------------------------------------------------------------------------------------------------------------
	
	-- Go To Arcade Mode 
	
	-- Arcade Button 
	local btn_arcadeMode = Bitmap.new(Texture.new("ball3.png"))

	-- Addchild btn_arcadeMode to this scene 
	self:addChild(btn_arcadeMode)

	-- Set Position of btn_arcadeMode	
	btn_arcadeMode:setPosition(10,200)

	-- Function - Go To Arcade Scene 
	local function GoToArcadeMode(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("arcademode", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Arcade Function 	
	end

	-- Event Listener | GoToCampaign Function | btn_campaign 
	btn_arcadeMode:addEventListener(Event.TOUCHES_END, GoToArcadeMode, btn_arcadeMode)
	
	-- End Arcade
	
----------------------------------------------------------------------------------------------------------------------------------


	-- Go To Rush Mode 
	
	-- Rush Button 
	local btn_rushMode = Bitmap.new(Texture.new("ball4.png"))

	-- Addchild btn_rushModeMode to this scene 
	self:addChild(btn_rushMode)

	-- Set Position of btn_rushMode	
	btn_rushMode:setPosition(200,200)

	-- Function - Go To Rush Scene 
	local function GoToRushMode(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("rushmode", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Rush Function 	
	end

	-- Event Listener | GoToRushMode Function | btn_rushMode
	btn_rushMode:addEventListener(Event.TOUCHES_END, GoToRushMode, btn_rushMode)
	
	-- End Rush Mode 
	
-----------------------------------------------------------------------------------------------------------------------------------	

	-- Go To Marathon Mode 
	
	-- Marathon Button 
	local btn_marathonMode = Bitmap.new(Texture.new("ball5.png"))

	-- Addchild btn_marathonMode to this scene 
	self:addChild(btn_marathonMode)

	-- Set Position of btn_marathonMode	
	btn_marathonMode:setPosition(10,400)

	-- Function - Go To Marathon Scene 
	local function GoToMarathonMode(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("marathonmode", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Marathon Function 	
	end

	-- Event Listener | GoToMarathonMode Function | btn_marathonMode
	btn_marathonMode:addEventListener(Event.TOUCHES_END, GoToMarathonMode, btn_marathonMode)
	
	-- End Marathon Mode 	
	
-----------------------------------------------------------------------------------------------------------------------------------

	-- Go To Settings
	
	-- Settings Button 
	local btn_settings = Bitmap.new(Texture.new("ball.png"))

	-- Addchild btn_settings to this scene 
	self:addChild(btn_settings)

	-- Set Position of btn_settings
	btn_settings:setPosition(200,400)

	-- Function - Go To Settings Scene 
	local function GoToSettings(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then
	
			-- Scene Transition Function 
			sceneManager:changeScene("settings", 1, SceneManager.flipWithFade, easing.outBack)

			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
	
		-- End Touch If Statement 
		end
	
	-- End Go To Settings Function 	
	end

	-- Event Listener | GoToSettings Function | btn_settings
	btn_settings:addEventListener(Event.TOUCHES_END, GoToSettings, btn_settings)
	
	-- End Settings
	
------------------------------------------------------------------------------------------------------------------------------------	

-- End Main Menu Init Function 
end
