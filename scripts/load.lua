local center_radius = 0
local getImage = require "scripts.get_Image"
local load = {}
local ring_list = require "scripts.ring_class"
local block_list = require "scripts.block_class"


function load.level()
	local rings, center_rad = load.ring()
	local blocks = rings.blocks
	local center = load.center(center_rad)
	return rings, blocks, center 
end




function load.ring()

	local radius_in = 150
	local radius_out = 200
	
	--load ring images into local array
	local images= {}
	local rings = {}
	images = getImage.ring()

	for i = 1,5 do			
		rings[i]  = ring_list.new(load.block(radius_in, radius_out), self.cord_x, self.cord_y, radius_in, radius_out, images[i])
		
		radius_out = radius_in
		radius_in = radius_out - 50
    end

    center_radius = radius_in
    return rings, center_radius
end

function load.block(radius_in, radius_out)
	--start on x-axis
	local theta_f = 22.5
	local theta_i = 0
	local blocks = {}

	--load block images into local array
	local block_image = {}
	local block_colour = {}
	block_image, block_colour = getImage.block()

	for i =1 ,16 do
		blocks[i] = block_list.new(block_colour[i], radius_in, radius_out, theta_f, theta_i, block_image[i])
		theta_i = theta_f
		theta_f = theta_f + 22.5
	end
	return blocks
end

function load.center(radius)

	local image, colour = getImage.center()
	self.center = center_list.new(image, colour, radius)
end



return load