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
まず $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ について考える。 $\mathfrak{S}_5$ において $\sigma\in A_5$ が $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ と共役であったとすると、 $\tau\sigma\tau^{-1}=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ 。 $\tau$ が偶置換であれば $A_5$ においても $\sigma$ と $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ は共役である。 $\tau$ が奇置換である場合について、$(1\hspace{5mu}2)\tau\sigma\tau^{-1}(1\hspace{5mu}2)^{-1}=(1\hspace{5mu}2)(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)(1\hspace{5mu}2)^{-1}\Leftrightarrow((1\hspace{5mu}2)\tau)\sigma((1\hspace{5mu}2)\tau)^{-1}=(2\hspace{5mu}1\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ となり $(1\hspace{5mu}2)\tau$ は偶置換なので $A_5$ において $\sigma$ と $(2\hspace{5mu}1\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ が共役になる。したがって、 $\sigma$ は $A_5$ において $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5), (2\hspace{5mu}1\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ のいずれかと共役である。ここで $\mathfrak{S}_5$ での $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ の共役類の元の個数は $5!/5=24$ 個。一方、 $A_5$ での共役類の元の個数は ... ※安定化群を正確に求めなくとも一致しないことは言える
よって $\mathfrak{S}_5$ での $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ の共役類は $A_5$ では $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ の共役類と $(2\hspace{5mu}1\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)$ の共役類に分かれる。
次に、 $(1\hspace{5mu}2\hspace{5mu}3)$ について考える。 $\mathfrak{S}_5$ において $\sigma\in A_5$ が $(1\hspace{5mu}2\hspace{5mu}3)$ と共役であったとすると、 $\tau\sigma\tau^{-1}=(1\hspace{5mu}2\hspace{5mu}3)$ 。 $\tau$ が偶置換であれば $A_5$ においても $\sigma$ と $(1\hspace{5mu}2\hspace{5mu}3)$ は共役である。 $\tau$ が奇置換である場合について、$(4\hspace{5mu}5)\tau\sigma\tau^{-1}(4\hspace{5mu}5)^{-1}=(4\hspace{5mu}5)(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5)^{-1}\Leftrightarrow((4\hspace{5mu}5)\tau)\sigma((4\hspace{5mu}5)\tau)^{-1}=(1\hspace{5mu}2\hspace{5mu}3)$ となり $(4\hspace{5mu}5)\tau$ は偶置換なので $A_5$ において $\sigma$ と $(1\hspace{5mu}3\hspace{5mu}3)$ が共役となる。よって $\mathfrak{S}_5$ での $(1\hspace{5mu}2\hspace{5mu}3)$ の共役類は $A_5$ でも $1$ つの共役類のままである。
次に、 $(1\hspace{5mu}2\hspace{5mu}3)$ について考える。 $\mathfrak{S}_5$ において $\sigma\in A_5$ が $(1\hspace{5mu}2\hspace{5mu}3)$ と共役であったとすると、 $\tau\sigma\tau^{-1}=(1\hspace{5mu}2\hspace{5mu}3)$ 。 $\tau$ が偶置換であれば $A_5$ においても $\sigma$ と $(1\hspace{5mu}2\hspace{5mu}3)$ は共役である。 $\tau$ が奇置換である場合について、$(4\hspace{5mu}5)\tau\sigma\tau^{-1}(4\hspace{5mu}5)^{-1}=(4\hspace{5mu}5)(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5)^{-1}\Leftrightarrow((4\hspace{5mu}5)\tau)\sigma((4\hspace{5mu}5)\tau)^{-1}=(1\hspace{5mu}2\hspace{5mu}3)$ となり $(4\hspace{5mu}5)\tau$ は偶置換なので $A_5$ において $\sigma$ と $(1\hspace{5mu}3\hspace{5mu}3)$ が共役となる。よって $\mathfrak{S}_5$ での $(1\hspace{5mu}2\hspace{5mu}3)$ の共役類は $A_5$ でも $1$ つの共役類のままである。

$A_5$ の共役類で $\mathfrak{S}_5$ の共役類と一致しないものは？

※交代群の位数については教科書上は語られてない？8596-

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

#### 4.2.4

以下では作用として共役による作用を考える。p.94 定義4.1.27の上の記載より $Z_G(\sigma)=\lbrace g\in G\mid g\sigma g^{-1}=\sigma\rbrace$ である。これは共役による作用での $\sigma$ の安定化群である。 $\sigma$ の軌道 $G\cdot\sigma$ は共役類 $C(\sigma)=\lbrace g\sigma g^{-1}\mid g\in G\rbrace$ となるが、以下では $G$ は対称群なので $\sigma=(i_1\cdots i_l)$ とするとp.98 補題 4.2.2から $G\cdot\sigma=\lbrace g\sigma g^{-1}\mid g\in G\rbrace=\lbrace(g(i_1)\cdots g(i_l))\mid g\in G\rbrace$ である。これはつまり $G$ における $\sigma$ の型の置換全てである( $\sigma$ が元が重複しない循環置換の積である場合も同様)。また、p.95 定理4.1.28(1)より $|C(\sigma)|=\frac{|G|}{|Z_G(\sigma)|}$ なので、 $|Z_G(\sigma)|=\frac{|G|}{|G\cdot\sigma|}$ である。

※p.99 定理4.2.3 からすぐに共役であることと型が同じであることが言える

1. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2)$
$|G\cdot\sigma|$ を考えると ${}_4C_2=6$ なので $|Z_G(\sigma)|=\frac{24}{6}=4$ である。明らかに $(1\hspace{5mu}2),(3\hspace{5mu}4)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2),(3\hspace{5mu}4)\rangle$ の位数が $4$ なので $Z_G(\sigma)=\langle(1\hspace{5mu}2),(3\hspace{5mu}4)\rangle$
2. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2)(3\hspace{5mu}4)$
$|G\cdot\sigma|$ を考えると( $1$ とのペアの自由度のみとなり) ${}_3C_1=3$ なので $|Z_G(\sigma)|=\frac{24}{3}=8$ である。明らかに $(1\hspace{5mu}2),(3\hspace{5mu}4),(1\hspace{5mu}3)(2\hspace{5mu}4)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2),(3\hspace{5mu}4),(1\hspace{5mu}3)(2\hspace{5mu}4)\rangle$ の位数が $8$ となるので $Z_G(\sigma)=\langle(1\hspace{5mu}2),(3\hspace{5mu}4),(1\hspace{5mu}3)(2\hspace{5mu}4)\rangle$
3. $G=\mathfrak{S}_4, \sigma=(1\hspace{5mu}2\hspace{5mu}3)$
$|G\cdot\sigma|$ を考えると( 数字 $3$ つを決めると例えば $1$ がどこに移るかの自由度のみとなり) ${}_4C_3 \cdot {}_2C_1=8$ なので $|Z_G(\sigma)|=\frac{24}{8}=3$ である。明らかに $(1\hspace{5mu}2\hspace{5mu}3)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2\hspace{5mu}3)\rangle$ の位数が $3$ となるので $Z_G(\sigma)=\langle(1\hspace{5mu}2\hspace{5mu}3)\rangle$
4. $G=\mathfrak{S}_5, \sigma=(1\hspace{5mu}2\hspace{5mu}3)$
$|G\cdot\sigma|$ を考えると( 数字 $3$ つを決めると例えば $1$ がどこに移るかの自由度のみとなり) ${}_5C_3 \cdot {}_2C_1=20$ なので $|Z_G(\sigma)|=\frac{120}{20}=6$ である。明らかに $(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5)\rangle$ の位数が $6$ となるので $Z_G(\sigma)=\langle(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5)\rangle$
5. $G=\mathfrak{S}_6, \sigma=(1\hspace{5mu}2\hspace{5mu}3)(4\hspace{5mu}5\hspace{5mu}6)$
$|G\cdot\sigma|$ を考えると( $1$ と組になる数字 $2$ つを選ぶと $3$ つの数字 $2$ 組それぞれで例えば $1$ がどこに移るかの自由度のみとなり) ${}_5C_2 \cdot {}_2C_1\cdot {}_2C_1=40$ なので $|Z_G(\sigma)|=\frac{720}{40}=18$ である。明らかに $(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5\hspace{5mu}6),(1\hspace{5mu}4)(2\hspace{5mu}5)(3\hspace{5mu}6)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5\hspace{5mu}6),(1\hspace{5mu}4)(2\hspace{5mu}5)(3\hspace{5mu}6)\rangle$ の位数が $18$ となるので(※ $3\times3\times2$ だがそうなることはそんな自明じゃないとは思う) $Z_G(\sigma)=\langle(1\hspace{5mu}2\hspace{5mu}3),(4\hspace{5mu}5\hspace{5mu}6),(1\hspace{5mu}4)(2\hspace{5mu}5)(3\hspace{5mu}6)\rangle$
6. $G=\mathfrak{S}_6, \sigma=(1\hspace{5mu}2)(3\hspace{5mu}4)(5\hspace{5mu}6)$
$|G\cdot\sigma|$ を考えると(順序を無視するところを考えれば) $\frac{6!}{3!2!2!2!}=15$ なので $|Z_G(\sigma)|=\frac{720}{15}=48$ である。明らかに $(1\hspace{5mu}2),(3\hspace{5mu}4),(5\hspace{5mu}6),(1\hspace{5mu}3)(2\hspace{5mu}4),(1\hspace{5mu}5)(2\hspace{5mu}6)\in G_\sigma=Z_G(\sigma)$ であり、これらを含む最小の群 $\langle(1\hspace{5mu}2),(3\hspace{5mu}4),(5\hspace{5mu}6),(1\hspace{5mu}3)(2\hspace{5mu}4),(1\hspace{5mu}5)(2\hspace{5mu}6)\rangle$ の位数が $48$ となるので(※本当かよ ref. group4-02.sage) $Z_G(\sigma)=\langle(1\hspace{5mu}2),(3\hspace{5mu}4),(5\hspace{5mu}6),(1\hspace{5mu}3)(2\hspace{5mu}4),(1\hspace{5mu}5)(2\hspace{5mu}6)\rangle$
※ 気持ち的には $(1\hspace{5mu}2),(3\hspace{5mu}4),(5\hspace{5mu}6)$ は独立なので $2\times2\times2=8$ 、$(1\hspace{5mu}3)(2\hspace{5mu}4),(1\hspace{5mu}5)(2\hspace{5mu}6)$ は $(1\hspace{5mu}2),(3\hspace{5mu}4),(5\hspace{5mu}6)$ の対をペアとみなしたときの入れ替え $(1\hspace{5mu}2),(1\hspace{5mu}3)$ になっているので $3!$　、ペア内の置換とペアとしての置換になっているので $8\times6=48$

