defmodule LibraryFees do

  @doc """
  It should take an ISO8601 datetime string as an argument, and return a NaiveDateTime struct.
  """
  @spec datetime_from_string(String.t()) :: Calendar.naive_datetime()
  def datetime_from_string(string) do
    # Please implement the datetime_from_string/1 function
    NaiveDateTime.from_iso8601!(string)
  end

  @doc """
  If a book was checked out before noon, the reader has 28 days to return it. If it was checked out at or after noon, it's 29 days.
  It should take a NaiveDateTime struct and return a boolean.
  """
  @spec before_noon?(Calendar.naive_datetime()) :: boolean()
  def before_noon?(datetime) do
    # Please implement the before_noon?/1 function
    updatedDateTime = NaiveDateTime.to_string(datetime)
    newDate = String.slice(updatedDateTime, 11..12)
    newDate < "12"
  end

  @doc """
  Based on the checkout datetime, calculate the return date. It should take a NaiveDateTime struct and return a Date struct, either 28 or 29 days later
  """
  @spec return_date(Calendar.naive_datetime()) :: Calendar.date()
  def return_date(checkout_datetime) do
    # Please implement the return_date/1 function
    days_to_add = case before_noon?(checkout_datetime) do
      true ->28
      false -> 29
     end
   checkout_datetime |> NaiveDateTime.to_date() |> Date.add(days_to_add)
  end

  @doc """
  It should take a Date struct - the planned return datetime, and a NaiveDateTime struct - the actual return datetime.

If the actual return date is on an earlier or the same day as the planned return datetime, the function should return 0. Otherwise, the function should return the difference between those two dates in days.

The library tracks both the date and time of the actual return of the book for statistical purposes, but doesn't use the time when calculating late fees
  """
  @spec days_late(Calendar.date(), Calendar.naive_datetime()) :: Integer
  def days_late(planned_return_date, actual_return_datetime) do
    # Please implement the days_late/2 function
    final = Date.diff(actual_return_datetime, planned_return_date)
    if final <= 0 do
      0
    else
      final
    end

  end

  @doc """
  It should take a NaiveDateTime struct and return a boolean.
  """
  @spec monday?(Calendar.naive_datetime()) :: boolean()
  def monday?(datetime) do
    # Please implement the monday?/1 function
    date = NaiveDateTime.to_date(datetime)
    latest = Date.day_of_week(date)
    latest == 1
  end

  @doc """
  It should take three arguments - two ISO8601 datetime strings, checkout datetime and actual return datetime, and the late fee for one day. It should return the total late fee according to how late the actual return of the book was.
  Include the special Monday offer. If you return the book on Monday, your late fee is 50% off, rounded down.
  """
  @spec calculate_late_fee(Calendar.iso_days(), Calendar.iso_days(), Integer) :: Integer
  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
    return_datetime = datetime_from_string(return)
    days_late =
      checkout
      |> datetime_from_string()
      |> return_date()
      |> days_late(return_datetime)
    fee = rate * days_late
    if monday?(return_datetime), do: div(fee, 2), else: fee
  end
end
