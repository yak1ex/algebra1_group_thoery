# 代数学1 群論入門

## 4.2 対称群の共役類

### メモ

#### p.97 命題4.2.1

* 「 $\sigma$ による $X$ の元の軌道の集合は $\sigma$ にのみ依存するので」 他に依存しうるものとしては $i_1$ の取り方。軌道の集合は $X$ の分割の仕方と思えば良さそう。

#### p.99 定理4.2.3

* $\tau_i(i\in\mathbb{N})$ がそれぞれ巡回置換として $\sigma\tau_1\tau_2\cdots\tau_n\sigma^{-1}=\sigma\tau_1\sigma^{-1}\sigma\tau_2\sigma^{-1}\cdots\sigma\tau_n\sigma^{-1}=(\sigma\tau_1\sigma^{-1})(\sigma\tau_2\sigma^{-1})\cdots(\sigma\tau_n\sigma^{-1})$ で循環置換の積になる

#### p.99 例4.2.5

* 正規部分群 $H$ は $\forall g\in G, ghg^{-1}\in H$ なので共役な元＝同じ型の元で閉じてればよい
  * 共役類をいくつかまとめてきて部分群になっていれば正規部分群
* $\mathfrak{S}_3\rightarrow G$ は包含写像なのでp.41例2.5.4から準同型、 $G\rightarrow G/N$ は自然な写像なのでp.59命題2.8.13から準同型、単射性はp.44命題2.5.13から、単射で要素数が同じことからp.7命題1.1.6(2)より全射となるので全単射準同型となり同型。
* p.99とp.100の順番(2,5,4)(2,4,5)が一致してない

#### p.100 例題4.2.7

* $A_4$ の共役類は $\mathfrak{S}_4$ の共役類より細かくなる(全体が小さくなるので共役にならないものがでてくるかもしれない)
* 議論としては、偶置換分の共役類を対象として、それぞれ共役類がどうなるか(一致しているかより細かくなるか)を確認している
  * 第1段落は $(1\hspace{5mu}2)(3\hspace{5mu}4)$ の軌道(共役類)を確認している
  * 第2段落は $(1\hspace{5mu}2\hspace{5mu}3)$ の軌道(共役類)の元の数を確認している
    * p.93命題4.1.23を使って安定化群の位数から2 1共役類の要素の数を求めている

### 演習問題

#### 4.2.1

1. 

$$
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10\\
5 & 2 & 8 & 6 & 1 & 10 & 9 & 4 & 7 & 3
\end{pmatrix}=
\begin{pmatrix}1&5\end{pmatrix}
\begin{pmatrix}3&8&4&6&10\end{pmatrix}
\begin{pmatrix}7&9\end{pmatrix}
$$

2.

$$
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10\\
6 & 10 & 4 & 2 & 8 & 1 & 5 & 7 & 3 & 9
\end{pmatrix}=
\begin{pmatrix}1&6\end{pmatrix}
\begin{pmatrix}2&10&9&3&4\end{pmatrix}
\begin{pmatrix}5&8&7\end{pmatrix}
$$

#### 4.2.2 未

1. p.99 定理4.2.3 より共役類となることと置換の型が同じであることが同値になるので代表元としては $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5),(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4),(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5),(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2)(3\hspace{5mu}4),(1\hspace{5mu}2),1$ ととれる。
2. $\mathfrak{S}_5$ の共役類の代表元のうち $A_5$ に含まれるものは $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5),(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2)(3\hspace{5mu}4),1$ である。以下 $\mathfrak{S}_5$ の共役類が $A_5$ でどうなるかを見ていく。
p.99 補題4.2.2 より $\sigma(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)\sigma^{-1}=(\sigma(1)\hspace{5mu}\sigma(2)\hspace{5mu}\sigma(3)\hspace{5mu}\sigma(4)\hspace{5mu}\sigma(5))$ の共役類で $\mathfrak{S}_5$ の共役類と一致しないものは？

#### 4.2.3

$\sigma=(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5\hspace{5mu}6), \tau=(4\hspace{5mu}1\hspace{5mu}3)(2\hspace{5mu}6\hspace{5mu}5)$

1. 例えば

$$
\nu = \begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 \\
4 & 1 & 3 & 2 & 6 & 5
\end{pmatrix}=
\begin{pmatrix}
1 & 4 & 2
\end{pmatrix}
\begin{pmatrix}
5 & 6
\end{pmatrix}
$$

2.

