defmodule AdventOfCode.Day06 do
  def part1(input) do
    Enum.with_index(input)
    |> Enum.find(fn {x, i} -> start_of_packet(input, i) end)
    |> Tuple.to_list()
    |> Enum.at(1)
    |> Kernel.+(1)
  end

  def part2(input) do
    Enum.with_index(input)
    |> Enum.find(fn {x, i} -> start_of_message(input, i) end)
    |> Tuple.to_list()
    |> Enum.at(1)
    |> Kernel.+(1)
  end

  def start_of_packet(stream, index) do
    length(Enum.uniq(Enum.slice(stream, index - 3, 4))) == 4
  end

  def start_of_message(stream, index) do
    length(Enum.uniq(Enum.slice(stream, index - 13, 14))) == 14
  end
end
