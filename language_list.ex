defmodule LanguageList do

  @doc """
  Implementing the new/0 function which takes no argument and returns an empty list.
  """
  @spec new() :: []
  def new() do
    []
  end

  @doc """
  Implementing the add/2 function which takes no argument and
  returns the resulting list with the new language prepended to the given list.
  """
  @spec add(list(), String) :: list(String.t())
  def add(list, language) do
    [language | list]
  end

  @doc """
  Implementing the remove/1 function which takes 1 argument and returns he list without the first item.
  Assume the list will always have at least one item.
  """
  @spec remove(list()) :: list(String.t())
  def remove(list) do
    List.delete_at(list, 0)
  end

  @doc """
  Implementing the first/1 function which takes 1 argument and returns the first language in the list.
  """
  @spec first(list()) :: list(String.t())
  def first(list) do
    List.first(list)
  end

  @doc """
  Implementing the count/1 function which takes 1 argument and returns the number of languages in the list.
  """
  @spec count(list()) :: integer()
  def count(list) do
    Enum.count(list)
  end

  @doc """
  Implementing the exciting_list?/1 function which takes 1 argument and returns a boolean value.
  It should return true if "Elixir" is one of the languages in the list.
  """
  @spec exciting_list?(list()) :: boolean()
  def exciting_list?(list) do
    # Please implement
    Enum.member?(list, "Elixir")
  end
end
