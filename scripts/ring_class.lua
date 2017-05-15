
local block_list = require "scripts.block_class"

local ring = {}
ring.__index = ring

function ring.new(blocks, cord_x, cord_y, radius_in, radius_out, image)
	local self = setmetatable({}, ring)
	self.cord_x = cord_x
    self.image = image
    self.cord_y = cord_y
    self.blocks = blocks
    self.radius_in = radius_in
    self.radius_out = radius_out
    return self
end



function ring.set_blocks(self, blocks)
  self.blocks = blocks
end

function ring.get_blocks(self)
  return self.blocks
end

function ring.set_cord_x(self, cord_x)
  self.cord_x = cord_x
end

function ring.get_cord_x(self)
  return self.cord_x
end

function ring.set_cord_y(self, cord_y)
  self.cord_y = cord_y
end

function ring.get_cord_y(self)
  return self.cord_y
end

function ring.set_radius_in(self, radius_in)
  self.radius_in = radius_in
end

function ring.get_radius_in(self)
  return self.radius_in
end

function ring.set_radius_out(self, radius_out)
  self.radius_out = radius_out
end

function ring.get_radius_out(self)
  return self.radius_out
end


function ring.set_image(self, image)
  self.image = image
end

function ring.get_image(self)
  return self.image
end

return ring
