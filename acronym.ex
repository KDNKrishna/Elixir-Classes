defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string |> String.split([" ", "-", "_"]) |> Enum.filter(fn x -> x != "" end)|> Enum.map(fn(x) -> String.at(x, 0) end) |> List.to_string() |> String.upcase()
  end
end
