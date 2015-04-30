defmodule TimesTest do
  use ExUnit.Case

  test "Times.double/1 doubles n" do
    assert Times.double(2) == 4
  end

  test "Times.triple/1 triplicates n" do
    assert Times.triple(2) == 6
  end

  test "Times.cuadruple/1 cuadruplicates n" do
    assert Times.cuadruple(2) == 8
  end
end
