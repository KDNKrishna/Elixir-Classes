defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key) do
    new_number = Tuple.to_list(numbers)
    case Enum.member?(new_number, key) do
      true ->
        res = Enum.find_index(new_number, fn x -> div(x, key) == 1 end)
        {:ok, res}
      _ ->
        :not_found
    end
  end
end
