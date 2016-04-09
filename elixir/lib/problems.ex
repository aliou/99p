defmodule Problems do
  @doc """
  Finds the last element of a list.

  ## Parameters

    - list: List that we want the last element of.

  ## Examples

      iex> Problems.my_last([1, 2, 3])
      3
  """
  def my_last(list) do
    case list do
      [head | []] -> head
      [_ | tail]  -> my_last(tail)
      _           -> raise "Not found."
    end
  end
end
