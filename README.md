![](./background.png)

# atcorder-elixir-solve

atcoderの問題をElixirで解く

最近始めたばかりなのであまり進んでいません。

## ElixirでAtCorderの問題を解いて実行する方法

1. exsファイルを作成します。

    exファイルにするとコンパイルする手間があるので、スクリプトで作成しています。

1. 以下のようにコードを書きます

    `defmodule Main/def main`を用意するとAtCoderへ提出したときにこれを読み込んでくれるようです。

    ```elixir
    # abc181_a.exs
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

    Main.main()
    ```
1. コマンドラインで以下のように実行します

    echoで引数の値を変えて予想と同じになるか確認します。

    ```zsh
    echo "1243" | elixir abc181_a.exs
    # Black
    ```

1. AtCoderへ提出

    `defmodule Main do 〜 end`の部分だけコピーして、貼り付けて提出します。(この辺のルールはよくわからない)

    ```elixir
    # abc181_a.exs
    # ↓↓↓↓↓↓↓↓↓↓↓ ここから　↓↓↓↓↓↓↓↓↓↓↓
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
    # ↑↑↑↑↑↑↑↑↑↑↑　ここまでをコピー ↑↑↑↑↑↑↑↑↑↑↑

    Main.main()
    ```

## ステータス

| Contest |date | A | B | C | D | E | F |
| :---: | :---: | :---: | :---: | :---: |:---: | :---: | :---: |
| [Beginner Contest 181](https://atcoder.jp/contests/abc181) | 2020/11/01 | [✅](abc181_a.exs) | [⬜](abc181_b.exs) | [⬜](abc181_c.exs) | [⬜](abc181_d.exs) | [⬜](abc181_e.exs) | [⬜](abc181_f.exs) |
| [Beginner Contest 182](https://atcoder.jp/contests/abc182) | 2020/11/08 | [⬜](abc182_a.exs) | [⬜](abc182_b.exs) | [⬜](abc182_c.exs) | [⬜](abc182_d.exs) | [⬜](abc181_e.exs) | [⬜](abc181_f.exs) |
| [Beginner Contest 183](https://atcoder.jp/contests/abc183) | 2020/11/15 | [⬜](abc183_a.exs) | [⬜](abc183_b.exs) | [⬜](abc183_c.exs) | [⬜](abc183_d.exs) | [⬜](abc183_e.exs) | [⬜](abc183_f.exs) |
| [Beginner Contest 184](https://atcoder.jp/contests/abc184) | 2020/11/22 | [⬜](abc184_a.exs) | [⬜](abc184_b.exs) | [⬜](abc184_c.exs) | [⬜](abc184_d.exs) | [⬜](abc184_e.exs) | [⬜](abc184_f.exs) |
| [Regular Contest 109](https://atcoder.jp/contests/arc109) | 2020/11/28 | [⬜](regular109_a.exs) | [⬜](regular109_b.exs) | [⬜](regular109_c.exs) | [⬜](regular109_d.exs) | [⬜](regular109_e.exs) | [⬜](regular109_f.exs) |
| [Grand Contest 050](https://atcoder.jp/contests/agc050) | 2020/12/05 | [⬜](grand_a.exs) | [⬜](grand_b.exs) | [⬜](grand_c.exs) | [⬜](grand_d.exs) | [⬜](grand_e.exs) | [⬜](grand_f.exs) |

## 備忘録

- [ ] 本当はExUnitを作って実行してみたいが、検証できてない
