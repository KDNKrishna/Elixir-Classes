defmodule KitchenCalculator do

  @moduledoc """
  Unit to convert	volume	in milliliters (mL)
  mL	1	1
  US cup	1	240
  US fluid ounce	1	30
  US teaspoon	1	5
  US tablespoon	1	15
  """
  @doc """
  Given a volume-pair tuple, it should return just the numeric component
  """
  @spec get_volume(tuple) :: integer
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  @doc """
  Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.
  """
  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({:cup, volume}) do
    {:milliliter, volume * 240}
  end

  @doc """
  Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.
  """
  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({:fluid_ounce, volume}) do
    {:milliliter, volume * 30}
  end

  @doc """
  Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.
  """
  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({:teaspoon, volume}) do
    {:milliliter, volume * 5}
  end

  @doc """
  Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.
  """
  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({:tablespoon, volume}) do
    {:milliliter, volume * 15}
  end

  @doc """
  Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.
  """
  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({:milliliter, volume}) do
    {:milliliter, volume}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.
  """
  @spec from_milliliter(tuple, integer) :: tuple
  def from_milliliter(volume_pair, :cup) do
    {:cup, get_volume(volume_pair) / 240}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.
  """
  @spec from_milliliter(tuple, integer) :: tuple
  def from_milliliter(volume_pair, :fluid_ounce) do
    {:fluid_ounce, get_volume(volume_pair) / 30}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.
  """
  @spec from_milliliter(tuple, integer) :: tuple
  def from_milliliter(volume_pair, :teaspoon) do
    {:teaspoon, get_volume(volume_pair) / 5}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.
  """
  @spec from_milliliter(tuple, integer) :: tuple
  def from_milliliter(volume_pair, :tablespoon) do
    {:tablespoon, get_volume(volume_pair) / 15}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.
  """
  @spec from_milliliter(tuple, integer) :: tuple
  def from_milliliter(volume_pair, :milliliter) do
    volume_pair
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the given volume to the desired unit.
  """
  @spec convert(tuple, integer) :: tuple
  def convert({unit, volume}, requested_unit) when unit == requested_unit do
    {unit, volume}
  end

  @doc """
  Given a volume-pair tuple and the desired unit, it should convert the given volume to the desired unit.
  """
  @spec convert(tuple, integer) :: tuple
  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end

