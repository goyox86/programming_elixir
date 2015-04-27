# Write a function that takes three arguments. If the first two are zero, return “FizzBuzz.” If the
# first is zero, return “Fizz.” If the second is zero, return “Buzz.” Otherwise return the third argument.
# Do not use any language features that we haven’t yet covered in this book.

# The operator rem(a, b) returns the remainder after dividing a by b. Write a function that takes a
# single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5),
# and n. Call it seven times with the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz,
# 13, 14, FizzBuzz, 16.”
defmodule FizzBuzz do
  def run(0, 0, _) do
    "FizzBuzz"
  end

  def run(0, _, _) do
    "Fizz"
  end

  def run(_, 0, _) do
    "Buzz"
  end

  def run(first, second, third) do
    third
  end

  def unconditional_run(n) do
    run rem(n, 3) , rem(n, 5), n
  end
end
