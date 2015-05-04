# I’m thinking of a number between 1 and 1000.…

# The most efficient way to find the number is to guess halfway between the low and high numbers of the range. If our guess is too big, then the answer lies between the bottom of the range and one less than our guess. If our guess is too small, then the answer lies between one more than our guess and the end of the range.

# Your API will be guess(actual, range), where range is an Elixir range.

# Your output should look similar to this:
# iex> Chop.guess(273, 1..1000)
# Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273

defmodule Chop do
  def guess(number, start..finish) do
    do_guess(number, div(start + finish, 2), start..finish)
  end

  def do_guess(number, guessed_number, start..finish) when number == guessed_number do
    IO.puts guessed_number
  end

  def do_guess(number, guessed_number, start..finish) when number > guessed_number do
    IO.puts("Is it #{guessed_number}")
    start = guessed_number + 1
    do_guess(number, div(start + finish, 2), start..finish)
  end

  def do_guess(number, guessed_number, start..finish) when number < guessed_number do
    IO.puts("Is it #{guessed_number}")
    finish = guessed_number - 1
    do_guess(number, div(start + finish, 2), start..finish)
  end
end
