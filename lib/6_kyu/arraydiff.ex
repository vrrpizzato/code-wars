defmodule ArrayDiff do
  def array_diff(a, _b) when a == [], do: []
  def array_diff(a, b) when b == [], do: a
  def array_diff(a, b) do
    Enum.reject(a, fn x -> Enum.member?(b, x) end)
  end
end
