
local block = require "scripts.block_class"

local center = {}
center.__index = center
function center.new(image, colour, radius)

	self.image = image
	self.colour = colour
	self.radius = radius

end


return center