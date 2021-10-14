defmodule Inverter do
  def invert(list) do
    list |> Enum.map(&(-&1))
  end
end