$\lbrace1,2,3\rbrace\mapsto\lbrace4,1,3\rbrace,\lbrace4,5,6\rbrace\mapsto\lbrace2,6,5\rbrace$ か
$\lbrace1,2,3\rbrace\mapsto\lbrace2,6,5\rbrace,\lbrace4,5,6\rbrace\mapsto\lbrace4,1,3\rbrace$ の場合で各写像については長さ $3$ の巡回置換同士の対応なので $3$ 通りなので $3\times3\times2=18$ 通り

#### 4.2.4 未

以下では作用として共役による作用を考える。p.94 定義4.1.27の上の記載より $Z_G(\sigma)=\lbrace g\in G\mid g\sigma g^{-1}=\sigma\rbrace$ である。これは共役による作用での $\sigma$ の安定化群である。 $\sigma$ の軌道 $G\cdot\sigma$ は共役類 $C(\sigma)=\lbrace g\sigma g^{-1}\mid g\in G\rbrace$ となるが、以下では $G$ は対称群なので $\sigma=(i_1\cdots i_l)$ とするとp.98 補題 4.2.2から $G\cdot\sigma=\lbrace g\sigma g^{-1}\mid g\in G\rbrace=\lbrace(g(i_1)\cdots g(i_l))\mid g\in G\rbrace$ である。これはつまり $G$ における $\sigma$ の型の置換全てである( $\sigma$ が元が重複しない循環置換の積である場合も同様)。また、p.95 定理4.1.28(1)より $|C(\sigma)|=\frac{|G|}{|Z_G(\sigma)|}$ なので、 $|Z_G(\sigma)|=\frac{|G|}{|G\cdot\sigma|}$ である。

1. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2)$
$|G\cdot\sigma|$ を考えると ${}_4C_2=6$ なので $|Z_G(\sigma)|=\frac{24}{6}=4$ である。明らかに $(1\hspace{5mu}2),(3\hspace{5mu}4)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2),(3\hspace{5mu}4)\rangle$ の位数が $4$ なので $Z_G(\sigma)=\langle(1\hspace{5mu}2),(3\hspace{5mu}4)\rangle$
2. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2)(3\hspace{5mu}4)$
3. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2\hspace{5mu}3)$
4. $G=\mathfrak{S}_5, \sigma=(1\hspace{5mu}2\hspace{5mu}3)$
5. $G=\mathfrak{S}_6, \sigma=(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5\hspace{5mu}6)$
6. $G=\mathfrak{S}_6, \sigma=(1\hspace{5mu}2)(3\hspace{5mu}4)(5\hspace{5mu}6)$

#### 4.2.5 担当

$G=\mathfrak{S}_n (n\ge3)$

1. p.94 定義4.1.27 の上の記述より $Z_G(\sigma)=\lbrace g\in G\mid g\sigma g^{-1}=\sigma\rbrace$ である。また、p.98 補題 4.2.2 より　$g\sigma g^{-1}=(g(1)\hspace{5mu}g(2)\cdots g(n))$ であるからこれが $\sigma=(1\hspace{5mu}2\cdots n)$ と等しくなる $g$ は、p.99 例題4.2.6と同様の議論で $n$ 通りとることができ、 $1, \sigma, \sigma^2, \cdots, \sigma^{n-1}$ となる。よって、 $Z_G(\sigma)=\langle\sigma\rangle$ である。
2. $Z(G)=\lbrace g\in G\mid \forall h\in G, gh=hg\rbrace=\lbrace g\in G\mid \forall h\in G, ghg^{-1}=h\rbrace$ なので、 $g\in Z(G)\Rightarrow g\in Z_G(\sigma)$ となるから $Z(G)\subset Z_G(\sigma)$ である。このとき、 $h=(1\hspace{5mu}2)\in G$ として $g\in Z(G)$ ならば $ghg^{-1}=(g(1)\hspace{5mu}g(2))=h=(1\hspace{5mu}2)$ となるので $g(1)=1,g(2)=2$ の場合か、$g(1)=2,g(2)=1$ の場合に限る。 $g\in Z(G)\subset Z_G(\sigma)=\langle\sigma\rangle$ でこの条件を満たすのは $g=1$ の場合のみである。(つまり $Z(G)\subset\lbrace1\rbrace$ ) 逆は明らかに $1\in Z(G)$ である。 (つまり $Z(G)\supset\lbrace1\rbrace$) よって、 $Z(G)=\lbrace1\rbrace$

#### 4.2.6

$\sigma\in G$ 型が $(j_1\times a_1,j_2\times a_2,\cdots,j_t\times a_t)(j_1\lt \cdots \lt j_t)\Rightarrow$
$Z_G(\sigma)\triangleright N\land N\cong(\mathbb{Z}/j_1\mathbb{Z})^{a_1}\times\cdots\times(\mathbb{Z}/j_t\mathbb{Z})^{a_t}\land Z_G(\sigma)/N\cong\mathfrak{S}_{a_1}\times\cdots\times\mathfrak{S}_{a_t}$

