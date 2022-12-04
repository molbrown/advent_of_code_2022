defmodule AdventOfCode.Day04 do
  def part1(input) do
    Enum.count(input, fn [a, b] -> fully_contained(a, b) end)
  end

  def part2(_args) do
  end

  def fully_contained(a1..a2, b1..b2) do
    cond do
      a1 < b1 -> a2 >= b2
      a1 > b1 -> a2 <= b2
      true -> true
    end
  end
end
