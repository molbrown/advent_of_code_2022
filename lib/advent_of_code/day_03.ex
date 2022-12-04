defmodule AdventOfCode.Day03 do
  @alpha ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  def part1(input) do
    input
    |> Enum.map(&String.graphemes/1)
    |> Enum.map(fn r -> Enum.chunk(r, length(r)/2 |> round) end)
    |> Enum.map(fn [a, b] -> Enum.find(a, fn i -> Enum.member?(b, i) end) end)
    |> Enum.map(fn i -> priority(i) end)
    |> Enum.sum()
  end

  def part2(input) do
    input
    |> Enum.map(&String.graphemes/1)
    |> Enum.chunk_every(3)
    |> Enum.map(fn [a, b, c] -> Enum.filter(a, fn i -> Enum.member?(b, i) && Enum.member?(c, i) end) end)
    |> Enum.map(&Enum.dedup()/1)
    |> List.flatten()
    |> Enum.map(fn i -> priority(i) end)
    |> Enum.sum()
  end

  def priority(item) do
    case Unicode.lowercase?(item) do
      true -> Enum.find_index(@alpha, fn x -> x == item end) + 1
      _ -> Enum.find_index(@alpha, fn x -> x == String.downcase(item) end) + 27
    end
  end
end
 