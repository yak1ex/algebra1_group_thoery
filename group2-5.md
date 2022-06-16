# 代数学1 群論入門

## 2章の演習問題

### 2.5 準同型と同型

#### 2.5.1 not yet

$G,H$ 元の個数が $m,n$ の巡回群 $x,y$ 生成元

1. $\forall i1,i2 \in \mathbb{Z}, x^{i1}=x^{i2} \Rightarrow y^{i1}=y^{i2}$ となる $m,n$ の必要十分条件

2. 1. を満たす $m,n$ に対し $\exists \phi : 準同型, \forall i \in \mathbb{Z}, \phi(x^{i}) = y^i$ を証明

#### 2.5.2

$x,y \in G$ とする。

$$ \phi_n(xy) = (xy)^n = x^n y^n (\because G は可換群) = \phi(x) \phi(n)$$

となるため $\phi_n$ は準同型である。

#### 2.5.3 not yet

1. $\phi:G \rightarrow H$ 群の準同型、$g \in G$ が有限位数 $\Rightarrow \phi(g)$ の位数は $g$ の位数の約数
2. ↑で $\phi$ 単射なら位数が等しい

#### 2.5.4

$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ と $\mathbb{Z}/4\mathbb{Z}$ の各元の位数は下表の通り。

|$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の元|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|
|-|-|-|-|-|
|元の位数|1|2|2|2|

|$\mathbb{Z}/4\mathbb{Z}$の元|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|
|-|-|-|-|-|
|元の位数|1|3|2|3|

$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ と $\mathbb{Z}/4\mathbb{Z}$ が同型だと仮定すると定義より群の同型となる写像 $\phi:\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z} \rightarrow \mathbb{Z}/4\mathbb{Z}$ が存在するが、このとき $\phi$ は準同型かつ単射で各元が有限位数なので、演習問題2.5.3(2)より $\forall g \in \mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ について $g$ の位数と $\phi(g)$ の位数は等しい。しかし $\phi(g) = \overline{1}$ となる位数 $3$ の $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の元が存在しないため矛盾する。よって、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ と $\mathbb{Z}/4\mathbb{Z}$ は同型ではない。

#### 2.5.5 not yet

$G$ 群  $x,y \in G$  $n \in \mathbb{Z} \Rightarrow (xyx^{-1})^n = xy^nx^{-1}$

#### 2.5.6 not yet

$$A = \begin{pmatrix}1 & 1 \\ 0 & 1\end{pmatrix}, B = \begin{pmatrix}1 & 0 \\ 1 & 1\end{pmatrix} \in \mathrm{SL}_2(\mathbb{R}) \subset \mathrm{GL}_2(\mathbb{R})$$

1. $A,B$ は $\mathrm{GL}_2(\mathbb{R})$ では共役
2. $A,B$ は $\mathrm{SL}_2(\mathbb{R})$ では共役ではない
3. $A,B$ は $\mathrm{SL}_2(\mathbb{C})$ では共役

#### 2.5.7 not yet

$\mathbb{Z}/n\mathbb{Z}$ について自己同型写像の定義域は $\mathbb{Z}/n\mathbb{Z}$ つまり $\overline{1}$ を生成元とする巡回群なのでその対応先だけ決めれば写像は決まる(ref....)。演習問題2.5.3より同型な写像の場合、位数が等しい元に写す必要がある。演習問題2.4.6の結果を使って元の位数が $\overline{1}$ (位数は$n$)と等しい元を求めると $n$ と素な$m$ に対する $\overline{m}$ となる。**$n,m$ 素 $\Leftrightarrow \phi_{\overline{m}}$ が自己同型、をいう必要あり。** 以下 $\overline{1}$ を $\overline{m}$ に写す写像を $\phi_{\overline{m}}$ と表記する。このとき $xy$ を $n$ で割った余りを $r$ とする($xy = nq + r, q \in \mathbb{Z}, r \in \mathbb{Z}, 0 \le r \lt n$) と、$(\phi_{\overline{x}} \circ \phi_{\overline{y}}) (\overline{1}) = \phi_{\overline{x}} (\phi_{\overline{y}} (\overline{1})) = \phi_{\overline{x}}(\overline{y}) = \phi_{\overline{x}}(\overline{1}^y) = (\phi_{\overline{x}}(\overline{1}))^y = \overline{x}^y = \overline{1}^{xy} = \overline{r} = \phi_{\overline{r}}(\overline{1})$ となるため、自己同型群としては $(\mathbb{Z}/n\mathbb{Z})^\times$ と同型になる
※$\overline{1}$ の写像先を定めれば写像全体が決まることに注意

