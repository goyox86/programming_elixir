defmodule FactorialTest do
  use ExUnit.Case

  test "Factorial.of/1 calculates the factorial of n" do
    assert Factorial.of(5) == 120
  end

  test "Sum.of/1 calculates the factorial of 0" do
    assert Factorial.of(0) == 1
  end

  test "Sum.of/1 does'nt accept negative values" do
    assert_raise FunctionClauseError, fn ->
      Factorial.of(-1)
    end
  end
end
