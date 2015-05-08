#Write a max(list) that returns the element with the maximum value in the list. (This is slightly 
#trickier than it sounds.)

defmodule MyList02 do
  def mymax(list), do: _mymax(list, 0)

  defp _mymax([], cur_max), do: cur_max

  defp _mymax([head | tail], cur_max) when head > cur_max do
    _mymax(tail, head)
  end

  defp _mymax([head | tail], cur_max) when head < cur_max do
    _mymax(tail, cur_max)
  end
end
