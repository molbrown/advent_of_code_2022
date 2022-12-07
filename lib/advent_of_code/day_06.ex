defmodule AdventOfCode.Day06 do
  def part1(input) do
    Enum.with_index(input)
    |> Enum.find(fn {x, i} -> start_of_packet(input, i) end)
    |> Tuple.to_list()
    |> Enum.at(1)
    |> Kernel.+(1)
  end

  def part2(_args) do
  end

  def start_of_packet(stream, index) when index < 3 do
    false
  end

  def start_of_packet(stream, index) do
    length(Enum.uniq([Enum.at(stream, index - 3), Enum.at(stream, index - 2), Enum.at(stream, index - 1), Enum.at(stream, index)])) == 4
  end
end
