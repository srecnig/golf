defmodule SummationTest do
  use ExUnit.Case

  test "should sum up all the integers" do
    assert Summation.sum(1,5) == 15
    assert Summation.sum(10,20) == 165
  end
end
