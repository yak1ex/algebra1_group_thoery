# 代数学1 群論入門

## 4.1 群の作用

### メモ

### p.90 定理4.1.13

* $\mathrm{Ker}(\rho)=\{1_G\}$ なら単射、はp.44命題2.5.13
* 一般的には全射にはならない
* $G$ の $G$ への左からの積による作用、なので $X=G$ つまり $|X|=|G|=n$ のケース

### p.91 例4.1.17

* $h\in G$ である、なぜなら $f\in X$ で、 $G$ から $\mathbb{C}$ への関数
* $(gf)(h)=f(hg)$ は関数の定義

### p.92 命題4.1.20

* $G_y=gG_xg^{-1}$ について： $gx=y$ なので $g^{-1}$ で $x$ に飛ばして、 $G_x$ では固定、 $g$ で $y$ に戻すイメージ

### p.93 系4.1.22

$1_G \in G$ だから $y\in G\cdot y$ なので
$y\sim x \Rightarrow G\cdot y=G\cdot x\Rightarrow y\in G\cdot x$ 。
逆に、 $y \in G\cdot x\Rightarrow G\cdot y=G\cdot x(\because\text{p.92 命題4.2.10})\Rightarrow y\sim x$
よって、 $y\sim x\Leftrightarrow y\in G\cdot x$ 。

$x$ の同値類は $\{y\in G|y\sim x\}(\text{p.48 定義2.6.7})$ 。↑より $y\sim x\Leftrightarrow y\in G\cdot x$ なので $x$ の同値類は $G\cdot x$ と等しい。

### p.94 定義4.1.26

1. $N_G(H)=\{g\in G|gHg^{-1}=H\}$ ：正規化群：共役による作用が $H$ 内に閉じる
2. $Z_G(H)=\{g\in G|\forall h\in H, gh=hg\}$ ：中心化群： $H$ の元と可換な $G$ の元
3. $Z(G)=Z_G(G)$ ： $G$ の中心： $G$ の任意の元と可換な元

$G\supset N_G(H)\supset H \land N_G(H)\triangleright H$ であり、 $N_G(H)$ は $H$ を正規部分群としてもつ $G$ の部分群のうち最大のものになるはず。

$N_G(H)\supset Z_G(H)\supset Z(G)=Z_G(G)$ ※ $Z_G(G)$ は $Z_G(H)$ よりも厳しい条件。

$N_G(H) = \bigcap_{h\in H} G_h$ ※ここで $G_h$ は共役による作用の安定化群。

$Z(G)$ は可換群だが、 $G$ の最大の可換部分群とは異なる。なぜなら $G$ の元全体に対して条件があるから。

### p.94 定義4.1.26の下の例

$u\in\mathbb{Z}$ が重要。 $\mathbb{Q}$ でも議論は成立しないから連続かどうかとは違う。相手を固定した乗法(スカラー倍)が全射じゃない、除法が定義できない、体ではない、くらい？

### p.95 定理4.1.28(1)

$\mathrm{Ad}(g)(x)=x\Leftrightarrow gxg^{-1}=x\Leftrightarrow gx=xg$ なので、安定化群 $G_x=Z_G(x)$ ※
また軌道 $G\cdot x=\{gxg^{-1}|g\in G\}=C(x)$ ←共役類
命題4.1.23 $|G\cdot x|=\frac{|G|}{|G_x|}$ に当てはめて、 $|C(x)|=\frac{|G|}{|Z_G(x)|}$

※p.94 定義4.1.27の前の記載から $Z_G(x)=Z_G(\langle x\rangle)=\{g\in G|gxg^{-1}=x\}$ なので $\langle x\rangle$ ではなく $x$ だけ考えてよい。

### p.95 類等式の制約

(3)は $Z(G)=Z_G(G)$ が $G$ の部分群であることからp.53系2.6.21(1)を使って言える

$\forall x\in G(C(x)=1)$ ならば $G$ は可換群。なぜなら常に $x \in C(x)$ なので $|C(x)|=1\Leftrightarrow C(x)=\{x\}\Leftrightarrow\forall g\in G(gxg^{-1}=x)=\Leftrightarrow\forall g\in G(gx=xg)$
$\forall x\in G$ についてこれが成立することになるので $G$ は可換群。

### p.96 例4.1.30

「なので、 $C(x)=\{(1\;2),(1\;3),(2\;3)\}$ 」は上2つの具体的な計算結果と $|C(x)|=3$ から来ている。そもそも「可換でない」について共役で計算してるのが流れ的に素直じゃないかも。

### 演習問題

