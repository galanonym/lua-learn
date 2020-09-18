local inspect = require('lib/inspect')

local function get_random_number(max_value)
  math.randomseed(os.time()) -- calling
  return math.random(max_value) -- creates random number from 1 to max_value
end

local function handle_guesses(...)
  local low_message, high_message, number = ...

  local guesses = {}

  local answer = 0

  while answer ~= number do

    answer = io.read('*n') -- read a number from user '*n'

    local index = #guesses + 1
    guesses[index] = answer

    if answer < number then
      print(low_message)
    elseif answer > number then
      print(high_message)
    else
      break
    end -- if

    print 'Guess again'
  end -- while

  return guesses
end -- function

local number = get_random_number(100);

print 'Guess a number'
print('Wylosowano: ' .. number)

local guesses = handle_guesses('Too low', 'Too high', number)

print('You got it in ' .. #guesses .. ' tries, and number was ' .. number)
print(inspect(guesses))
