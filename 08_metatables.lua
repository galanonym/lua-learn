local person_metatable = {}
local Person = {}

person_metatable.__add = function(creature1, creature2)
  return creature1.name .. creature2.name
end

person_metatable.__index = function(creature, key)
  if key == "name_reverse" then
    return string.reverse(creature.name)
  end
end

-- same as:
--[[
Person.new = function()
  something
end
]]--
function Person.new(name)
  local instanceOfPerson = {}
  instanceOfPerson.name = name

  instanceOfPerson.sayName = function()
    print(name)
  end

  setmetatable(instanceOfPerson, person_metatable)
  return instanceOfPerson
end

local creature1 = Person.new('Bill')
local creature2 = Person.new('John')

print(creature1 + creature2)

print(creature1.name_reverse)
print(creature2.name_reverse)


