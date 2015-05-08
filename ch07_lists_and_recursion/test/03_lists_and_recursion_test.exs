defmodule ListsAndRecursionTest01 do
  use ExUnit.Case

  test "MyList00.mapsum/2 applies the fun to each element and sums all the results" do
    assert MyList01.mapsum [1, 2, 3], &(&1 * &1)
  end

  test "MyList00.mapsum/2 with an empty list is 0" do
    assert MyList01.mapsum [], &(&1 * &1)
  end
end
