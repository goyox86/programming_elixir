# Now we can split a list into its head and its tail, and we can construct a list from a value and a list,
# which become the head and tail of that new list.So why talk about lists after we talk about modules
# and functions? Because lists and recursive functions go together like fish and chips.
defmodule MyList do
  """
    Let’s look at finding the len of a list.
    The len of an empty list is 0.
    The len of a list is 1 plus the len of that list’s tail.
    iex(1)> MyList.eln([2, 3])
    2
  """
  def  len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  """
    Let’s get more ambitious. Let’s write a function that takes a list of numbers and returns a new 
    list containing the square of each. We don’t show it, but these definitions are also inside the
    MyList module.

    iex(1)> MyList.square([2])
    4
  """
  def square([]), do: []
  def square([head | tail]) do
    [head * head | square(tail) ]
  end

  """
    Let’s do something similar—a function that adds 1 to every element in the list

    iex(1)> MyList.add_1([2,3])
    [3, 4]
  """
  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  """
    Let’s generalize this. We’ll define a function called map that takes a list and a function and
    returns a new list containing the result of applying that function to each element in the original.

    iex> MyList.map [1,2,3,4], fn (n) -> n + 1 end
    [2, 3, 4, 5]
  """

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head |tail], total), do: _sum(tail, total + head)

  def reduce([], value, _), do: value
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end
end
