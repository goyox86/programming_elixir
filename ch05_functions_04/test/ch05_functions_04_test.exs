defmodule Ch05Functions04Test do
  use ExUnit.Case

  test "prefix: takes a string and returns a function that takes another string " do
    assert is_function Ch05Functions04.prefix("Mr.")
  end

  test "prefix: the returned function concatenates the first (outer string) with the one passed to it" do
    Ch05Functions04.prefix("Mr.").("Jose Narvaez") == "Mr. Jose Narvaez"
  end
end
