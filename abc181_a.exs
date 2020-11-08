# https://atcoder.jp/contests/abc181/tasks/abc181_a
# v1.10.2

defmodule Main do
  def input do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
  end

  def solve(n) do
    m = Integer.digits(n, 2) |> List.last
    cond do
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

# 2進数に変換して、最後のビットが0or1で判断するってもあるかも
# Integer.digits(5, 2) |> List.last
# Integer.digits(5, 2) |> Enum.take(-1) |> List.first
