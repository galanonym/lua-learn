local inspect = require('lib/inspect')
local text = require('15_0_html_string')

-- local beginning, stop = text:find('div')
-- print(beginning, stop)
-- print(string.sub(text, beginning, stop))

-- local beginning, stop = text:find('<.->')
-- print(beginning, stop)
-- print(string.sub(text, beginning, stop))

print(text:match('<.->')) -- same as 3 lines above

-- pull all tags in html

for tag in string.gmatch(text, '<div.->') do
  print('Found: ', tag)
end