#### 4.1.1

| ↓ $\circ$ → | $x_1$ <br> $=1$ <br> $=\begin{pmatrix}1\;2\;3\;4\\1\;2\;3\;4\end{pmatrix}$ | $x_2$ <br> $(1\;2)(3\;4)$ <br> $=\begin{pmatrix}1\;2\;3\;4\\2\;1\;4\;3\end{pmatrix}$ | $x_3$ <br> $=(1\;3)(2\;4)$ <br> $=\begin{pmatrix}1\;2\;3\;4\\3\;4\;1\;2\end{pmatrix}$ | $x_4$ <br> $=(1\;4)(2\;3)$ <br> $=\begin{pmatrix}1\;2\;3\;4\\4\;3\;2\;1\end{pmatrix}$ |
| -           |   -   |   -   |   -   |   -   |
| $x_1$       | $x_1$ | $x_2$ | $x_3$ | $x_4$ |
| $x_2$       | $x_2$ | $x_1$ | $x_4$ | $x_3$ |
| $x_3$       | $x_3$ | $x_4$ | $x_1$ | $x_2$ |
| $x_4$       | $x_4$ | $x_3$ | $x_2$ | $x_1$ |

上表より $G$ は可換群である。よって左からの積でも右からの積でも作用の結果は変わらない。

$\rho(x_1)=1$
$\rho(x_2)=\begin{pmatrix}1\;2\;3\;4\\2\;1\;4\;3\end{pmatrix}=(1\;2)(3\;4)=x_2$
$\rho(x_3)=\begin{pmatrix}1\;2\;3\;4\\3\;4\;1\;2\end{pmatrix}=(1\;3)(2\;4)=x_3$
$\rho(x_4)=\begin{pmatrix}1\;2\;3\;4\\4\;3\;2\;1\end{pmatrix}=(1\;4)(2\;3)=x_4$

#### 4.1.2 担当

$x_1=1_{\mathfrak{S}_3}=1, x_2=(1\;2), x_3=(1\;3), x_4=(2\;3), x_5=(1\;2\;3), x_6=(1\;3\;2)$

$x_4x_1=x_4$
$x_4x_2=x_6$
$x_4x_3=x_5$
$x_4x_4=x_1$
$x_4x_5=x_3$
$x_4x_6=x_2$

以上より $\rho((2\;3))=\rho(x_4)=(1\;4)(2\;6)(3\;5)$

#### 4.1.3

$x_1=1,x_2=(1\;2\;3),x_3=(1\;3\;2)$
$(1\;3\;2)x_1=(1\;3\;2)\in x_3H$
$(1\;3\;2)x_2=1\in x_1H$
$(1\;3\;2)x_3=(1\;2\;3)\in x_2H$
よって $\rho((1\;3\;2))=(1\;3\;2)$

#### 4.1.4

$x_1=1,x_2=(1\;2),x_3=(1\;3),x_4=(2\;3),x_5=(1\;2\;3),x_6=(1\;3\;2)$ として、
$x_5x_1x_5^{-1}=1=x_1$
$x_5x_2x_5^{-1}=(2\;3)=x_4$
$x_5x_3x_5^{-1}=(1\;3)=x_2$
$x_5x_4x_5^{-1}=(2\;3)=x_3$
$x_5x_5x_5^{-1}=(1\;2\;3)=x_5$
$x_5x_6x_5^{-1}=(1\;3\;2)=x_6$
なので
$\rho((1\;2\;3))=\rho(x_5)=(2\;4\;3)$

#### 4.1.5

p.32の乗積表より抜粋して
| | $x_1=1$ | $x_2=-1$ | $x_3=i$ | $x_4=-i$ | $x_5=j$ | $x_6=-j$ | $x_7=k$ | $x_8=-k$ |
|-|-|-|-|-|-|-|-|-|
|$x_3=i$|$x_3=i$|$x_4=-i$|$x_2=-1$|$x_1=1$|$x_7=k$|$x_8=-k$|$x_6=-j$|$x_5=j$|
|$x_7=k$|$x_7=k$|$x_8=-k$|$x_5=j$|$x_6=-j$|$x_4=-i$|$x_3=i$|$x_2=-1$|$x_1=1$|


1. $\rho(i)=(1\;3\;2\;4)(5\;7\;6\;8)$
2. $\rho(k)=(1\;7\;2\;8)(3\;5\;4\;6)$

#### 4.1.6

