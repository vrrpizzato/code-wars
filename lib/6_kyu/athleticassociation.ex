defmodule AthleticAssociation do
  def stat(string) do
    string
      |> String.split(", ")
      |> Enum.map(fn x -> x |> String.split("|") end)
      |> Enum.map(fn x ->
        x
        |> List.foldl(0, fn y, acc ->
          if y == List.first(x) do
            String.to_integer(y)*3600
          else
            if y == List.last(x) do
              String.to_integer(y) + acc
            else
              String.to_integer(y)*60 + acc
            end
          end
        end)
      end)
  end
end
