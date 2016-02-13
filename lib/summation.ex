defmodule Summation do
  # http://codegolf.stackexchange.com/questions/60106/summation-from-a-to-b/72023#72023

  def sum(a,b), do: Enum.reduce(a..b, 0, &+/2)
end
