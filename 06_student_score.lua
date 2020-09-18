local inspect = require('lib/inspect')

local grades = {}

while true do
  print 'Enter student name (q to quit)'
  local name = io.read()

  if name == 'q' then
    break
  end

  print 'Enter student score'
  local score = io.read("*number", "*line")

  grades[name] = score
end

print 'Printing grades'
print(inspect(grades))
