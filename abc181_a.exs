# https://atcoder.jp/contests/abc181/tasks/abc181_a
# v1.10.2

# 実行方法
# echo "1243" | elixir abc181_a.exs

## 答え1
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

# ## 答え2
# defmodule Main do
#   def input do
#     IO.read(:line)
#       |> String.trim()
#       |> String.last() # 最後のビット
#       |> String.to_integer()
#       # 2進数で取得して最後のビットが0/1で偶数or奇数を判断
#       |> List.last
#   end

#   def solve(n) do
#     case n do
#       0 -> "White"
#       1 -> "Black"
#     end
#   end

#   def main do
#     input()
#       |> solve()
#       |> IO.puts()
#   end
# end

# コンテンスト提出時は削除
Main.main()