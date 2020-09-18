local inspect = require('lib/inspect')

local function findMax(...)
  local arguments = {...} -- takes all arguments and stores them in the table
  print(arguments, inspect(arguments))
  local max = ... -- grab first one
  for i = 1, #arguments do -- #arguments gives count, default increment by 1
    if arguments[i] > max then
      max = arguments[i]
    end -- if
  end -- for

  return max
end -- function

local answer = findMax(1, 3, 4, 10, 20, 39, 9, 9, 3)
print(answer);