#### 4.2.5 担当

$G=\mathfrak{S}_n (n\ge3)$

1. p.94 定義4.1.27 の上の記述より $Z_G(\sigma)=\lbrace g\in G\mid g\sigma g^{-1}=\sigma\rbrace$ である。また、p.98 補題 4.2.2 より　$g\sigma g^{-1}=(g(1)\hspace{5mu}g(2)\cdots g(n))$ であるからこれが $\sigma=(1\hspace{5mu}2\cdots n)$ と等しくなる $g$ は、p.99 例題4.2.6と同様の議論で $n$ 通りとることができ、 $1, \sigma, \sigma^2, \cdots, \sigma^{n-1}$ となる。よって、 $Z_G(\sigma)=\langle\sigma\rangle$ である。
※ $Z_G(\sigma)$ に $\sigma$ が生成する群を含むことは自明なので演習問題4.2.2と同様な議論でそれで∀であることをを言えばよい( $\sigma$ の共役類の元は $(n-1)!$ 個ある ... )
2. $Z(G)=\lbrace g\in G\mid \forall h\in G, gh=hg\rbrace=\lbrace g\in G\mid \forall h\in G, ghg^{-1}=h\rbrace$ なので、 $g\in Z(G)\Rightarrow g\in Z_G(\sigma)$ となるから $Z(G)\subset Z_G(\sigma)$ である。このとき、 $h=(1\hspace{5mu}2)\in G$ として $g\in Z(G)$ ならば $ghg^{-1}=(g(1)\hspace{5mu}g(2))=h=(1\hspace{5mu}2)$ となるので $g(1)=1,g(2)=2$ の場合か、$g(1)=2,g(2)=1$ の場合に限る。 $g\in Z(G)\subset Z_G(\sigma)=\langle\sigma\rangle$ でこの条件を満たすのは $g=1_{G}$ の場合のみである( $n\ge3$ なので $g=(1\hspace{5mu}2)$ は $\langle\sigma\rangle$ に含まれない)(つまり $Z(G)\subset\lbrace1\rbrace$ )。逆は明らかに $1\in Z(G)$ である(つまり $Z(G)\supset\lbrace1\rbrace$ )。よって、 $Z(G)=\lbrace1\rbrace$
※(2)における $\sigma$ は(1)の $\sigma$ と同じ