1. $\mathbb{Z}/5\mathbb{Z}$

位数$5$となる元は$\overline{1},\overline{2},\overline{3},\overline{4}$
|$g$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|
|-|-|-|-|-|-|
|$\phi_{\overline{1}}(g)$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|
|$\phi_{\overline{2}}(g)$|$\overline{0}$|$\overline{2}$|$\overline{4}$|$\overline{1}$|$\overline{3}$|
|$\phi_{\overline{3}}(g)$|$\overline{0}$|$\overline{3}$|$\overline{1}$|$\overline{4}$|$\overline{2}$|
|$\phi_{\overline{4}}(g)$|$\overline{0}$|$\overline{4}$|$\overline{3}$|$\overline{2}$|$\overline{1}$|

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|
|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

これは $(\mathbb{Z}/5\mathbb{Z})^\times$ と同型である($\phi_{\overline{m}}$ の $\overline{m}$ 部分だけを見た場合)。

2. $\mathbb{Z}/7\mathbb{Z}$

位数$7$となる元は$\overline{1},\overline{2},\overline{3},\overline{4},\overline{5},\overline{6}$
|$g$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|$\overline{5}$|$\overline{6}$|
|-|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}(g)$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|$\overline{5}$|$\overline{6}$|
|$\phi_{\overline{2}}(g)$|$\overline{0}$|$\overline{2}$|$\overline{4}$|$\overline{6}$|$\overline{1}$|$\overline{3}$|$\overline{5}$|
|$\phi_{\overline{3}}(g)$|$\overline{0}$|$\overline{3}$|$\overline{6}$|$\overline{2}$|$\overline{5}$|$\overline{1}$|$\overline{4}$|
|$\phi_{\overline{4}}(g)$|$\overline{0}$|$\overline{4}$|$\overline{1}$|$\overline{5}$|$\overline{2}$|$\overline{6}$|$\overline{3}$|
|$\phi_{\overline{5}}(g)$|$\overline{0}$|$\overline{5}$|$\overline{3}$|$\overline{1}$|$\overline{6}$|$\overline{4}$|$\overline{2}$|
|$\phi_{\overline{6}}(g)$|$\overline{0}$|$\overline{6}$|$\overline{5}$|$\overline{4}$|$\overline{3}$|$\overline{2}$|$\overline{1}$|

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{6}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{6}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{6}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|$\phi_{\overline{2}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{6}}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

これは $(\mathbb{Z}/7\mathbb{Z})^\times$ と同型である($\phi_{\overline{m}}$ の $\overline{m}$ 部分だけを見た場合)。

3. $\mathbb{Z}/8\mathbb{Z}$

$(\mathbb{Z}/8\mathbb{Z})^\times$ と同型

4. $\mathbb{Z}/9\mathbb{Z}$

$(\mathbb{Z}/9\mathbb{Z})^\times$ と同型

5. $\mathbb{Z}/15\mathbb{Z}$

$(\mathbb{Z}/15\mathbb{Z})^\times$ と同型

#### 2.5.8 not yet

$a,b \in G$

1. $a^{-1},b \in G$ で、$i_{b}(ab)=b(ab)b^{-1}=ba$ となるため、$ab,ba$ は共役である。
2. $ab,ba$ 位数が等しい

#### 2.5.9 not yet

$G = \mathfrak{S}_3$、$\phi:G \ni g \mapsto i_g \in \mathrm{Aut}G$、$\phi$ は同型写像