* 定理証明支援系
  * LeanはRocqと基盤が同じ(Calculus of Inductive Construction)
    * [DeepSeek-Prover-V2](https://github.com/deepseek-ai/DeepSeek-Prover-V2)というLLMがある！ ※LLM応用は色々あるみたい(Rocqにもある)
  * Isabelleは自動化が強力らしい、基盤が選べる(first-order logic, higher-order logic, ZFC, ...)
* Coqによる証明：いずれも改定版でした
  * 四色定理
    * 1976年に証明、Coqによる証明は2004年 https://ja.wikipedia.org/wiki/%E5%9B%9B%E8%89%B2%E5%AE%9A%E7%90%86#%E6%AD%B4%E5%8F%B2
  * Feit-Thompson定理
    * 1960年代初頭に証明、Coqによる証明は2012年 https://en.wikipedia.org/wiki/Feit%E2%80%93Thompson_theorem#Revision_of_the_proof
* Software Foundation：Vol.6まである(増えた)
  * Vol.5はVerifiable CというC言語に対する検証でとても興味があるのだがたどり着けていない
* epsilon_smallest
  * P n が成立する自然数 n が存在すれば P k が成立する最小の自然数 k が存在する
  * 証明がついてる定理 https://github.com/rocq-prover/stdlib/blob/58b08c2d561ec614413a1abbe16a0fa3310c8505/theories/Logic/ConstructiveEpsilon.v#L230
    * 実はこの定理は条件(前提)付きで、P nか¬(P n)であるかが決定可能である必要がある
      * 排中律(P\/¬P)は直観主義論理では仮定しない
      * Rocq内では可算無限であれば等値比較は決定可能(a=b\/¬a=b)なはずなので追加公理を必要とせず使える場合はある
* 群と部分群
  * 集合(＝型)の一部分(部分集合)を別の型とみなす方法が難しい
    * subset typeというそれっぽいものはあるのだが自分のRocqレベルが足りない
* (元の)位数関連の証明が厳しかったのはなるだけ追加公理を入れないという縛り(実際にはできていなかった)が厳しかったところが強そう
* 証明の型
  *  例えば「A/\B->A\/B」という命題(の証明)があった時に、A,Bは実際には色々な命題が入りうる。という意味で「型」と考えてもらえばいいかも。
    * ちなみに A/\B も A\/B も Inductive な定義で自前で定義可能(素のRocq組み込みではない)
  * A -> B を普通の関数とみなせば A 型を入力として B 型を出力とする関数となるが、証明とみなすと A という事実に対する証明を入力として、B という事実に対する証明を返す(関数)とみなすことになる
    * 実際、証明するときには (H1 H2) (※H1: A -> B, H2: A で H1 に H2 を渡して B を得ている) のような使い方もする
* 証明の簡約化(最適化)