#### 4.2.6 緩めだが一応完

> $\sigma\in G$ 型が $(j_1\times a_1,j_2\times a_2,\cdots,j_t\times a_t)(j_1\lt \cdots \lt j_t)\Rightarrow$
$Z_G(\sigma)\triangleright N\land N\cong(\mathbb{Z}/j_1\mathbb{Z})^{a_1}\times\cdots\times(\mathbb{Z}/j_t\mathbb{Z})^{a_t}\land Z_G(\sigma)/N\cong\mathfrak{S}_{a_1}\times\cdots\times\mathfrak{S}_{a_t}$

$\sigma=\sigma_{j_1,1}\cdots\sigma_{j_1,a_1}\cdots\sigma_{j_t,1}\cdots\sigma_{j_t,a_t}$ と共通する元のない循環置換の積で表せているとする。

$\rho\in Z_G(\sigma)$ を考えると $\rho\sigma\rho^{-1}=\sigma$ である。このとき $\rho$ の作用によって長さ $j_1$ の巡回置換は $a_1$ 個ある同じ長さ $j_1$ の巡回置換のいずれかと(重複なく)対応しているはずである。つまり適当な $\psi_1\in\mathfrak{S}_{a_1}$ によって

$\rho\sigma_{j_1,1}\rho^{-1}=\sigma_{j_1,\psi_1(1)},\quad\cdots,\quad\rho\sigma_{j_1,a_1}\rho^{-1}=\sigma_{j_1,\psi_1(a_1)}$

