local file = io.open('text.txt', 'r') -- open up a file in "r" mode (read)

--[[
*a - read it all
*l - read next line
*n - read a number
x - read x characters
--]]
local text = file:read('*a')

print(text)

print('---')

-- when you do file read *a then it closes it at the end
file = io.open('text.txt', 'r') -- open up a file in "r" mode (read)

for line in file:lines() do
  print(line)
end
