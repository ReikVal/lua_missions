--[[
  EXERCISE: Monkey-patching strings

  With all you have learnt now, you should be able to do this exercise

  Add the necessary code below so that the test at the end passes

]]

-- INSERT YOUR CODE HERE

local mt = getmetatable("").__index
function mt.starts_with(str, t)
    return string.find(str, t, 1, #t)
end

function mt.ends_with(str, t)
    return string.find(str, t, #str - #t)
end

-- END OF CODE INSERT

function test_starts_with()
  local str = "Lua is awesome"

  assert_true(str:starts_with("L"))
  assert_true(str:starts_with("Lua"))
  assert_true(str:starts_with("Lua is"))
end

function test_ends_with()
  local str = "Lua is awesome"

  assert_true(str:ends_with("e"))
  assert_true(str:ends_with("some"))
  assert_true(str:ends_with("awesome"))
end

-- hint: string == getmetatable("").__index
