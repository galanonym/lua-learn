print "Hello World"

-- 8 basic types
-- nil, bool, number, string, userdata, function, thread, table

-- nil - similar to null or undefined
-- bool - true / false
-- number - no integers, all are floating point
-- string - classic string characters, immutable, cannot be changed [[ multiline ]]
-- userdata - C data stored in variables
-- functions - is actually type
-- thread - special type used with coroutines
-- table - table data structure, like assosiative array, key => value store

-- NB! table, function, userdata and thread are passed by reference, not copy
-- assign variable


local luay = "Con Man"

-- multiple assignment
swap_x = 1
swap_y = 2
swap_x, swap_y = swap_y, swap_x -- easly swap variables

-- Types of expression (values)
--
-- numeric constants
-- string literals
-- variables
-- unary and binary operations
-- function calls
-- function definitions
-- table constructors

-- Operators
-- 
-- arithemetic + - * / ^ %
-- relationnal < > <= >= == ~=
-- logical and not or
-- concatenation ..
-- length #suckers (instead of suckers.length)

local boolean_expression = false

-- if, then else
--
if boolean_expression then
  -- do something
else
  -- do something else
end

-- while
while boolean_expression do
  -- something
end

-- repeat
repeat
  -- something
until boolean_expression

-- for numeric
-- i = start, end, step
for i=1, 10, 1 do
  print(i)
end

-- for generic
-- iteratorFunction is a function that you can call repeatedly to get a value
-- for k, v in iteratorFunction do
  -- something
-- end

-- blocks and scopes
--
-- 
do
  -- seperate scope
  local only_here
end

-- function
--
-- first class citizens can be assigned to variable and returned from a function
function functionName(param1, param2)
  -- something
end

-- variadic functions
--
-- take any number of parameters, that you can then access
local function countStringLengths(...)
  -- do stuff
  local a, b, c = ...
  print(a, b, c)
end

--[[

# metatable
allows us to redefine some of the behavior of the table
we create a table that serves as a prototype for an object or series of objects

metatables are basically just tables that describe of define some behavior
metatables apply to all of the types in Lua, we cannot modify metatables for types like a string or number

you can think of a metatable as a millionare friend which you call if you dont have an answer to something

methamethods are methods that we define on the metatable that will override some behavior or add some behavior

__index <- when you try to get value out of the key
__newindex <- when you try access key that doesnt exist either if you try read that key or write that key
__add
__sub
__mul
__call
__tostring

]]--

--[[

# colon operator

Gives us a shotcut way of creating a method, thats going to take the table that function
is created on, as sort of invisible first parameter
  x:bar(3, 4)
  x.bar(x, 3, 4) <- x is then called self inside the function

x:bar() is often used when mutating something inside x
x.bar(a, b) is often used as normal function doing something with arguments
]]--

--[[

# modules

Module is a luea files that returns a table that exposes what we want to exposse from that module

]]--


--[[

# standard libraries
basic - ipairs, pairs, setmetatable, getmetatable <-- call without qualifier
package - module system like require
string - string processing, not full regex
table - working with tables
io - write and read from a file
os
debug

]]--

--[[
# basic
g = loadfile(filename) -- loads file contents into variable g, that can be runned
dofile(filename) -- loads and runs file contents


# string
pattern maching
substrings - pull out part of the string
lowercase, uppercase

# table
concat
insert - insert into position
maxn - largest index of the table
remove - remove table
sort - can add custom sort function

# math
all the mathematical functions you would expect
sin, cos, floor, pi, rad

# io
io version and file version
io reads and writes into stdin and stdout
file writes or reads file

# os
compatible with many operating systems
date, execute, exit, getenv, clock

]]--
