local Dog = {sound = 'woof'}

function Dog:new(how_it_barks)
  local new_table = {}
  new_table.sound = how_it_barks
  local metatable = {}
  -- when we put a table into __index, calls to .xxx where xxx is not defined will be looked up in that table
  metatable.__index = self
  setmetatable(new_table, metatable)
  return new_table
end

function Dog:makeSound()
  print('I say ' .. self.sound)
end

local misiu = Dog:new()
misiu:makeSound()
