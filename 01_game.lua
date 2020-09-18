local function getRandomNumber(maxValue)
  math.randomseed(os.time()) -- calling
  return math.random(maxValue) -- creates random number from 1 to maxValue
end

local function handleGuesses(...)
  local lowMessage, highMessage, number = ...

  local answer = 0

  while answer ~= number do

    answer = io.read("*n") -- read a number from user "*n"

    if answer < number then
      print(lowMessage)
    elseif answer > number then
      print(highMessage)
    else
      break
    end -- if

    print "Guess again"

  end -- while
end -- function

local number = getRandomNumber(100);

print "Guess a number"
print('Wylosowano: ' .. number)

handleGuesses('Too low', 'Too high', number)



print('You got it: ' .. number)
