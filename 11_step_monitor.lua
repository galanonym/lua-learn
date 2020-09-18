local inspect = require('lib/inspect')

local CalorieCounter = {}

function CalorieCounter:new(calorieGoal)
  local new_table = {}
  new_table.calorieCount = 0
  new_table.calorieGoal = calorieGoal or 4000
  local metatable = {}
  metatable.__index = self
  setmetatable(new_table, metatable)
  return new_table
end

function CalorieCounter:calorie_increment(amount)
  self.calorieCount = self.calorieCount + amount
end

function CalorieCounter:did_reach_goal()
  return self.calorieCount >= self.calorieGoal
end

-- local instance = CalorieCounter:new(1500)
-- print(inspect(instance))

local HealthMonitor = CalorieCounter:new(2000)

function HealthMonitor:new(stepGoal)
  local new_table = {}
  new_table.stepCount = 0
  new_table.stepGoal = stepGoal or 7000
  local metatable = {}
  metatable.__index = self
  setmetatable(new_table, metatable)
  return new_table
end

function HealthMonitor:step_increment(stepAmount)
  self.stepCount = self.stepCount + stepAmount
end

function HealthMonitor:did_reach_goal()
  local goalsReached = 0
  if (self.calorieCount >= self.calorieGoal) then
    print('Calorie goal of ' .. self.calorieCount .. ' reached')
    goalsReached = goalsReached + 1
  else
    print('Calorie goal not reached yet')
  end

  if (self.stepCount >= self.stepGoal) then
    print('Step goal of ' .. self.stepGoal .. ' reached')
    goalsReached = goalsReached + 1
  else
    print('Step goal not reached yet')
  end

  print('You have reached ' .. goalsReached .. ' goals!')
end

local instanceHealthMonitor = HealthMonitor:new(1337)

instanceHealthMonitor:step_increment(500)
instanceHealthMonitor:calorie_increment(30000)
instanceHealthMonitor:did_reach_goal()
-- print(inspect(instanceHealthMonitor))
