defmodule RemoveZeros do

  # http://codegolf.stackexchange.com/questions/71877/remove-leading-and-trailing-zeroes

  def remove_zeros list do
    # drop everything until first non zero, reverse, drop everything until first non zero, reverse
    # split at first non-zero, reverse, split at first non-zero, reverse
    list |> Enum.drop_while( fn (x) -> x == 0 end )
         |> Enum.reverse
         |> Enum.drop_while( fn(x) -> x == 0 end )
         |> Enum.reverse
  end

  import Enum
  def r l do
    z=fn x->x==0 end
    reverse(drop_while(reverse(drop_while(l,z)),z))
  end
end
