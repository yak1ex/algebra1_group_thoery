<style type="text/css">
  .reveal h1,
  .reveal h2,
  .reveal h3,
  .reveal h4,
  .reveal h5,
  .reveal h6 {
    text-transform: none;
  }
  .reveal section:nth-child(3),
  .reveal section:nth-child(6),
  .reveal section:nth-child(8),
  .reveal section:nth-child(9),
  .reveal section:nth-child(11)
  {
    font-size: 80%
  }
  .reveal section:nth-child(10)
  {
    font-size: 70%
  }
</style>

# 「群論を作ろう」Rocqで群論の証明をしてみる

---

## はじめに

- 今回初めて自前で結構な規模のRocqを書いた初心者でしかないので難しいことはわかりません。ふんいきでお願いします。
  - 「群論」自体に興味がある方には意義が薄い一方、形式的証明に明るい人にも意義が薄い発表になるかと思います
- 資料・ソースは↓のcoq/フォルダ以下に置きます
  https://github.com/yak1ex/algebra1_group_thoery

---

## Rocq その1

- Ver9.0(2025/3/12)でCoqから改名
- 定理証明支援系(ソフトウェア)の一つ、1989年初版リリース
  - 数学の定理証明やるなら今ならLeanの方がいいかも
  - 四色定理やFeit-Thompsonの定理(奇数位数の有限群は全て可解である)の証明で有名
  - 依存型(dependent type)が使えるプログラミング言語でもある
    - 証明付きRocqプログラムからOCamlプログラムを抽出してコンパイル、みたいな使い方もある
  - Interacitve Theorm Proverの通り、**自動定理証明ではない**
    - いくつかの自動化はあるし、自分で自動化ロジックを組むこともできる

---

## 定理証明支援系使うとなにがいいの？

- 抜け漏れがなくなる
  - (Rocqは)カリーハワード同型対応に基づき、(構文的に)正しい証明には正しい(プログラムの)型付けができることでもって証明の正しさを確認、しているはず

---

## Rocq その2

- デフォルトだと(標準的な数学に比べて)制限的である
  - 必要なら公理を追加できる
    - 直観主義論理(二重否定除去等がない)相当
      - ※なにかがあることを証明するなら、その「なにか」自体を示す必要がある→構成的数学(constructive mathmatics)
      - 適当な公理を追加すれば古典主義論理相当になる
    - 選択公理も追加扱い
      - 可算選択公理は追加なしに使える、と思う
    - 関数外延性も追加公理：∀x.f(x)=g(x)→f=g

---

## インストール

