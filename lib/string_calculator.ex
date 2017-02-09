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

  # defp check_for_negative(list) do
  #   negatives = Enum.filter(list, fn(e) -> String.to_integer(e) < 0 end)
  #   IEx.pry
  #   IO.puts(negatives)
  #   if length(negatives) > 0, do: raise ArgumentError, message: Enum.join(negatives, ", ")
  #   list
  # end
end
