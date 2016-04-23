defmodule Problems.MyButLast do
  def my_but_last(list) do
    case list do
      [head | [_ | []]] -> head
      [_ | tail]        -> my_but_last(tail)
      _                 -> raise "Not found."
    end
  end
end
