

--block Class
local block = {} -- table representing class planet
block.__index = block --failed table lookups should fall back to class table to get methods 
	
function block.new(center_x, center_y, radius, outer_rad, inner_rad, outer_arc, inner_arc, colour, image)
	local self = setmetatable({}, block)
  self.center_x = center_x
  self.center_y = center_y
  self.inner_arc = inner_arc
  self.outer_arc = outer_arc
  self.inner_rad = inner_rad
  self.outer_rad = outer_rad
  self.colour = colour
  self.image = image
  return self
end

function block.set_center_x(self, val)
  self.center_x = val
end

function block.get_center_x(self)
  return self.center_x
end

function block.set_center_y(self, val)
  self.center_y = val
end

function block.get_center_y(self)
  return self.center_y
end

function block.set_inner_rad(self, val)
  self.inner_rad= val
end

function block.get_inner_rad(self)
  return self.inner_rad
end

function block.set_outer_rad(self, val)
  self.outer_rad = val
end

function block.get_outer_rad(self)
  return self.outer_rad
end

function ring.set_inner_arc(self, val)
  self.inner_arc= val
end

function ring.get_inner_arc(self)
  return self.inner_arc
end

function ring.set_outer_arc(self, val)
  self.outer_arc = val
end

function ring.get_outer_arc(self)
  return self.outer_arc
end

function ring.set_image(self, val)
  self.image = val
end

function ring.get_image(self)
  return self.image
end