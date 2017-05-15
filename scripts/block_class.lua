


--block Class

local block = Core.class(Sprite)


--block.__index = level

function block:init(colour,in_rad, out_rad, theta_f, theta_i, image)
  --local self = setmetatable({}, block)

  self.colour = colour
  self.in_rad = in_rad
  self.out_rad = out_rad
  self.theta_f = theta_f
  self.theta_i = theta_i
  self.image = image
  --return self
end

function

  --METHODS

-- --determines arc length
-- function block.arc(self)
--   local angle_len = math.rad(22.5)
--   local in_ratio = (2*math.pi)/math.rad(angle_len)  
--   local out_ratio = (2*math.pi)/math.rad(angle_len)
--   local in_arc = (2*math.pi*self.in_rad)/in_ratio  
--   local out_arc = (2*math.pi*self.out_rad)/out_ratio
--   return in_arc, out_arc  
-- end




return block







