defmodule Mix.Tasks.D01.P1 do
  use Mix.Task

  import AdventOfCode.Day01

  @shortdoc "Day 01 Part 1"
  def run(args) do
    input = get_input()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end

  defp get_input do
    "../../data/day_01.txt"
    |> Path.expand(__DIR__)
    |> File.stream!()
    |> Stream.map(&String.trim_trailing/1)
    |> Enum.to_list()
    |> Enum.chunk_by(fn(x) -> x != "" end)
    |> Enum.reject(fn(x) -> x == [""] end)
    |> Enum.map(&Enum.map(&1, fn x -> String.to_integer(x) end))
  end
end
