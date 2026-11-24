# stat_calc コマンド

[![test](https://github.com/A7TSUSH1/robosys2026/actions/workflows/test.yml/badge.svg)](https://github.com/A7TSUSH1/robosys2026/actions/workflows/test.yml)

標準入力から受け取った複数の数値データの基本的な統計情報（データ数、平均値、最小値、最大値、分散、標準偏差）を計算し、標準出力に出力するコマンドです。パイプでつないで数値データを分析する際に利用できます。

## 使い方

リポジトリをクローンして実行権限を付与します。

```bash
$ git clone [https://github.com/A7TSUSH1/robosys2026.git](https://github.com/A7TSUSH1/robosys2026.git)
$ cd robosys2026
$ chmod +x stat_calc
```

標準入力から1行に1つずつ数値を渡して実行します。

```bash
$ seq 1 5 | ./stat_calc
Count: 5
Mean: 3.0000
Min: 1.0
Max: 5.0
Variance: 2.0000
StdDev: 1.4142
```

数値に変換できない文字列や空の入力が渡された場合は、標準エラー出力にエラーメッセージを出力し、終了ステータス `1` で終了します。

## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境

- Ubuntu 24.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのテストおよびGitHub Actionsの設定は、ロボットシステム学の講義資料（CC BY-SA 4.0 by Taro Suzuki）を参考にしている。
- © 2026 Atsushi