のように表せる。この $\psi_1$ は $\rho$ を決めれば一意に定まる。同様に議論を進めることで $\psi_2,\cdots,\psi_t$ を定めることができる。これらによって写像 $\phi: Z_G(\sigma)\ni\rho\mapsto(\psi_1,\cdots,\psi_t)\in\mathfrak{S}_{a_1}\times\cdots\times\mathfrak{S}_{a_t}$ を定めることができる。

$\rho_2\rho_1\sigma_{j_1,1}(\rho_2\rho_1)^{-1}=\rho_2\rho_1\sigma_{j_1,1}\rho_1^{-1}\rho_2^{-1}=\rho_2\sigma_{j_1,\psi_1(1)}\rho_2^{-1}=\sigma_{j_1,\psi_2(\psi_1(1))}=\sigma_{j_1,(\psi_2\circ\psi_1)(1)}$

となるので(同様に議論を進めることで)、 $\phi$ は準同型であることが言える。
p.56 命題2.8.3より $\mathrm{Ker}(\phi)$ は $Z_G(\sigma)$ の正規部分群である。 $\rho\in N=\mathrm{Ker}(\phi)$ とすると各 $\psi_i$ が恒等置換となる場合なので

$\rho\sigma_{j_1,1}\rho^{-1}=\sigma_{j_1,1},\cdots,\rho\sigma_{j_1,a_1}\rho^{-1}=\sigma_{j_1,a_1},\cdots,\rho\sigma_{j_t,t}\rho^{-1}=\sigma_{j_t,t},\cdots,\rho\sigma_{j_t,a_t}\rho^{-1}=\sigma_{j_t,a_t}$

