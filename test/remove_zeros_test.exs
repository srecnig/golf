defmodule RemoveZerosTest do
  use ExUnit.Case

	test "remove_zeros_should_work" do
    assert [4, 1, 2, 0, 1, 2, 4] == RemoveZeros.r([0, 4, 1, 2, 0, 1, 2, 4, 0])
    assert [] == RemoveZeros.r([0, 0, 0, 0, 0, 0])
    assert [3, 4, 5] == RemoveZeros.r([3, 4, 5, 0, 0])
    assert [6] == RemoveZeros.r([6])
  end
end