#### 4.2.7

偶置換 $\sigma\in\mathfrak{S}_n$ 型は $(i_1,\cdots,i_l)$

1. $(\forall m\in[1,l],i_n\equiv1\mod{2}\land\forall u,v\in[i,l](u\neq v)\Rightarrow i_u\neq i_v)\Rightarrow Z_{\mathfrak{S}_n}(\sigma)=Z_{A_n}(\sigma)$
※ $\sigma$ の $\mathfrak{S}_n$ における共役類は $A_n$ における元の個数が等しい共役類2つの和
2. ↑以外は $[Z_{\mathfrak{S}_n}(\sigma):Z_{A_n}(\sigma)]=2$ 
※ $\sigma$ の $\mathfrak{S}_n$ における共役類は $A_n$ においても1つの共役類

#### 4.2.8

$G=\mathfrak{S}_3$ 、 $G$ の位数 $2$ の元の集合は $X=\lbrace x_1=(1\hspace{5mu}2),x_2=(1\hspace{5mu}3),x_3=(2\hspace{5mu}3)\rbrace$ 、 $G$ は共役により $X$ に作用する、 $\rho:G\rightarrow\mathfrak{S}_3$ を置換表現として $\rho$ は同型

#### 4.2.9 担当

$G=\mathfrak{S}_4, X=\lbrace x_1=(1\hspace{5mu}2)(3\hspace{5mu}4),x_2=(1\hspace{5mu}3)(2\hspace{5mu}4),x_3=(1\hspace{5mu}4)(2\hspace{5mu}3)\rbrace$ 、 $G$ は共役により $X$ に作用する、 $\rho:G\rightarrow\mathfrak{S}_3$ を置換表現とする

1. $\rho$ の値
  a. $(1\hspace{5mu}2)$ の作用は $x_1\mapsto x_1, x_2\mapsto x_3, x_3\mapsto x_2$ となるので $\rho((1\hspace{5mu}2))=(2\hspace{5mu}3)$
  b. $(1\hspace{5mu}2\hspace{5mu}3)$ の作用は $x_1\mapsto x_3, x_2\mapsto x_1, x_3\mapsto x_2$ となるので $\rho((1\hspace{5mu}2\hspace{5mu}3))=(1\hspace{5mu}3\hspace{5mu}2)$
  c. $(2\hspace{5mu}3)$ の作用は $x_1\mapsto x_2, x_2\mapsto x_1, x_3\mapsto x_3$ となるので $\rho((2\hspace{5mu}3))=(1\hspace{5mu}2)$
2. p.89 命題4.1.12 より置換表現 $\rho$ は群の準同型である。よって、
$\rho((1\hspace{5mu}3))=\rho((1\hspace{5mu}2\hspace{5mu}3)(1\hspace{5mu}2))=\rho((1\hspace{5mu}2\hspace{5mu}3))\rho((1\hspace{5mu}2))=(1\hspace{5mu}3\hspace{5mu}2)(2\hspace{5mu}3)=(1\hspace{5mu}3)$
$\rho((1\hspace{5mu}3\hspace{5mu}2))=\rho((2\hspace{5mu}3)(1\hspace{5mu}2))=\rho((2\hspace{5mu}3))\rho((1\hspace{5mu}2))=(1\hspace{5mu}2)(2\hspace{5mu}3)=(1\hspace{5mu}2\hspace{5mu}3)$
$\rho(1_G)=1_{\mathfrak{S}_3}$ ※p.41 命題2.5.3 (1)より
以上により $\rho$ が $\mathfrak{S}_3$ 全ての元の値をとるので $\rho$ は全射である。
3. いまいち：p.63 定理2.10.1(準同型定理(第一同型定理))より $G/\mathrm{Ker}(\rho)\cong\mathrm{Im}(\rho)=\mathfrak{S}_3$ である。p.53 定理2.6.20(ラグランランジュの定理)から $|G|/|\mathrm{Ker}(\rho)|=|\mathfrak{S}_3|$ となるので $|\mathrm{Ker}(\rho)|=|G|/|\mathfrak{S}_3|=24/6=4$ である。計算により $\rho(1_{\mathfrak{S}_4})=\rho(x_1)=\rho(x_2)=\rho(x_3)=1_{\mathfrak{S}_3}$ であることが確かめられるので $\mathrm{Ker}(\rho)=\lbrace1,x_1,x_2,x_3\rbrace$

#### 4.2.10
  
$\mathfrak{S}_4$ の部分群の共役類全て、正規部分群はどれ？
