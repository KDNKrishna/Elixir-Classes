defmodule ResistorColorDuo do

  @resistance_colors %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }
  @doc """
  Calculate a resistance value from two colors
For Example: brown-green should return 15 brown-green-violet should return 15 too, ignoring the third color.
  """
  @spec value(colors :: [atom]) :: integer
  def value([color1 | [color2 | rest]]) do
    @resistance_colors[color1] * 10 + @resistance_colors[color2]
  end
end