$yxy^{-1}=x^k$ とすると、
$yx^ny^{-1}=(yxy^{-1})^n=x^{kn}$ であり、
$y^mx^ny^{-m}=y^{m-1}(yxy^{-1})^ny^{-(m-1)}=y^{m-1}x^{kn}y^{-(m-1)}=y^{m-2}x^{k^2n}y^{-(m-2)}=\ldots=x^{k^mn}$

$n=1$ で $x$ の位数が $7$ の場合となるので $k^m$ を $7$ で割った余りを求めればよい。
ここで $7$ は素数で、 $3,5$ は $7$ で割り切れないため p.53 定理2.6.23より $3^6\equiv1\mod7$ であり $5^6\equiv1\mod7$ である。

1. $k=3, m=100$ の場合である。 $3^{100}=3^{6\cdot16+4}=(3^6)^{16}\cdot3^4\equiv3^4\equiv4\mod7$ なので $y^{100}xy^{-100}=x^4$
2. $k=5, m=1000$ の場合である。 $5^{1000}=5^{6\cdot166+4}=(5^6)^{166}\cdot5^4\equiv5^4\equiv2\mod7$ なので $y^{1000}xy^{-1000}=x^2$

#### 4.1.7

$R_i(\theta)$ を 第 $1$ 軸－第 $i$ 軸平面上での回転行列とする $(i\neq1)$ 。すなわち

$r_i(\theta)_{1,1}=r_i(\theta)_{i,i}=\cos\theta$
$r_i(\theta)_{1,i}=-\sin\theta$
$r_i(\theta)_{i,1}=\sin\theta$
$r_i(\theta)_{j,k}=\delta_{j,k} (j\neq1\lor j\neq i\lor k\neq1 \lor k\neq i)$

$$
R_i(\theta) = \begin{pmatrix}
\cos\theta & \cdots & -\sin\theta & \cdots \\
0 & 1 & 0 & \cdots \\
\cdots \\
\sin\theta & \cdots & \cos\theta & \cdots \\
\cdots
\end{pmatrix}
$$

このとき、 $\det R_i(\theta)=1$(※)かつ ${}^t R_i(\theta) R_i(\theta) = I_n$ なので $R_i(\theta)\in\mathrm{SO}_n=G$ である。
※ $2$ 行 $i$ 行、 $2$ 列 $i$ 列をそれぞれ入れ替えると行列式は不変(符号が $2$ 回反転)、 結果は $2$ 次元の回転行列と単位行列のブロック対角行列になりそれぞれの行列式の値は $1$ のため)
また、 $\lVert R_i(\theta)\boldsymbol{x}\rVert=\sqrt{{}^t\lbrace R_i(\theta)\boldsymbol{x}\rbrace\lbrace R_i(\theta)\boldsymbol{x}\rbrace}=\sqrt{{}^t\boldsymbol{x}{}^t R_i(\theta)R_i(\theta)\boldsymbol{x}}=\sqrt{{}^t\boldsymbol{x}I_n\boldsymbol{x}}=\sqrt{{}^t\boldsymbol{x}\boldsymbol{x}}=\lVert\boldsymbol{x}\rVert$ なので $R_i(\theta)$ の作用で長さは不変である。

$\boldsymbol{x}=\boldsymbol{0}$ ならば $\boldsymbol{y}=\boldsymbol{0}$ となるので、 $G\boldsymbol{x}=\lbrace\boldsymbol{0}\rbrace=G\boldsymbol{y}$ のため、 $\boldsymbol{x},\boldsymbol{y}$ は同じ軌道に属する。
$\boldsymbol{x}\neq\boldsymbol{0}$ ならば、いずれかの成分は $0$ ではない。第 $i(\neq2)$ 成分が $0$ でないとすると、 第 $1$ 軸－第 $i$ 軸平面上での回転、すなわち適当な $\theta$ をとって $R_i(\theta)$ を作用させることで第 $1$ 成分が正、第 $i$ 成分が $0$ とできる。この作用で長さは不変なのでこれを繰り返すことで $R_{i_n}(\theta_n)\cdots R_{i_1}(\theta_1)\boldsymbol{x}=\lbrack\lVert\boldsymbol{x}\rVert,0,\cdots,0\rbrack$ とできる。 $R_{i_n}(\theta_n)\cdots R_{i_1}(\theta_1)\in G$ なので、$\lbrack\lVert\boldsymbol{x}\rVert,0,\cdots,0\rbrack\in G\boldsymbol{x}$ 。 $\boldsymbol{x}\neq\boldsymbol{0}$ ならば $\boldsymbol{y}\neq\boldsymbol{0}$ となので同様の議論によって、$\lbrack\lVert\boldsymbol{y}\rVert,0,\cdots,0\rbrack=\lbrack\lVert\boldsymbol{x}\rVert,0,\cdots,0\rbrack\in G\boldsymbol{y}$ 。 従って、 $G\boldsymbol{x}\cap G\boldsymbol{y}\neq\emptyset$ なので、p.92 系4.1.21より $G\boldsymbol{x}=G\boldsymbol{y}$ となり、 $\boldsymbol{x},\boldsymbol{y}$ は同じ軌道に属する。

