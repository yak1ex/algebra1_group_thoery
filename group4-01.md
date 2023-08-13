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

$G=\{x_1=1,x_2=(1\;2)(3\;4),x_3=(1\;3)(2\;4),x_3=(1\;4)(2\;3)\}, \rho:G\rightarrow \mathfrak{S}_4, \rho(x_2),\rho(x_3),\rho(x_4)$

#### 4.1.2 担当

$G=\mathfrak{S}_3, x_1=1_{\mathfrak{S}_3}=1, x_2=(1\;2), x_3=(1\;3), x_4=(2\;3), x_5=(1\;2\;3), x_6=(1\;3\;2), g=(1\;2), h=(1\;2\;3), \rho((2\;3))$

#### 4.1.3

$G=\mathfrak{S}_3,H=\langle(1\;2)\rangle,G/H=\{x_1=1,x_2=(1\;2\;3),x_3=(1\;3\;2)\},\rho((1\;3\;2))$

#### 4.1.4

$G=\mathfrak{S}_3$ 共役による作用で置換表現 $\rho$
$1,(1\;2),(1\;3),(2\;3),(1\;2\;3),(1\;3\;2)$ の順序で番号
$\rho((1\;2\;3))$

#### 4.1.5

$G$ 四元数群 $x_1=1, x_2=-1, x_3=i, x_4=-i, x_5=j, x_6=-j, x_7=k, x_8=-k$
$G$ に $G$ に左からの積で作用させ、 $\rho:G\rightarrow\mathfrak{S}_8$ を置換表現

1. $\rho(i)$
2. $\rho(k)$

#### 4.1.6

$x,y\in G, \mathrm{ord}(x)=7$

1. $yxy^{-1}=x^3\Rightarrow y^{100}xy^{-100}$
2. $yxy^{-1}=x^5\Rightarrow y^{1000}xy^{-1000}$

#### 4.1.7

#### 4.1.8 担当

#### 4.1.9

#### 4.1.10

#### 4.1.11

#### 4.1.12

#### 4.1.13

#### 4.1.14

#### 4.1.15 (2)担当

#### 4.1.16

#### 4.1.17

#### 4.1.18
