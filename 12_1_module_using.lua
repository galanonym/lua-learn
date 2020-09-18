local inspect = require('lib/inspect')

local health = require('12_0_module_step_monitor')

local HealthMonitor = health.HealthMonitor

local instanceHealthMonitor = HealthMonitor:new(1337)

instanceHealthMonitor:step_increment(500)
instanceHealthMonitor:calorie_increment(30000)
instanceHealthMonitor:did_reach_goal()
print(inspect(instanceHealthMonitor))
