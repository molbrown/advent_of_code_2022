defmodule AdventOfCode.Day02 do
  def part1(input) do
    Enum.map(input, fn x -> match(x) end)
    |> Enum.sum
  end

  def part2(input) do
    Enum.map(input, fn x -> "#{x}2" end)
    |> part1()
  end

  def match("A" <> rest) do
    case rest do
      "X" -> 4
      "Y" -> 8
      "Z" -> 3
      "X2" -> 3
      "Y2" -> 4
      "Z2" -> 8
    end
  end

  def match("B" <> rest) do
    case rest do
      "X" -> 1
      "Y" -> 5
      "Z" -> 9
      "X2" -> 1
      "Y2" -> 5
      "Z2" -> 9
    end
  end

  def match("C" <> rest) do
    case rest do
      "X" -> 7
      "Y" -> 2
      "Z" -> 6
      "X2" -> 2
      "Y2" -> 6
      "Z2" -> 7
    end
  end
end
