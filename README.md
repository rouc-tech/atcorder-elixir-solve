![](./background.png)

# atcorder-elixir-solve

atcoderの問題をElixirで解く

最近始めたばかりなのであまり進んでいません。

## ElixirでAtCorderの問題を解いて実行する方法

1. exsファイルを作成します。

    exファイルにするとコンパイルする手間があるので、スクリプトで作成しています。

1. 以下のようにコードを書きます

    Main.main()を用意するとAtCoderへ提出したときにこれを読み込んでくれるようです。

    ```elixir
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
    ```

1. AtCoderへ提出

    `Main.main()`を削除して、貼り付けて提出します。(この辺のルールはよくわからない)

    ```elixir
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
    ```

## ステータス

| Contest |date | A | B | C | D | E | F |
| :---: | :---: | :---: | :---: | :---: |:---: | :---: | :---: |
| [Beginner Contest 181](https://atcoder.jp/contests/abc181) | 2020/11/01 | ✅ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| [Beginner Contest 182](https://atcoder.jp/contests/abc182) | 2020/11/08 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| [Beginner Contest 182](https://atcoder.jp/contests/abc183) | 2020/11/15 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| [Beginner Contest 182](https://atcoder.jp/contests/abc184) | 2020/11/22 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| [Regular Contest 109](https://atcoder.jp/contests/arc109) | 2020/11/28 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| [AtCoder Grand Contest 050](https://atcoder.jp/contests/agc050) | 2020/12/05 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