#### 4.1.8 担当

1. $\sigma((2,4))=(\sigma(2),\sigma(4))=(1,4)$
2. 以下 $i,j\in X,\sigma\in G,Z=\lbrace(i,j)\in Y|i=j\rbrace=\lbrace(1,1),(2,2),\cdots,(n,n)\rbrace$ とする。 $\sigma((i,j))=(\sigma(i),\sigma(j))$ である。 $\sigma$ は置換なので全単射だから $\sigma(i)=\sigma(j)\Rightarrow i=j$ である。対偶を取ると $i\neq j\Rightarrow\sigma(i)\neq\sigma(j)$ 。また当然ながら $i=j\Rightarrow\sigma(i)=\sigma(j)$ である。
$i=j$ の場合を考えると、$\sigma$ として $(i\;1),(i\;2),\cdots,(i\;n)$ (※いずれかは恒等置換になる)を考えれば作用 $\sigma((i,j)) $ の結果は $Z$ の元全てをとりつくす。すなわち、$\lbrace\sigma((i,j))|(i,j)\in Y,i=j,\sigma\in G\rbrace\supset Z$ 。また $i=j\Rightarrow\sigma(i)=\sigma(j)$ なので $\lbrace\sigma((i,j))|(i,j)\in Y,i=j,\sigma\in G\rbrace\subset Z$ 。つまり $\lbrace\sigma((i,j))|(i,j)\in Y,i=j,\sigma\in G\rbrace=Z$
$i\neq j$ の場合を考えると、$\sigma$ として $(i\;k)(j\;l)$ ($k\neq l\in X$) を考えれば $\sigma((i,j)) $ の結果は $Y\setminus Z$ の元全てをとりつくす。すなわち、$\lbrace\sigma((i,j))|(i,j)\in Y,i\neq j,\sigma\in G\rbrace\supset Y\setminus Z$ 。また $i\neq j\Rightarrow\sigma(i)\neq\sigma(j)$ なので $\lbrace\sigma((i,j))|(i,j)\in Y,i\neq j,\sigma\in G\rbrace\subset Y\setminus Z$ 。つまり $\lbrace\sigma((i,j))|(i,j)\in Y,i\neq j,\sigma\in G\rbrace=Y\setminus Z$
以上により軌道は $Z, Y\setminus Z$ の $2$ つであり、代表元は例えば $(1,1), (1,2)$ ととれる。
3. $(1,1)$ に対する安定化群は、$1$ を固定した置換($\mathfrak{S}_{n-1}$ と同型)で、$(1,2)$ に対する安定化群は、$1,2$ を固定した置換($\mathfrak{S}_{n-2}$ と同型)である。
※$|G|=n!,|G_{(1,1)}|=(n-1)!,|G\cdot(1,1)|=|Z|=n,|G_{(1,2)}|=(n-2)!,|G\cdot(1,2)|=|Y\setminus Z|=n^2-n=n(n-1)$

#### 4.1.9

#### 4.1.10

#### 4.1.11

#### 4.1.12

#### 4.1.13

#### 4.1.14

#### 4.1.15 (2)担当

2. $\forall h\in G$ について $(\rho(1_G)f)(h)=f(h1_G^{-1})=f(h1_G)=f(h)$ なので $(\rho(1_G)f)=f$
また、 $\forall h\in G$ について、 $e\in G$ として $(\rho(e)(\rho(g)f))(h)=(\rho(g)f))(he^{-1})=f(he^{-1}g^{-1})=f(h(ge)^{-1})=(\rho(ge)f)(h)$ なので $\rho(e)(\rho(g)f)=\rho(ge)f$
以上により $\rho(g)f$ は $G$ の $X$ への右作用である。

※ $X\ni f\mapsto\rho(g)f\in X$ は厳密な表記ではなくて、 $G\times X\ni (g,f)\mapsto\rho(g)f\in X$ なのでは

#### 4.1.16

#### 4.1.17

#### 4.1.18

* (1): $3$ が $8$ の約数ではない
* (4): $1$ の現れる回数 $6$ が $8$ の約数ではない