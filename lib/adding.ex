defmodule LearningElixir.Adding do
  def sum(1), do: 1
  def sum([]), do: 0
  def sum([head | []]), do: head
  def sum([head | tail]), do: head + sum(tail)
  def sum(n) when n <= 0, do: 0
  def sum(n), do: n + sum(n-1)
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))

  def mapsum(list, f), do: sum(Enum.map(list, f))
  def max([]), do: []
  def max([head | []]), do: head
  def max([head | tail]) do
  	tail_max = max(tail)
  	if tail_max > head, do: tail_max, else: head
  end
end
