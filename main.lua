local level = require("scripts.level_class")
local load = require("scripts.load")
local button = require("scripts.button")


local begin = function()
	local rings, blocks, center = load.level()
	local curr_lvl = level(5, 4,3,2, {}, {}, {})
	curr_lvl = begin.load_level
	
end

-- function Touches_begin(event)
-- 	do something
-- end


-- mysprite:addEventListener(Event.TOUCHES_BEGIN, Touches_begin)

-- function Touches_end(event)
-- 	do something
-- end

-- mysprite:addEventListener(Event.TOUCHES_END, Touches_end)

-- function Touches_move(event)
-- 	do something
-- end

-- mysprite:addEventListerner(Event.TOUCHES_MOVE, Touches_move)


local background = Bitmap.new(Texture.new("pictures/background.png"))
stage:addChild(background)

background:setX(100)
background:setY(50)
background:setAnchorPoint(0.5,0.5)
background:setPosition(100,230)

local ring = Bitmap.new(Texture.new("pictures/ring.png"))
stage:addChild(ring)
ring:setX(160)
ring:setY(230)
ring:setAnchorPoint(0.5, 0.5)

