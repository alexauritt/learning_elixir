defmodule LearningElixir.Adding do
  def sum(1), do: 1
  def sum([]), do: 0
  def sum([head | []]), do: head
  def sum([head | tail]), do: head + sum(tail)
  def sum(n) when n <= 0, do: 0
  def sum(n), do: n + sum(n-1)
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end
