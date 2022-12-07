defmodule AdventOfCode.Day05 do
  @stacks [
            ["T", "P", "Z", "C", "S", "L", "Q", "N"],
            ["L", "P", "T", "V", "H", "C", "G"],
            ["D", "C", "Z", "F"],
            ["G", "W", "T", "D", "L", "M", "V", "C"],
            ["P", "W", "C"],
            ["P", "F", "J", "D", "C", "T", "S", "Z"],
            ["V", "W", "G", "B", "D"],
            ["N", "J", "S", "Q", "H", "W"],
            ["R", "C", "Q", "F", "S", "L", "V"]
          ]

  def part1(input) do
    Enum.reduce(input, @stacks, fn x, acc -> move_single_crates(acc, x) end)
    |> Enum.map(fn x -> List.last(x) end)
    |> Enum.join()
  end

  def part2(input) do
    Enum.reduce(input, @stacks, fn x, acc -> move_many_crates(acc, x) end)
    |> Enum.map(fn x -> List.last(x) end)
    |> Enum.join()
  end

  def move_single_crates(stacks, [0, _from_stack, _to_stack]) do
    stacks
  end

  def move_single_crates(stacks, [times, from_stack, to_stack]) do
    origin = Enum.at(stacks, from_stack - 1)
    destination = Enum.at(stacks, to_stack - 1)
    new_row_a = Enum.drop(origin, -1)
    new_row_b = Enum.concat(destination, Enum.take(origin, -1))

    List.replace_at(stacks, from_stack - 1, new_row_a)
    |> List.replace_at(to_stack - 1, new_row_b)
    |> move_single_crates([times - 1, from_stack, to_stack])
  end

  def move_many_crates(stacks, [quant, from_stack, to_stack]) do
    origin = Enum.at(stacks, from_stack - 1)
    destination = Enum.at(stacks, to_stack - 1)
    new_row_a = Enum.drop(origin, -quant)
    new_row_b = Enum.concat(destination, Enum.take(origin, -quant))

    List.replace_at(stacks, from_stack - 1, new_row_a)
    |> List.replace_at(to_stack - 1, new_row_b)
  end
end
