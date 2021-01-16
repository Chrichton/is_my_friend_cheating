defmodule IsMyFriendCheatingTest do
  use ExUnit.Case
  doctest IsMyFriendCheating

  test "remov_nb(26)" do
    assert IsMyFriendCheating.remov_nb(26) == [{15, 21}, {21, 15}]
  end

  test "remov_nb(100)" do
    assert IsMyFriendCheating.remov_nb(100) == []
  end
end
