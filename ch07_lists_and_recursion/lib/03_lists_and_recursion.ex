#Write a max(list) that returns the element with the maximum value in the list. (This is slightly 
#trickier than it sounds.)

defmodule MyList03 do
 def caesar([], _), do: []
 def caesar([head | tail], n) when head+n <= ?z, do: [head + n | caesar(tail, n) ]
 def caesar([head | tail], n), do: [head+n-26 | caesar(tail, n) ]
end
