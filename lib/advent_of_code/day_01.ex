defmodule AdventOfCode.Day01 do
  def part1(input) do
    Enum.map(input, fn x -> Enum.sum(x) end)
    |> Enum.max
  end

  def part2(_args) do
  end
end
