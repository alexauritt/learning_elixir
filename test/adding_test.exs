defmodule LearningElixir.AddingTest do
  use ExUnit.Case

  test "sum returns accumulative sum"  do
    assert LearningElixir.Adding.sum(3) == 6
    assert LearningElixir.Adding.sum(1) == 1
    assert LearningElixir.Adding.sum(-1) == 0
    assert LearningElixir.Adding.sum(0) == 0
  end

  test "sum elements in a list" do
  	assert LearningElixir.Adding.sum([]) == 0
  	assert LearningElixir.Adding.sum([0]) == 0
  	assert LearningElixir.Adding.sum([-4]) == -4
  	assert LearningElixir.Adding.sum([3]) == 3
  	assert LearningElixir.Adding.sum([3,2,6,-4]) == 7
  end

  test "mapsum" do
    assert LearningElixir.Adding.mapsum([1,2,3], &(&1 * &1)) == 14
  end

  test "max" do
    assert LearningElixir.Adding.max([]) == []
    assert LearningElixir.Adding.max([5]) == 5
    assert LearningElixir.Adding.max([5,2,8,6]) == 8
  end
end
