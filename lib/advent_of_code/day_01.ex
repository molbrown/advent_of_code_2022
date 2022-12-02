defmodule AdventOfCode.Day01 do
  def part1(input) do
    Enum.map(input, fn x -> Enum.sum(x) end)
    |> Enum.max
  end

  def part2(input) do
    Enum.map(input, fn x -> Enum.sum(x) end)
    |> Enum.sort
    |> Enum.take(-3)
    |> Enum.sum
  end
end
