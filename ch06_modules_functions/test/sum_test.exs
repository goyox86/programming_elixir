defmodule SumTest do
  use ExUnit.Case

  test "Sum.of/1 calculates the sum of all numbers up n" do
    assert Sum.of(4) == 10
  end
end
