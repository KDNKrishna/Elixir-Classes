defmodule RPG.CharacterSheet do

  @doc """
  It should print a welcome message, and return :ok.
  """
  @spec welcome() :: String.t()
  def welcome() do
    # Please implement the welcome/0 function
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  @doc """
  It should print a question, wait for an answer, and return the answer without leading and trailing whitespace.
  """
  @spec ask_name() :: String.t()
  def ask_name() do
    # Please implement the ask_name/0 function
    String.trim(IO.gets("What is your character's name?\n"))
  end

  @doc """
  It should print a question, wait for an answer, and return the answer without leading and trailing whitespace.
  """
  @spec ask_class() :: String.t()
  def ask_class() do
    # Please implement the ask_class/0 function
    String.trim(IO.gets("What is your character's class?\n"))
  end

  @doc """
  It should print a question, wait for an answer, and return the answer as an integer.
  """
  @spec ask_level() :: String.t()
  def ask_level() do
    # Please implement the ask_level/0 function
    String.trim(IO.gets("What is your character's level?\n")) |> String.to_integer()
  end

  @doc """
  It should welcome the new player, ask for the character's name, class, and level, and return the character sheet as a map. It should also print the map with the label "Your character".
  """
  @spec run() :: map()
  def run() do
    # Please implement the run/0 function
    IO.puts("Welcome! Let's fill out your character sheet together.")
    a= String.trim(IO.gets("What is your character's name?\n"))
    b = String.trim(IO.gets("What is your character's class?\n"))
    c = String.trim(IO.gets("What is your character's level?\n")) |> String.to_integer()
    IO.puts("Your character: %{name: #{a}, class: #{b}, level: #{c}}")
    %{name: a, class: b, level: c}
  end
end
