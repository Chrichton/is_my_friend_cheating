defmodule IsMyFriendCheating do
  @moduledoc """
  Documentation for `IsMyFriendCheating`.
  """

  def remov_nb(n) do
    array = Enum.to_list(1..n)

    comb(2, array)
    |> Enum.filter(fn [a, b] -> excluded_numbers?(array, {a, b}) end)
    |> Enum.flat_map(fn [a, b] -> [{a, b}, {b, a}] end)
  end

  def excluded_numbers?(array, {a, b}) do
    a * b == sum_except(array, {a, b})
  end

  def sum_except(array, {a, b}) do
    array
    |> Enum.filter(&(&1 != a && &1 != b))
    |> Enum.sum()
  end

  def comb(0, _), do: [[]]
  def comb(_, []), do: []

  def comb(m, [h | t]) do
    for(l <- comb(m - 1, t), do: [h | l]) ++ comb(m, t)
  end
end
