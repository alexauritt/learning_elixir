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
end
