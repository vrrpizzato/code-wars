defmodule Kata do
  def square_digits(n) do
    n =
      n
      |>Integer.digits()
      |>Enum.map(fn x -> x*x end)

    List.to_charlist(n)
  end
end
