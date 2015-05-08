#Write a mapsum function that takes a list and a function. It applies the function to each element
#of the list and then sums the result, so:

#iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
#14

defmodule MyList01 do
  def mapsum([], _), do: 0
  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end
end
