defmodule Mix.Tasks.D06.P1 do
  use Mix.Task

  import AdventOfCode.Day06

  @shortdoc "Day 06 Part 1"
  def run(args) do
    input = get_input()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end

  def get_input do
    "../../data/day_06.txt"
    |> Path.expand(__DIR__)
    |> File.stream!()
    |> Stream.map(&String.codepoints()/1)
    |> Enum.to_list()
    |> List.first()
  end
end
