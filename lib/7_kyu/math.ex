defmodule Math do
  def square?(n) when n < 0, do: "#{n} is not a perfect square"
  def square?(n) do
    case :math.pow(n, 0.5) do
      number ->
        number =
          number
          |> Float.to_string()
        if String.ends_with?(number, ".0") do
          "#{n} is a perfect square"
        else
          "#{n} is not a perfect square"
        end
    end
  end
end
