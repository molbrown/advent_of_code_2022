defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  test "part1" do
    input = ["AY", "BX", "CZ"]
    result = part1(input)

    assert result == 15
  end

  test "part2" do
    input = ["AY", "BX", "CZ"]
    result = part2(input)

    assert result == 12
  end
end
