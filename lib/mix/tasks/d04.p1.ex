defmodule Mix.Tasks.D04.P1 do
  use Mix.Task

  import AdventOfCode.Day04

  @shortdoc "Day 04 Part 1"
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
    "../../data/day_04.txt"
    |> Path.expand(__DIR__)
    |> File.stream!()
    |> Stream.map(&String.trim_trailing/1)
    |> Stream.map(&String.split(&1, ["-", ","], trim: true))
    |> Enum.to_list()
    |> Enum.map(&Enum.map(&1, fn x -> Integer.parse(x) end))
    |> Enum.map(fn [{a, _}, {b, _}, {c, _}, {d, _}] -> [a..b, c..d] end)
  end
end
