defmodule GCDTest do
  use ExUnit.Case

  test "GCD.of/1 when y is 0 then returns x" do
    assert GCD.of(2, 0) == 2
  end

  test "GCD.of/1 when y is different than 0" do
    assert GCD.of(2, 2) == 2
  end
end