各 $\sigma_{j_k,l}$ に共通する元はないので $\rho$ は上の各式の組み合わせで一意に定義される。
演習問題4.2.5(1)から $\sigma_{j_1,1}$ に対する作用分は $\langle\sigma_{j_1,1}\rangle\cong\mathbb{Z}/j_1\mathbb{Z}$ となる。
同様の議論を進めることで $N\cong(\mathbb{Z}/j_1\mathbb{Z})^{a_1}\times\cdots\times(\mathbb{Z}/j_t\mathbb{Z})^{a_t}$ となる。
※ここの同型をもうちょいうまく厳密に言いたい

ここでp.63 定理2.10.1(準同型定理(第一同型定理))を用いると、 $Z_G(\sigma)/N=Z_G(\sigma)/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=\mathfrak{S}_{a_1}\times\cdots\times\mathfrak{S}_{a_t}$
となる。これで題意は証明された。

#### 4.2.7 未

偶置換 $\sigma\in\mathfrak{S}_n$ 型は $(i_1,\cdots,i_l)$

p.97 命題4.2.1のような形で $\sigma=\sigma_{i_1}\cdots\sigma_{i_l}$ と書き下したとする。

1. $(\forall m\in[1,l],i_n\equiv1\mod{2}\land\forall u,v\in[i,l](u\neq v)\Rightarrow i_u\neq i_v)\Rightarrow Z_{\mathfrak{S}_n}(\sigma)=Z_{A_n}(\sigma)$
※ $\sigma$ の $\mathfrak{S}_n$ における共役類は $A_n$ における元の個数が等しい共役類2つの和
2. 1以外の場合とは、 $i_1,\cdots,i_l$ のうち i) 偶数が存在するか、または ii) 全て奇数だが一致するものが存在するかのいずれかであるが、以下のようにいずれの場合でも、 $\mathfrak{S}_n$ での $\sigma$ の共役類と $A_n$ での $\sigma$ の共役類は一致するので $\frac{|A_n|}{|Z_{A_n}(\sigma)|}=\frac{|\mathfrak{S}_n|}{|Z_{\mathfrak{S}_n}(\sigma)|}$ となる。 また $|\mathfrak{S}_n|=2|A_n|, \mathfrak{S}_n\supset A_n$ なので $[Z_{\mathfrak{S}_n}(\sigma):Z_{A_n}(\sigma)]=2$ である。
   1. $i_k$ が偶数であるとして一般性を失わない。長さが偶数の巡回置換は奇置換である。したがって、 $\sigma_{i_k}$ は奇置換である。このとき、 $\sigma_i$ に共通する元がないことと、 $\sigma_{i_k}\sigma_{i_k}\sigma_{i_k}^{-1}=\sigma_{i_k}$ であることから、 $\sigma_{i_k}\sigma\sigma_{i_k}^{-1}=\sigma$ である。
   $\mathfrak{S}_n$ において $\tau$ と $\sigma$ が共役であったとすると、適当な置換 $\nu\in\mathfrak{S}_n$ をとることで、 $\nu\tau\nu^{-1}=\sigma$ とできる。 $\nu$ が偶置換である場合には、この式から $A_n$ でも $\tau$ と $\sigma$ は共役であることがわかる。 $\nu$ が奇置換である場合には、 $\sigma_{i_k}\nu\tau(\sigma_{i_k}\nu)^{-1}=\sigma_{i_k}\nu\tau\nu^{-1}\sigma_{i_k}^{-1}=\sigma_{i_k}\sigma\sigma_{i_k}^{-1}=\sigma$ となり、 $\sigma_{i_k}$ は奇置換なので偶置換 $\sigma_{i_k}\tau$ によって $\tau$ と $\sigma$ が共役となるため、 $A_n$ でも $\tau$ と $\sigma$ は共役である。いずれの場合でも成立するので $A_n$ で $\tau$ と $\sigma$ は共役である。よって、 $\mathfrak{S}_n$ での $\sigma$ の共役類と $A_n$ での $\sigma$ の共役類は一致する。
   2. $i_j=i_k$ として一般性を失わない。 $\sigma_{i_j}=(a_1\hspace{5mu}\cdots\hspace{5mu}a_{i_j}), \sigma_{i_k}=(b_1\hspace{5mu}\cdots\hspace{5mu}b_{i_k})$ とすると、 $i_j=i_k$ (奇数) なので $\rho=(a_1\hspace{5mu}b_1)\cdots(a_{i_j}\hspace{5mu}b_{i_k})$ は奇置換であり、また $\rho\sigma_{i_j}\rho^{-1}=\sigma_{i_k}, \rho\sigma_{i_k}\rho^{-1}=\sigma_{i_j}$ で他の $\sigma_i$ は不変なので $\rho\sigma\rho^{-1}=\sigma$ である。
   $\mathfrak{S}_n$ において $\tau$ と $\sigma$ が共役であったとすると、適当な置換 $\nu\in\mathfrak{S}_n$ をとることで、 $\nu\tau\nu^{-1}=\sigma$ とできる。 $\nu$ が偶置換である場合には、この式から $A_n$ でも $\tau$ と $\sigma$ は共役であることがわかる。 $\nu$ が奇置換である場合には、 $\rho\nu\tau(\rho\nu)^{-1}=\rho\nu\tau\nu^{-1}\rho^{-1}=\rho\sigma\rho^{-1}=\sigma$ となり、 $\rho$ は奇置換なので偶置換 $\rho\nu$ によって $\tau$ と $\sigma$ が共役となるため、 $A_n$ でも $\tau$ と $\sigma$ は共役である。 $\rho$ が偶置換、奇置換いずれの場合でも成立するので $A_n$ で $\tau$ と $\sigma$ は共役である。よって、 $\mathfrak{S}_n$ での $\sigma$ の共役類と $A_n$ での $\sigma$ の共役類は一致する。

