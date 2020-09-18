local function adder(x, y)
  return x + y
end

local function subtractor(x, y)
  return x - y
end

local function calculate(x, y, fun)
  return fun(x, y)
end

print "Enter a number"
local x = io.read("*number", "*line") -- get number, then get line
print "Enter another number"
local y = io.read("*number", "*line")
print "Do you want to add or subtract (type + or -)"
local operation = io.read(1, "*line")

local result
if operation == "+" then
  result = calculate(x, y, adder)
elseif operation == "-" then
  result = calculate(x, y, subtractor)
end

print("Result:", result)
