defmodule ProblemsTest do
  use ExUnit.Case
  doctest Problems

  test "my_last" do
    assert Problems.MyLast.my_last([1, 2, 3]) == 3
    catch_error Problems.MyLast.my_last([]) == "Not found."
  end

  test "my_but_last" do
    assert Problems.MyButLast.my_but_last([1, 2, 3]) == 2
    assert Problems.MyButLast.my_but_last([1, 2]) == 1
    catch_error Problems.MyButLast.my_but_last([1]) == "Not found."
    catch_error Problems.MyButLast.my_but_last([]) == "Not found."
  end
end