#### 4.2.8

$G=\mathfrak{S}_3$ 、 $G$ の位数 $2$ の元の集合は $X=\lbrace x_1=(1\hspace{5mu}2),x_2=(1\hspace{5mu}3),x_3=(2\hspace{5mu}3)\rbrace$ 、 $G$ は共役により $X$ に作用する、 $\rho:G\rightarrow\mathfrak{S}_3$ を置換表現とする

p.89 命題4.1.12 より置換表現 $\rho$ は群の準同型である。
$g\in G$ で $\rho(g)=1_{\mathfrak{S}_3}$ とすると、 $gx_1g^{-1}=x_1\Leftrightarrow(g(1)\hspace{5mu}g(2))=(1\hspace{5mu}2)(\because\text{p.98 補題 4.2.2 より})$ であるから $g$ は $3$ を固定する置換である。 $x_2, x_3$ について同様の議論から、 $g$ は $2$ と $1$ も固定する置換であることが言えるため、結局 $g$ は恒等置換 $1_G$ でなければならない。逆に $\rho$ は準同型なので $\rho(1_G)=1_{\mathfrak{S}_3}$ であるから $\mathrm{Ker}(\rho)=\lbrace1_G\rbrace$ となり、p.44 命題2.5.13 から $\rho$ は単射である。 $\rho$ が単射であることと $|G|=|\mathfrak{S}_3|$ であることから p.7 命題1.1.6(2) により $\rho$ は全射である。
以上により、 $\rho$ は全単射準同型なので同型である。

