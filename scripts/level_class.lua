
local block_list = require "scripts.block_class"
local ring_list = require "scripts.ring_class"
local getImage = require "scripts.get_Image"
local load = require "scripts.load"
local center_list = require "scripts.center_class"

local level = {}
level.__index = level

function level.new(t_limit, difficulty, moves, score, rings, blocks, center)
	local self = setmetatable({}, level)
	self.rings = rings
	self.blocks = blocks
	self.center = center
	self.t_limit = t_limit
	self.difficulty = difficulty
	self.score = score
	self.moves = moves
	return self
end

function level.load(self) 
	local center_rad = 0
	self.rings, center_rad = load.ring()
	self.blocks = self.rings.blocks
	self.center = load.center(center_rad)

end

-- function level.end(self) 
-- 	--save all necessary data
-- 	--delete unnecessary data
-- end

function level.set_tlimit(self, t_limit)
  self.t_limit = t_limit
end

function level.get_tlimit(self)
  return self.t_limit
end

function level.set_difficulty(self, difficulty)
  self.difficulty = difficulty
end

function level.get_difficulty(self)
  return self.difficulty
end

function level.set_moves(self, moves)
  self.moves = moves
end

function level.get_moves(self)
  return self.score
end

function level.set_score(self, score)
  self.score = score
end

function level.get_score(self)
  return self.score
end




return level