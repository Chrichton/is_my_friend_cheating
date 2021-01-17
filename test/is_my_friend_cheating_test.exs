defmodule IsMyFriendCheatingTest do
  use ExUnit.Case
  doctest IsMyFriendCheating

  test "remov_nb(26)" do
    assert IsMyFriendCheating.remov_nb(26) == [{15, 21}, {21, 15}]
  end

  test "remov_nb(100)" do
    assert IsMyFriendCheating.remov_nb(100) == []
  end

  # test "remov_nb(1000003)" do
  #   assert IsMyFriendCheating.remov_nb(1_000_003) == []
  # end

  test "double" do
    assert IsMyFriendCheating.remov_nb(878) == [{601, 640}, {640, 601}]
  end

  test "order" do
    assert IsMyFriendCheating.remov_nb(1753) == [
             {937, 1638},
             {1042, 1473},
             {1473, 1042},
             {1638, 937}
           ]
  end
end