※共役による作用が左作用、有限集合に対する作用だけど、 $X$ に閉じてることは確認必要

#### 4.2.9 担当

$G=\mathfrak{S}_4, X=\lbrace x_1=(1\hspace{5mu}2)(3\hspace{5mu}4),x_2=(1\hspace{5mu}3)(2\hspace{5mu}4),x_3=(1\hspace{5mu}4)(2\hspace{5mu}3)\rbrace$ 、 $G$ は共役により $X$ に作用する、 $\rho:G\rightarrow\mathfrak{S}_3$ を置換表現とする

※共役による作用で置換の型が変わらない、 $X$ は $2,2$ 型の全ての元なので $X$ で閉じてる
※(2)では $\mathfrak{S}_3$ の生成元全てに行く元があることを言えばよい
※(3) $x_1\mapsto x_1, x_2\mapsto x_2, x_3\mapsto x_3$

1. $\rho$ の値
  a. $(1\hspace{5mu}2)$ の作用は $x_1\mapsto x_1, x_2\mapsto x_3, x_3\mapsto x_2$ となるので $\rho((1\hspace{5mu}2))=(2\hspace{5mu}3)$
  b. $(1\hspace{5mu}2\hspace{5mu}3)$ の作用は $x_1\mapsto x_3, x_2\mapsto x_1, x_3\mapsto x_2$ となるので $\rho((1\hspace{5mu}2\hspace{5mu}3))=(1\hspace{5mu}3\hspace{5mu}2)$
  c. $(2\hspace{5mu}3)$ の作用は $x_1\mapsto x_2, x_2\mapsto x_1, x_3\mapsto x_3$ となるので $\rho((2\hspace{5mu}3))=(1\hspace{5mu}2)$
2. p.89 命題4.1.12 より置換表現 $\rho$ は群の準同型である。よって、
$\rho((1\hspace{5mu}3))=\rho((1\hspace{5mu}2\hspace{5mu}3)(1\hspace{5mu}2))=\rho((1\hspace{5mu}2\hspace{5mu}3))\rho((1\hspace{5mu}2))=(1\hspace{5mu}3\hspace{5mu}2)(2\hspace{5mu}3)=(1\hspace{5mu}3)$
$\rho((1\hspace{5mu}3\hspace{5mu}2))=\rho((2\hspace{5mu}3)(1\hspace{5mu}2))=\rho((2\hspace{5mu}3))\rho((1\hspace{5mu}2))=(1\hspace{5mu}2)(2\hspace{5mu}3)=(1\hspace{5mu}2\hspace{5mu}3)$
$\rho(1_G)=1_{\mathfrak{S}_3}$ ※p.41 命題2.5.3 (1)より
以上により $\rho$ が $\mathfrak{S}_3$ 全ての元の値をとるので $\rho$ は全射である。
3. いまいち？：p.63 定理2.10.1(準同型定理(第一同型定理))より $G/\mathrm{Ker}(\rho)\cong\mathrm{Im}(\rho)=\mathfrak{S}_3$ である。p.53 定理2.6.20(ラグランランジュの定理)から $|G|/|\mathrm{Ker}(\rho)|=|\mathfrak{S}_3|$ となるので $|\mathrm{Ker}(\rho)|=|G|/|\mathfrak{S}_3|=24/6=4$ である。計算により $\rho(1_{\mathfrak{S}_4})=\rho(x_1)=\rho(x_2)=\rho(x_3)=1_{\mathfrak{S}_3}$ であることが確かめられるので $\mathrm{Ker}(\rho)=\lbrace1,x_1,x_2,x_3\rbrace$

#### 4.2.10 未
  
$\mathfrak{S}_4$ の部分群の共役類全て、正規部分群はどれ？

※そもそも題意があまり正しくとれてなかった