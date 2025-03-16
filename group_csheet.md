# 代数学1 群論入門

## 第1章 集合論

* p.3 定義1.1.4
    1. 恒等写像：$\mathrm{id}_A \triangleq f: A \rightarrow A \; s.t. \ \forall a \in A, f(a) = a$
    2. f,gの合成 $g\circ f: (g\circ f)(a)=g(f(a))$
    3. 逆写像：$g\circ f=\mathrm{id}_A, f\circ g=\mathrm{id}_B \Rightarrow g = f^{-1}, f=g^{-1}$
* p.4 例題1.1.5 $f:A\rightarrow B, f$が単射 $\Leftrightarrow \forall S \subset A, f^{-1}(f(S))=S $
* p.7 命題1.1.6 $A,B$ 有限集合、$|A|=|B|$
    1. $A \subset B \Rightarrow A = B$
    2. $f:A\rightarrow B$ が単射 $\Leftrightarrow f:A\rightarrow B$ が全射
* p.13 公理1.3.1 選択公理 $\forall \lambda \in \Lambda, A_\lambda \neq \emptyset \Rightarrow \Pi_{\lambda \in \Lambda} A_\lambda \neq \emptyset $
* p.14 定義1.3.2 $S$ 上の関係：$S\times S$ の部分集合
* p.14 定義1.3.5 1-3で半順序、1-4で全順序
    1. $x \leqq x$
    2. $x \leqq y, y \leqq z \Rightarrow x \leqq z$
    3. $x \leqq y, y \leqq x \Rightarrow x = y$
    4. $x \leqq y$ または $y \leqq x$ が成り立つ
* p.15 定義1.3.8
    1. $X$:順序集合、$S \subset X$で、$x_0$ が $S$ の上界：$x_0 \in X, \forall y \in S, y \leqq x_0$
    2. 極大元$x \in X$：$x \leqq y \Rightarrow y = x$
* p.15 定理1.3.9 Xが順序集合で、Xの任意の全順序部分集合が上界を持つ $\Rightarrow X$が極大元を持つ
* p.16 定理1.4.2(第2版p.18 定理1.5.2)
    1. $|A| \leqq |B| \land |A| \geqq |B| \Rightarrow |A|=|B|$
    2. $A \rightarrow B$の全射がある $\Rightarrow |A| \geqq |B|$
    3. $|A| \le |B| \oplus |A|=|B| \oplus |A| \ge |B|$
* p.16 定理1.4.3 Aは無限集合
    1. $A=A_1 \cup A_2 \land |A_1| \geqq |A_2| \Rightarrow |A| = |A_1|$
    2. $|A\times A|=|A|$
    3. $B \subset A \land |A| > |B| \Rightarrow |A| = |A \setminus B|$
* p.17 定理1.4.4 $|2^A| > |A|$

$f:A\rightarrow B$で

* $\forall X\subset A, f^{-1}(f(X))\supset X$
* $\forall Y\subset B, f(f^{-1}(Y))\subset Y$

## 第2章 群の基本

### 2.1 群の定義

*  p.23 命題2.1.10 (1)単位元は一つしかない(2)逆元は一意的に定まる

### 2.3 部分群と生成元

* p.32(第2版p.35) 命題2.3.13 $S\subset G$のとき、(1) $\langle S\rangle\le G$ (2) $S \subset H, H \le G \Rightarrow \langle S\rangle\subset H$ (つまり$\langle S\rangle$が$S$を含む最小の部分群)

### 2.4 元の位数

* p.36 $a = qb (a,b,q \in \mathbb{Z}, b \neq 0): b \mid a$、$b$ は $a$ の約数、$a$ は $b$ の倍数
* p.39 命題2.4.18(第2版 p.43 命題2.4.19) $x \in G$, $\mathrm{ord}(x)=d (<\infty)\Rightarrow x^n = 1_G \Leftrightarrow d \mid n$
* p.40 命題2.4.19(第2版 p.43 命題2.4.20) $x\in G, d=\mathrm{ord}(g)\lt\infty,H=\langle g\rangle\Rightarrow|H|=d$
* p.70 演習問題2.4.8 $(\forall g\in G, g^2=1)\Rightarrow gは可換群$

### 2.5 準同型と同型

* p.41 命題2.5.3(第2版p.45 命題2.5.4) $\phi:G_1\rightarrow G_2$：群の準同型 (1)$\phi(1_{G_1})=1_{G_2}$(2)$\forall x\in G_1, \phi(x^{-1})=\phi(x)^{-1}$(3)$\mathrm{Ker}(\phi),\mathrm{Im}(\phi)$はそれぞれ$G_1,G_2$の部分群
* p.44 命題2.5.12(第2版p.48 命題2.5.14) $G_1,G_2$：群、$\phi_1, \phi_2: G_1 \rightarrow G_2$：準同型、$(G_1 = \langle S\rangle \land \forall x \in S, \phi_1(x) = \phi_2(x)) \Rightarrow \phi_1 = \phi_2$
* p.44 命題2.5.13(第2版p.49 命題2.5.15) $\phi:G_1 \rightarrow G_2$：準同型ならば、$\phi$ が単射 $\Leftrightarrow \mathrm{Ker}(\phi)=\{1_G\}$
* p.45 (2.5.17) $i_g : G \rightarrow G, i_g(h) = ghg^{-1}$ とすると $i_g$ は同型(内部自己同型)
* p.71 演習問題2.5.3(1)：$\phi:G\rightarrow H$：群の準同型、$g\in G, \mathrm{ord}(g)<\infty\Rightarrow\mathrm{ord}(\phi(g))\mid \mathrm{ord}(g)$

