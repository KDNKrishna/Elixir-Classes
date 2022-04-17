defmodule BirdCount do
  @moduledoc """
  You're an avid bird watcher that keeps track of how many birds have visited your garden on any given day
  """

  @doc """
   This function should take a list of daily bird counts and return today's count. If the list is empty, it should return nil
  """
  @spec today(List) :: Integer
  def today(list) do
    # Please implement the today/1 function
    List.first(list)
  end

  @doc """
   If the list is empty, return [1]
  """
  @spec increment_day_count(List) :: List
  def increment_day_count([]) do
    [1]
  end

  @doc """
   It should take a list of daily bird counts and increment the today's count by 1.
  """
  @spec increment_day_count(List) :: List
  def increment_day_count(list) do
    # Please implement the increment_day_count/1 function
    1+hd(list)
  end

  @doc """
  It should take a list of daily bird counts. It should return true if there was at least one day when no birds visited the garden, and false otherwise.
  """
  @spec has_day_without_birds?(List) :: boolean()
  def has_day_without_birds?(list) do
    # Please implement the has_day_without_birds?/1 function
    0 in list
  end

  @doc """
  It should take a list of daily bird counts and return the total number that visited your garden
  """
  @spec total(List) :: Integer
  def total(list) do
    # Please implement the total/1 function
    Enum.sum(list)
  end

  @doc """
   It should take a list of daily bird counts and return the number of busy days.
   A busy day is one where five or more birds have visited your garden.
  """
  @spec busy_days(List) :: Integer
  def busy_days(list) do
    # Please implement the busy_days/1 function
    a = Enum.filter(list, fn x -> (x == 5 or x > 5) end)
    length(a)
  end
end
