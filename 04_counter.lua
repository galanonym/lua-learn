local function simple_counter(max)
  local count = 0
  return function()
    count = count + 1
    if count > max then
      return nil
    end

    return count;
  end
end

local interator_function = simple_counter(50)

-- runs interator_function many times and puts return content from that function into v
-- if interator_function returns nil, then loop stops
for value in interator_function do
  print(value)
end
