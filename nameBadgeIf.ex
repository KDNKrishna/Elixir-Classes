defmodule NameBadge do
  @moduledoc """
    Print name badges for factory employees. Employees have an ID, name, and department name. Employee badge labels are formatted as "[id] - name - DEPARTMENT".
  """

  @doc """
  When the department is missing, assume the badge belongs to the company owner.
  """
  @spec print(non_neg_integer(), String.t(), String.t()) :: String.t()
  def print(id, name, nil) do
    print(id, name, "OWNER")
  end


  @doc """
  It should take an id, name, and a department. It should return the badge label, with the department name in uppercase. Also when the id is missing, it should print a badge without it.
  """
  @spec print(non_neg_integer(), String.t(), String.t()) :: String.t()
  def print(id, name, department) do
    # Please implement the print/3 function
    if id != nil do
      "[#{id}]" <> " - " <> name <> " - " <> String.upcase(department)
    else
      name <> " - " <> String.upcase(department)
    end
  end
end

#def print(nil, name, department) do
#    name <> " - " <> String.upcase(department)
#  end

#  @doc """
#  It should take an id, name, and a department. It should return the badge label, with the department name in uppercase. Also when the id is missing, it should print a badge without it.
#  """
#  @spec print(non_neg_integer(), String.t(), String.t()) :: String.t()
#  def print(id, name, department) do
#    "[#{id}]" <> " - " <> name <> " - " <> String.upcase(department)
#    end
#  end