### 2.6 同値関係と剰余類

* p.53(第2版p.57) 定理2.6.20(ラグランジュの定理) $|G|=(G:H)|H|$
* p.53(第2版p.58) 系2.6.21 $G$が有限群$\Rightarrow$(1)$H\le G\Rightarrow\mathrm{ord}(H)\mid\mathrm{ord}(G)$ (2) $\mathrm{ord}(g)\mid \mathrm{ord}(G) \ (g \in G)$
* p.53(第2版p.58) 命題2.6.22 $|G|=p, p$は素数 $\Rightarrow G = \langle x \rangle (G \ni x \neq 1_G)$

### 2.8 正規部分群と剰余群

* p.56(第2版p.61) 命題2.8.3 $G_1,G_2:$群、$\phi:G_1\rightarrow G_2$が準同型$\Rightarrow \mathrm{Ker}(\phi)\triangleleft G_1$
* p.57 命題2.8.7 $N\le G$、$G=\langle S\rangle,N =\langle T\rangle,\forall x\in S,\forall y\in T,xyx^{-1}\in N\land x^{-1}yx\in N \Rightarrow N$ は正規部分群。$G$が有限群なら$xyx^{-1}$のときだけで十分
* p.57 系2.8.8 $G$が群、$S \subset G$のとき、$N=\langle\{xyx^{-1}|x\in G, y\in S\}\rangle$は$S$を含む最小の正規部分群
* p.58 補題2.8.10 $N\triangleleft G, g\in G\Rightarrow gN=Ng$
* p.59 命題2.8.13 自然な写像 $\pi:G\rightarrow G/N$ は群の全射準同型で$\mathrm{Ker}(\pi)=N$
* p.73(第2版p.81) 演習問題2.8.2 $G\ge H\land|G:H|=2\Rightarrow G\triangleright H$

### 2.9 群の直積

* p.60 命題2.9.1 (1)$\forall g_1\in G_1\subset G_1\times G_2, \forall g_2\in G_2\subset G_1\times G_2, g_1g_2=g_2g_1$ (2)$G_1,G_2\triangleleft G_1\times G_2$
* p.60(第2版p.66) 命題2.9.2 $H,K\triangleleft G\land H\cap K=\lbrace1_G\rbrace\land HK=G\rightarrow G\cong H\times K$
* p.60(第2版p.67) 定理2.9.3 中国式剰余定理 $n,m\in\mathbb{Z}\land\gcd(n,m)=1\Rightarrow\mathbb{Z}/nm\mathbb{Z}\cong\mathbb{Z}/n\mathbb{Z}\times\mathbb{Z}/m\mathbb{Z}$

### 2.10 準同型定理

* p.63(第2版p.70) 定理2.10.1 準同型定理(第一同型定理) $\phi:G\rightarrow H$ が群の準同型、 $\pi:G\rightarrow G/\mathrm{Ker}(\phi)$ が自然な準同型 $\Rightarrow (\exists!\psi:G/\mathrm{Ker}(\phi)\rightarrow H,((\phi=\psi\circ\pi)\land(\psi:G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)))$
* p.64 定理2.10.2 準同型定理(部分群の対応) $N\triangleleft G, \pi:G\rightarrow G/N$が自然な準同型、$\mathbb{X}=\{X|X\le G/N\}, \mathbb{Y}=\{Y|N\subset Y\land Y\le G\}\Rightarrow\exists\phi:\mathbb{X}\ni H\mapsto\pi^{-1}(H)\in\mathbb{Y},\psi:\mathbb{Y}\ni K\mapsto\pi(K)\in\mathbb{X},\phi\circ\psi=\mathrm{id}_\mathbb{Y}\land\psi\circ\phi=\mathrm{id}_\mathbb{X}$
* p.65 命題2.10.3 第二同型定理 $H\le G, N\triangleleft G$ (1) $HN \le G\land HN=NH$ (2) $H\cap N\triangleleft H\land HN/N\cong H/H\cap N$
* p.66 命題2.10.4 第三同型定理 $N\subset N^\prime,N\triangleleft G,N^\prime\triangleleft G$ (1) $\exists \phi:G/N\rightarrow G/N^\prime,\phi(xN)=xN^\prime\land\phi$が準同型 (2) $(G/N)/(N^\prime/N)\cong G/N^\prime$
* p.66(第2版p.73) 命題2.10.5 準同型の分解 $\phi:G\rightarrow H$が群の準同型、$N\triangleleft G,\pi:G\rightarrow G/N$が自然な準同型 $\exists \psi \in \mathrm{homo}(G/N\rightarrow H)\land\phi=\psi\circ\pi\Leftrightarrow N\subset\mathrm{Ker}(\phi)$

