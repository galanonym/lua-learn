local file = io.open('text.txt', 'w') -- open up a file in "w" mode (write)
file:write("Testing 1 2 3 \n\n")
file:write("ABC 123\n")
file:close()
