------------------getImage Module--------------------------------------

local getImage = {}

local rings = {}
local blocks = {}
local colours = {}


--atmosphere

math.randomseed( os.time() )
math.random(); math.random(); math.random()


function getImage.ring()

	rings = {"Images/rings.png", "Images/rings2.png", "Images/rings3.png","Images/rings4.png","Images/rings5.png"}
	
	return rings
end

function getImage.block()

	local block_image = {"Images/blue_block.png", "Images/red_block.png", "Images/green_block.png", 
	                 "Images/yellow_block.png", "Images/purple_block.png", "Images/orange.png"}

	local colour = {"blue", "red", "green", "yellow", "purple", "orange"}

	for i=1,16 do
		local key = math.random(6)
		blocks[i] = block_image[key]
		colours[i] = colour[key]
		print("block_colour = ", blocks[i])
	end

	return blocks, colours
end

function getImage.center()
	local center_image = {"Images/blue_circle.png", "Images/red_circle.png", "Images/green_circle.png", 
	                     "Images/yellow_circle.png", "Images/purple_circle.png", "Images/orangle_circle.png"}

	local colour = {"blue", "red", "green", "yellow", "purple", "orange"}  
	local key = math.random(6) 

	return center_image[key], colour[key]
end



return getImage



------------------------------------------------------------------------



