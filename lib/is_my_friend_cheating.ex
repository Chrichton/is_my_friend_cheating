defmodule IsMyFriendCheating do
  @moduledoc """
  Documentation for `IsMyFriendCheating`.
  """

  def remov_nb(n) do
    comb(n)
    |> Enum.flat_map(fn {a, b} -> [{a, b}, {b, a}] end)
    |> Enum.uniq()
    |> Enum.sort_by(fn {a, _b} -> a end)
  end

  def comb(n) do
    ceil = ceil(n / 2)
    sum = n / 2 * (n + 1)

    comb_recursive(ceil, b_bound(ceil, sum, n), sum, n, [])
  end

  def comb_recursive(a, _b, _sum, n, acc) when a >= n,
    do: acc

  def comb_recursive(a, b, sum, n, acc) when a * b + a + b == sum,
    do: comb_recursive(a, b + 1, sum, n, [{a, b} | acc])

  def comb_recursive(a, b, sum, n, acc) when b > ceil((sum - 1 - a) / a) do
    comb_recursive(a + 1, b_bound(a, sum, n), sum, n, acc)
  end

  def comb_recursive(a, b, sum, n, acc),
    do: comb_recursive(a, b + 1, sum, n, acc)

  def b_bound(a, sum, n) do
    floor((sum - n - a) / a)
  end
end
