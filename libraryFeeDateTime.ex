defmodule LibraryFees do
  @doc"""
  """
  @spec datetime_from_string(String.t()) :: Integer
  def datetime_from_string(string) do
    # Please implement the datetime_from_string/1 function
    date = String.slice(string, 0..9)
    date_with_time = date <> " "<> String.slice(string, 11..18)
    NaiveDateTime.from_iso8601!(date_with_time)
  end

  def before_noon?(datetime) do
    # Please implement the before_noon?/1 function
    updatedDateTime = NaiveDateTime.to_string(datetime)
    newDate = String.slice(updatedDateTime, 11..12)
    cond do
      newDate < "12" -> true
      true        -> false
   end
  end

  def return_date(checkout_datetime) do
    # Please implement the return_date/1 function
    dateTime = NaiveDateTime.to_date(checkout_datetime)
    Date.add(dateTime, 28)
  end

  def days_late(planned_return_date, actual_return_datetime) do
    # Please implement the days_late/2 function
  end

  def monday?(datetime) do
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
  end
end
