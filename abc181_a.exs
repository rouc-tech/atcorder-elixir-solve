# https://atcoder.jp/contests/abc181/tasks/abc181_a
# v1.10.2

defmodule Main do
  def input do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
  end

  def solve(n) do
    case rem(n, 2) do
      0 -> "White"
      1 -> "Black"
    end
  end

  def main do
    input()
    |> solve()
    |> IO.puts()
  end
end
