defmodule ListFilter do
  def call(list) when is_list(list) do
    numeros = Enum.filter(list, fn element -> is_valid(element) end)
    numeros = Enum.map(numeros, fn element -> String.to_integer(element) end)
    impares = Enum.filter(numeros, fn element -> rem(element, 2) != 0 end)

    IO.inspect(numeros, label: "Numeros")
    IO.inspect(impares, label: "Impares")
  end

  defp is_valid(element) do
    String.match?(element, ~r/^[[:digit:]]+$/)
  end
end
