require IEx

defmodule StringCalculator do
  def add(""), do: 0

  def add(numbers) when is_bitstring(numbers) do
    numbers
    |> String.replace(~r/[^\d]/, "")
    |> String.codepoints
    # |> check_for_negative
    |> Enum.reduce(0, fn(number, acc) -> acc + String.to_integer(number) end)
  end
end