## 第4章 群の作用とシローの定理

### 4.1 群の作用

* 第2版p.100 命題4.1.12 (群 $G$ が有限集合 $X=\lbrace x_1,\cdots,x_n\rbrace$ に左から作用するとする。このとき $g\cdot x_i=x_{\rho(g)(i)(i=1,\cdots,n)}$ とおく。$\rho(g)$ は $\lbrace1,\cdots,n$ の置換を引き起こし、写像 $\rho:G\rightarrow\mathfrak{S}_n$ を定める。これを $X$ の作用により定まる置換表現という) $\rho:G\rightarrow\mathfrak{S}_n$ は群の準同型
* p.92 系4.1.21 $G$ が $X$ に作用、 $x,y\in X, (G\cdot x)\cap(G\cdot y)\neq\emptyset\Rightarrow G\cdot y=G\cdot x\land G_y \cong G_x$
* p.93 命題4.1.23 $G$ が $X$ に作用、$x\in X$ のとき、 $G/G_x\ni gG_x\mapsto gx\in G\cdot x$ は全単射。従って $|G\cdot x|=(G:G_x)$ 、 $|G|\lt\infty$ であれば $|G\cdot x|=|G|/|G_x|$
* p.95 定理4.1.28 $\mathrm{ord}(G)\lt\infty$ (1) $x\in G\Rightarrow|C(x)|=\frac{|G|}{|Z_G(x)|}, C(x)=\lbrace x\rbrace\Leftrightarrow x\in Z(G)$ (2) $|G|=\sum|C(x)|$

### 4.2 対称群の共役類

* p.97 命題4.2.1 $\sigma$ が有限集合 $X$ の置換なら共通する元のない巡回置換の積に順序を除いて一意的に表せる。各巡回置換は(共通する元がないので)可換
* p.98 補題4.2.2(第2版p.109 補題4.2.2) $((i_1\cdots i_l)\in\mathfrak{S}_n\text{が巡回置換}\land\sigma\in\mathfrak{S}_n)\Rightarrow\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$
* p.99 定理4.2.3 $\sigma,\tau\in\mathfrak{S}_n$ であるとき、 $\sigma,\tau$ が共役であることと、 $\sigma,\tau$ の型が等しいことは同値

### 4.4 $p$ 群

* p.117 命題4.4.4 $|G|\lt\infty,|G|=p^2(p\text{は素数})\Rightarrow G\text{はアーベル群}$

### 4.5 シローの定理

* p.119 命題4.5.6 $H\le G$ 、 $H$ と共役な部分群の数は $|G/N_G(H)|$
* p.119 定理4.5.7(シローの定理) $G$ 有限群、 $|G|=n$ $p$ を $n$ の素因数、 $p^a(a\gt0)$ を $n$ を割り切る $p$ の最大のべき (1) シロー $p$ 部分群 $H$ $\exists H\le G(|H|=p^a)$ (2) $K\le G,|K|=p^b\Rightarrow\exists g\in G(K\subset gHg^{-1})$ 特に $K$ を含むシロー $p$ 部分群がある (3) $G$ の全てのシロー $p$ 部分群は共役である (4) シロー $p$ 部分群の数 $s$ は $s=|G|/|N_G(H)|\equiv 1 \mod p$ を満たす

### 4.6 生成元と関係式

* p.124 定理4.6.5 $G=\langle y_1,\cdots,y_n\rangle, R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ $\Rightarrow$ $\exists \phi: K\rightarrow G,K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle,$ $\phi\text{は全射準同型},$ $\phi(x_1)=y_1,\cdots,\phi(x_n)=y_n$

### 4.7 位数12の群の分類

### 4.8 有限生成アーベル群

* p130 定理4.8.1 $G$ が有限生成アーベル群 (1) 有限個の整数 $r\ge0,e_1,\cdots,e_n\ge2$ で $i=1,\cdots,n-1$ に対し $e_i\mid e_{i+1} \land G\cong\mathbb{Z}^r\times\mathbb{Z}/e_1\mathbb{Z}\times\cdots\times\mathbb{Z}/e_n\mathbb{Z}$ (2) $r,e_1,\cdots,e_n$ は一意的に定まる
* p.131 定理4.8.2 $G$ が有限生成アーベル群 (1) 整数 $r$ 、素数 $p_1,\cdots,p_t$ と正の整数 $a_1,\cdots,a_t$ があり、 $G\cong\mathbb{Z}^r\times\mathbb{Z}/p_1^{a_1}\mathbb{Z}\times\cdots\times\mathbb{Z}/p_t^{a_t}\mathbb{Z}$ となる (2) $p_1^{a_1},\cdots,p_t^{a_t}$ の順序を除いて一意的である