- OCamlという関数型言語で書かれているのでOCaml用パッケージ管理システムopamを使うのが楽
  - 開発はOCaml/Rocqとも[フランス国立情報学自動制御研究所(INRIA)](https://ja.wikipedia.org/wiki/%E3%83%95%E3%83%A9%E3%83%B3%E3%82%B9%E5%9B%BD%E7%AB%8B%E6%83%85%E5%A0%B1%E5%AD%A6%E8%87%AA%E5%8B%95%E5%88%B6%E5%BE%A1%E7%A0%94%E7%A9%B6%E6%89%80)
- Windows上ならWSL(Windows Subsystem for Linux)を使うのが楽
- [VSCoq](https://marketplace.visualstudio.com/items?itemName=maximedenes.vscoq)というVSCode用拡張が便利
  - WSLでも使える

```console
## opam インストール
$ bash -c "sh <(curl -fsSL https://opam.ocaml.org/install.sh)"
$ eval $(opam env) # 環境変数設定
$ opam init --disable-sandboxing # 初期化
## switchの作成(pythonのvenvみたいなもの)(オプション)
$ opam switch create rocq 5.3.0
## Rocqのリポジトリ追加
$ opam repo add -y coq-released https://coq.inria.fr/opam/released
## VSCoq用のLSPサーバをインストール(するとRocqも入るはず)
## Rocqのバージョンを固定(pin)するのが推奨っぽいが略
$ opam install vscoq-language-server
$ opam update
$ opam upgrade
```

---

## Rocqのリソース

- [Software Foundation(ソフトウェアの基礎)](https://softwarefoundations.cis.upenn.edu/)
  - 論理学、計算機科学に関する教科書、Rocqで動かしながら学べる
  - 日本のいくつかの大学でも使用されている
- [Coq/SSReflect/MathCompによる定理証明](https://www.morikita.co.jp/books/mid/006241) 森北出版
  - 和書だと唯一？
  - いきなりこれ読んでも路頭に迷うかも

---

## 今回

- 群論を含むライブラリはあるので普通はそちらを使えばよい
  - Feit-Thompsonの定理の証明で整備されたMathCompというライブラリ
- が、自前で初歩的な定理を証明してみよう、というコンセプト
  - 整数の性質とかstdlibにあるものは使う
  - 当初はなるだけ追加公理なしにやろうと思っていたけど追求できてない
    - 全てを追加公理なしには証明できなさそうな感覚
- かなり遠回りした証明になっているはず
  - ほとんど自動化に頼ってない
  - 証明の細かいところは説明しない(Rocqの説明になるので)
  - スタイルがばらばら
    - (同じこと実現するのに方法がやたらたくさんある)
    - (SSReflectスタイルではなくClassicスタイル)

---

## 最初にまとめ(所感)

- 今まで群と部分群をかなり自由に扱っていた
  - 現コードの群と部分群の定義だと区別があって面倒
- 指数法則とは準同型である(勉強会でも出たかも)
- 部分群に閉じること、に関する証明で $\forall g,h\in H, gh^{-1}\in H$ が強力だった
  - ※逆元と演算両方を含んでいるので帰納法の仮定に使いやすい
- 「命題2.3.19：巡回群はアーベル群である」は(見た目長いが)素直に証明できて嬉しかった
- 元の位数関連の証明は軒並み厳しかった
  - 一方で「命題2.4.5：有限群の元の位数が有限である」は容易
- (教科書の注でも「部屋割り論法」という名前で出ているが)鳩の巣原理(pigeonhole principle)を使えたので満足

---

## 定義・証明したもの

|||
|-|-|
|定義2.1.1(群の定義)|定義2.5.1(準同型)※|
|定義2.1.9(簡約法則)|命題2.5.3(全単射準同型)※|
|命題2.1.11(逆元と演算)|命題2.5.4(準同型の性質)※|
|定義2.3.1/命題2.3.2<br>(部分群)|命題2.5.13(1)(準同型の合成)|
|命題2.3.13(語の集合)|命題2.5.14<br>(準同型は生成元で決定)|
|命題2.3.19(巡回群は可換)|命題2.5.15(単射と核)|
|定義2.4.1(元の位数)|命題2.6.18(2)の一部<br>(剰余類の位数)|
|命題2.4.5<br>(有限群の元の位数)|定義2.8.1(正規部分群)|
|命題2.4.20(巡回群の位数)|補題2.8.10(正規部分群と剰余類)|

- かなり基本的な内容
  - ラグランジュの定理か準同型定理までやりたかったが……
- ※写像の定義域・値域を意識しない/するの2バージョンあり

---

## 補足

---

## 依存型

- 値に依存する値 → (普通の)関数
- 型に依存する型 → 型関数
- 型に依存する値 → パラメータ多相関数(いわゆるgenerics)
- 値に依存する型 → 依存型

しばしば使われる例として、要素数付きListがある

```coq
Variable A : Set.
Inductive ilist : nat → Set :=
| Nil : ilist O
| Cons : ∀ n, A → ilist n → ilist (S n).

(* 要素数n1のリストと要素数n2のリストを連結すると要素数n1+n2のリストになる *)
Fixpoint app n1 (ls1 : ilist n1 ) n2 (ls2 : ilist n2 )
    : ilist (n1 + n2 ) :=
match ls1 with
| Nil ⇒ ls2
| Cons x ls1’ ⇒ Cons x (app ls1’ ls2 )
end.
```

---

## カリー・ハワード同型対応

- 俗に「プログラム＝証明」と言われることがある
- 同型対応、すなわち「プログラム」の型と「証明」が構造を維持したまま1対1対応する、のだが論理体系と計算システムも1対1対応するのが面白い
  - 直観主義論理 ： 単純型付きラムダ計算
  - 古典主義論理(↑＋パースの法則) ： ↑＋継続(continuation)呼び出し

>パースの法則： ((P→Q)→P)→P<br>
>※二重否定除去(¬¬P→P)などと同値
