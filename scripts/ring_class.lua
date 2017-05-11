local class = require "hump.class"
local camera = require "hump.camera"
local gamestate = require "hump.gamestate"
local signal = require "hump.signal"
local timer = require "hump.timer"
local vector = require "hump.vector"

--ring Class
local ring = {} -- table representing class planet
ring.__index = ring --failed table lookups should fall back to class table to get methods 
	
function ring.new(center_x, center_y, inner_rad, outer_rad, image)
	local self = setmetatable({}, ring)
  self.center_x = center_x
  self.center_y = center_y
  self.inner_rad = inner_rad
  self.outer_rad = outer_rad
  self.age = age
  self.colour = colour
  self.image = image
  return self
end

function ring.set_center_x(self, val)
  self.center_x = val
end

function ring.get_center_x(self)
  return self.center_x
end

function ring.set_center_y(self, val)
  self.center_y = val
end

function ring.get_center_y(self)
  return self.center_y
end

function ring.set_inner_rad(self, val)
  self.inner_rad= val
end

function ring.get_inner_rad(self)
  return self.inner_rad
end

function ring.set_outer_rad(self, val)
  self.outer_rad = val
end

function ring.get_outer_rad(self)
  return self.outer_rad
end

function ring.set_image(self, val)
  self.image = val
end

function ring.get_image(self)
  return self.image
end
