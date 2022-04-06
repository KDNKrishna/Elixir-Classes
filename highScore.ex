defmodule HighScore do

  @doc """
  It doesn't take any arguments and returns a new, empty map of high scores.
  """
  @spec new() :: Map
  def new() do
    # Please implement the new/0 function
    %{}
  end

  @doc """
  It is a function which takes 3 arguments.
  The first argument is the map of scores.
  The second argument is the name of a player as a string.
  The third argument is the score as an integer. The argument is optional, implement the third argument with a default value of 0.
  """
  @spec add_player(Map, String, Integer) :: Map
  def add_player(scores, name, score \\ 0) do
    # Please implement the add_player/3 function
    Map.put(scores, name, score)
  end

  @doc """
  It is to remove a player from the high score map.
  The first argument is the map of scores.
  The second argument is the name of the player as a string.
  """
  @spec add_player(Map, String) :: Map
  def remove_player(scores, name) do
    # Please implement the remove_player/2 function
    Map.delete(scores, name)
  end

  @doc """
  It is to reset a player's score
  The first argument is the map of scores.
  The second argument is the name of the player as a string, whose score you wish to reset.
  """
  @spec reset_score(Map, String) :: Map
  def reset_score(scores, name) do
    # Please implement the reset_score/2 function
    Map.put(scores, name, 0)
  end

  @doc """
  It is to update a player's score by adding to the previous score
  The first argument is the map of scores.
  The second argument is the name of the player as a string, whose score you wish to update.
  The third argument is the score that you wish to add to the stored high score.
  """
  @spec update_score(Map, String, Integer) :: Map
  def update_score(scores, name, score) do
    # Please implement the update_score/3 function
    Map.update(scores, name, score, &(&1 + score))
  end

  @doc """
  It is to get a list of players
  The first argument is the map of scores.
  """
  @spec get_players(Map) :: Map
  def get_players(scores) do
    # Please implement the get_players/1 function
    Map.keys(scores)
  end
end
