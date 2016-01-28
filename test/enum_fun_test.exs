defmodule LearningElixir.MyEnumTest do
  use ExUnit.Case

  setup do
    {:ok, list: [13,5,17,8]}
  end

  test "all? returns true", meta do
    assert LearningElixir.MyEnums.all?(meta[:list], fn(x) -> x < 20 end)
  end

  test "all? returns false", meta do
    refute LearningElixir.MyEnums.all?(meta[:list], fn(x) -> x < 15 end)
  end

  test "filter returns empty list" do
    f = fn(x) -> x < 5 end
    list = [13,5,17,8]
    assert LearningElixir.MyEnums.filter(list, f) == []
  end

  test "filter returns expected list" do
    f = fn(x) -> x < 10 end
    list = [13,5,17,8]
    assert LearningElixir.MyEnums.filter(list, f) == [5,8]
  end

  test "reverse" do
    assert LearningElixir.MyEnums.reverse([12]) == [12]
    assert LearningElixir.MyEnums.reverse([3,12]) == [12,3]
    assert LearningElixir.MyEnums.reverse([12,3,4,5]) == [5,4,3,12]
  end

  test "last" do
    assert LearningElixir.MyEnums.last([3]) == 3
  end

  test "last1" do
    assert LearningElixir.MyEnums.last([3,6,5,7]) == 7
  end

  test "last2" do
    assert LearningElixir.MyEnums.last([]) == nil
  end


  test "split1" do
    assert LearningElixir.MyEnums.split([1, 2, 3], 2) == {[1,2], [3]}
  end

  test "split2" do
    assert LearningElixir.MyEnums.split([1, 2, 3], 1) == {[1], [2, 3]}
  end

  test "split3" do
    assert LearningElixir.MyEnums.split([1, 2, 3], 0) == {[], [1,2,3]}
  end

  test "split4" do
    assert LearningElixir.MyEnums.split([1, 2, 3], 10) == {[1,2,3], []}
  end

  # test "split5" do
  #   assert LearningElixir.MyEnums.split([1, 2, 3], -1) == {[1,2], [3]}
  # end

  # test "chop_last" do
  #   assert LearningElixir.MyEnums.chop_last([1,6]) == {[1], [6]}
  #   assert LearningElixir.MyEnums.chop_last([1,3,54,6]) == {[1,3,54], [6]}
  # end

     # 

    # 

    # 

    # assert LearningElixir.MyEnums.split([1, 2, 3], -5) == {[], [1,2,3]}
  # end  
end
