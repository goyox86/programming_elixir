defmodule FizzBuzzTest do
  use ExUnit.Case

  test "run when first and second are both 0 returns 'FizzBuzz'" do
    assert FizzBuzz.run(0, 0, 1) == "FizzBuzz"
  end

  test "run when first is 0 returns 'Fizz'" do
    assert FizzBuzz.run(0, 1, 2) == "Fizz"
  end

  test "run when second is 0 returns 'Buzz'" do
    assert FizzBuzz.run(1, 0, 2) == "Buzz"
  end

  test "run when none of them is 0 returns the third" do
    assert FizzBuzz.run(1, 2, 3) == 3
  end

  test "returns the correct series for n=10,11,12,13,14,15,16," do
    assert FizzBuzz.unconditional_run(10) == "Buzz"
    assert FizzBuzz.unconditional_run(11) == 11
    assert FizzBuzz.unconditional_run(12) == "Fizz"
    assert FizzBuzz.unconditional_run(13) == 13
    assert FizzBuzz.unconditional_run(14) == 14
    assert FizzBuzz.unconditional_run(15) == "FizzBuzz"
    assert FizzBuzz.unconditional_run(16) == 16
  end
end
