defmodule IsMyFriendCheating do
  @moduledoc """
  Documentation for `IsMyFriendCheating`.
  """

  def remov_nb(n) do
    1..n
    |> Enum.to_list()
    |> comb(2)
    |> Enum.filter(fn [a, b] -> excluded_numbers?(n, {a, b}) end)
    |> Enum.flat_map(fn [a, b] -> [{a, b}, {b, a}] end)
  end

  def excluded_numbers?(n, {a, b}) do
    a * b == n / 2 * (n + 1) - a - b
  end

  def comb(_, 0), do: [[]]
  def comb([], _), do: []

  def comb([h | t], m) do
    for(l <- comb(t, m - 1), do: [h | l]) ++ comb(t, m)
  end
end
