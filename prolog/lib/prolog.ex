
defmodule Prolog do

  def hello do
    :world
  end

  def last(list) do
    case list do
      [] -> nil
      [only] -> only
      [_first | las] -> last(las)
    end
  end

  #Prolog.last([1,2,3,4])

  def lastbutone(list) do
    case list do
      [] -> nil
      [_only] -> nil
      [first | [second]] -> first
      [_first | second] -> lastbutone(second)
    end
  end

  #Prolog.lastbutone([1,2,3,4])


  def length([]) do
    plength([], 0)
  end
  def length(list) do
    plength(list, 0)
  end
  defp plength([], counter) do
    counter
  end
  defp plength([_h|t], counter) do
    plength(t, counter+1)
  end

  #Prolog.length([1,2,5,6])

  def rev(list) do
    prev(list, [])
  end
  defp prev([], reverlist) do
    reverlist
  end
  defp prev([_first | last], reverlist) do
    prev(last, [_first | reverlist])
  end

  #Prolog.rev([1,2,5,6])

  def elem([], _n) do
    nil
  end
  def elem(list, n) do
    pelem(list, n, 1)
  end
  defp pelem([h|_t], n, n) do
    h
  end
  defp pelem([_h|t], n, counter) do
    pelem(t, n, counter+1)
  end

  #Prolog.elem([1,2,5,6], 2)







end
