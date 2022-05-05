defmodule BirdCount do
  @moduledoc """
  You're the avid bird watcher that keeps track of how many birds have visited your garden on any given day
  """

  @doc """
   This function should take a list of daily bird counts and return today's count. If the list is empty, it should return nil
  """
  @spec today(List) :: Integer
  def today([]), do: nil
  def today([h | _t]), do: h

  @doc """
   If the list is empty, return [1]
  """
  @spec increment_day_count(List) :: List
  def increment_day_count([]), do: [1]  

    @doc """
   This function should take a list of daily bird counts and increment the today's count by 1.
  """
  @spec increment_day_count(List) :: List
  def increment_day_count([h | t]), do: [h + 1 | t]

  @doc """
  It should take a list of daily bird counts. It should return true if there was at least one day when no birds visited the garden, and false otherwise.
  """
  @spec has_day_without_birds?(List) :: boolean()
  def has_day_without_birds?([]), do: false

  @doc """
  It should take a list of daily bird counts. It should return true if there was at least one day when no birds visited the garden, and false otherwise.
  """
  @spec has_day_without_birds?(List) :: boolean()
  def has_day_without_birds?([h | t]), do: h == 0 or has_day_without_birds?(t)

  @doc """
  It should take a list of daily bird counts and return the total number that visited your garden
  """
  @spec total(List) :: Integer
  def total([]), do: 0

  @doc """
  It should take a list of daily bird counts and return the total number that visited your garden
  """
  @spec total(List) :: Integer
  def total([h | t]), do: h + total(t)

  @doc """
   It should take a list of daily bird counts and return the number of busy days.
   A busy day is one where five or more birds have visited your garden.
  """
  @spec busy_days(List) :: Integer
  def busy_days([]), do: 0
  def busy_days([h | t]) when h >= 5, do: 1 + busy_days(t)
  def busy_days([h | t]), do: busy_days(t)
end
