defmodule AdventOfCode.Day02 do
  def part1(input) do
    Enum.map(input, fn x -> match(x) end)
    |> Enum.sum
  end

  def part2(_args) do
  end

  def match("A" <> rest) do
    case rest do
      "X" -> 4
      "Y" -> 8
      "Z" -> 3
    end
  end

  def match("B" <> rest) do
    case rest do
      "X" -> 1
      "Y" -> 5
      "Z" -> 9
    end
  end

  def match("C" <> rest) do
    case rest do
      "X" -> 7
      "Y" -> 2
      "Z" -> 6
    end
  end
end
