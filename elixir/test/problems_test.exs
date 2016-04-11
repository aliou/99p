defmodule ProblemsTest do
  use ExUnit.Case
  doctest Problems

  test "my_last" do
    assert Problems.MyLast.my_last([1, 2, 3]) == 3
    catch_error Problems.MyLast.my_last([]) == "Not found."
  end
end
