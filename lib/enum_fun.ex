defmodule LearningElixir.MyEnums do
  def all?([], f), do: true
  def all?([ head | tail ], f) do
    f.(head) && all?(tail, f)
  end

  def each([], f), do: :ok
  def each([ head | tail ], f) do
    f.(head)
    each(tail, f)
  end

  def filter([],f), do: []
  def filter([ head | tail ], f) do
    if f.(head) do
      [head] ++ filter(tail, f)
    else
      filter(tail, f)
    end
  end

  def last([]), do: nil
  def last([head | []]), do: head
  def last([head | tail]), do: last(tail)

  def chop_last([]), do: nil
  def chop_last([head | []]), do: {[head], []}
  def chop_last([ head | tail ]), do: {[head],tail}

  def reverse([]), do: []
  def reverse([ head | tail ]) do
    reverse(tail) ++ [head]
  end

  def split(collection, 0), do: { [], collection }
  def split([ head | tail ], 1), do: { [head], tail }
  def split([], count), do: { [], [] }
  # def split([ head | tail ], count) when count < 0 do

  # end
  def split([ head | tail ], count) do
    {front, back} = split(tail, count - 1)
    {[head | front], back}
  end
end
