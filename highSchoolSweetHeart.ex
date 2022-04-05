defmodule HighSchoolSweetheart do

  @doc """
  It should take a name and return its first letter. It should clean up any unnecessary whitespace from the name.
  """
  @spec first_letter(String) :: String
  def first_letter(name) do
    # Please implement the first_letter/1 function
    String.trim(name) |> String.first()
  end

  @doc """
  It should take a name and return its first letter, uppercase, followed by a dot
  """
  @spec initial(String) :: String
  def initial(name) do
    # Please implement the initial/1 function
    String.upcase(first_letter(name)) <> "."
  end

  @doc """
  It should take a full name, consisting of a first name and a last name separated by a space, and return the initials
  """
  @spec initials(String) :: String
  def initials(full_name) do
    # Please implement the initials/1 function
    [first_name, last_name] = String.split(full_name)
    initial(first_name) <> " " <> initial(last_name)
  end

  @doc """
  It should take two full names and return the initials
  """
  @spec pair(String, String) :: String
  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
