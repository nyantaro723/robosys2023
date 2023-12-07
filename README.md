# plusコマンド

![test](https://github.com/nyantaro723/robosys2023/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足す。

## 使い方

ディレクトリ:
```bash
$ cd robosys2023/  
```  


実行例:
```bash
$ seq "自然数" | ./plus
```

例えば、
> $ seq 10 | ./plus を実行すると、1～10までの値を１つずつ足したものが結果として出力される。


## テスト結果

> $ seq 10 | ./plus

> 55 

## 必要なソフトウェア

* Python
  * テスト済みバージョン: 3.7～3.10


## テスト環境

* Ubuntu 20.04


* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda.github.io/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022) 

© 2023 Ryusei Matsuki
