-- settings.lua

-- Initialize Settings - Add Sprites in this Function 
settings = gideros.class(Sprite)
settings = Core.class(Sprite)

-- Settings Init Function - Every Sprite Goes In Here 
function settings:init()

	-- Go To Settings Button 
	local btn_go_to_mainmenu = Bitmap.new(Texture.new("ball.png"))
	-- AddChild | btn_go_to_mainmenu
	self:addChild(btn_go_to_mainmenu)
	-- Set Position | btn_go_to_mainmenu
	btn_go_to_mainmenu:setPosition(110, 200)
	

	-- Function - Go Back To Main Menu 
	local function GoToMainmenu(button, event)

		-- Begin Touch If Statement 
		if button:hitTestPoint(event.touch.x, event.touch.y) then

			-- Scene Transition Function 
			sceneManager:changeScene("mainmenu", 1, SceneManager.flipWithFade, easing.outBack)
	
			-- Prints X & Y Cordinates of Touch 
			local x = event.touch.x
			local y = event.touch.y
			print("touched: X=" .. x .. " Y=" .. y)
			
		-- End Touch If Statement 
		end
	
	-- End Go To Main Menu Function 
	end

	-- Event Listener | GoToMainmenu Function | btn_go_to_mainmenu 
	btn_go_to_mainmenu:addEventListener(Event.TOUCHES_END, GoToMainmenu, btn_go_to_mainmenu)

-- End Settings Init Function 
end



