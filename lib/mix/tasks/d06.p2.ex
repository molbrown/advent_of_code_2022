defmodule Mix.Tasks.D06.P2 do
  use Mix.Task

  import AdventOfCode.Day06

  @shortdoc "Day 06 Part 2"
  def run(args) do
    input = get_input()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        input
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
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
