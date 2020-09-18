local inspect = require('lib/inspect')

local CalorieCounter = {
  count = 0,
  goal = 2000,
}

function CalorieCounter:add(amount)
  self.count = self.count + amount
end

function CalorieCounter:did_reach_goal()
  return self.count >= self.goal
end

function CalorieCounter:new(input_table)
  local new_table = input_table or {}
  local metatable = {}
  metatable.__index = self
  setmetatable(new_table, metatable)
  -- self.__index = self
  -- setmetatable(new_table, self)
  return new_table
end

local instance = CalorieCounter:new({ goal = 1500 })
instance:add(500)

print(instance:did_reach_goal())

instance:add(1200)

print(instance:did_reach_goal())

-- print(inspect(instance))

