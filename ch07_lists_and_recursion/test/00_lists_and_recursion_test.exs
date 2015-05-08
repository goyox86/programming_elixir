defmodule ListsAndRecursionTest00 do
  use ExUnit.Case

  test "MyList00.sum/1 sums all the elements on the list" do
    assert MyList00.sum([1,2,3]) == 6
  end

  test "MyList00.sum/1 sums of empty list is 0" do
    assert MyList00.sum([]) == 0
  end
end
