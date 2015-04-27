# Write a function prefix that takes a string. It should return a new function that takes a second
# string. When that second function is called, it will return a string containing the first string,
# a space, and the second string.

defmodule Ch05Functions04 do
  def prefix(str) do
    fn str2 -> "#{str} #{str2}" end
  end
end
