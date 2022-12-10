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
* p.16 定理1.4.2
    1. $|A| \leqq |B| \land |A| \geqq |B| \Rightarrow |A|=|B|$
    2. $A \rightarrow B$の全射がある $\Rightarrow |A| \geqq |B|$
    3. $|A| \le |B| \oplus |A|=|B| \oplus |A| \ge |B|$
* p.16 定理1.4.3 Aは無限集合
    1. $A=A_1 \cup A_2 \land |A_1| \geqq |A_2| \Rightarrow |A| = |A_1|$
    2. $|A\times A|=|A|$
    3. $B \subset A \land |A| > |B| \Rightarrow |A| = |A \setminus B|$
* p.17 定理1.4.4 $|2^A| > |A|$

## 第2章 群の基本

### 2.3 部分群と生成元

* p.32 命題2.3.13 $S\subset G$のとき、(1) $\langle S\rangle$は$G$の部分群 (2) $S \subset H$で$H$が$G$の部分群ならば$\langle S\rangle\subset H$ (つまり$\langle S\rangle$が$S$を含む最小の部分群)

### 2.4 元の位数

* p.36 $a = qb (a,b,q \in \mathbb{Z}, b \neq 0): b \mid a$、$b$ は $a$ の約数、$a$ は $b$ の倍数
* p.39 命題2.4.18 $x \in G$, $x$ の位数は $d (<\infty)$ として、$x^n = 1_G \Leftrightarrow d \mid n$

### 2.5 準同型と同型

* p.44 命題2.5.12 $G_1,G_2$ 群、$\phi_1, \phi_2: G_1 \rightarrow G_2$ 準同型、($G_1 = \langle S\rangle \land \forall x \in S, \phi_1(x) = \phi_2(x)) \Rightarrow \phi_1 = \phi_2$
* p.44 命題2.5.13 $\phi:G_1 \rightarrow G_2$ 準同型ならば、$\phi$ が単射 $\Leftrightarrow \mathrm{Ker}(\phi)=\{1_G\}$
* p.45 (2.5.17) $i_g : G \rightarrow G, i_g(h) = ghg^{-1}$ とすると $i_g$ は同型(内部自己同型)
* p.71 演習問題2.5.3(1)：$\phi:G\rightarrow H$：群の準同型、$g\in G, \mathrm{ord}(g)<\infty\Rightarrow\mathrm{ord}(\phi(g))\mid \mathrm{ord}(g)$

### 2.6 同値関係と剰余類

* p.53 定理2.6.20(ラグランジュの定理) $|G|=(G:H)|H|$
* p.53 系2.6.21 $G$が有限群なら(1)$H$が$G$の部分群なら$|H| \mid |G|$ (2) $g \in G$の位数 $\mid |G|$
* p.53 命題2.6.22 $|G|=p, p$は素数 $\Rightarrow G = \langle x \rangle (G \ni x \neq 1_G)$

### 2.8 正規部分群と剰余群

* p.57 命題2.8.7 $N$が$G$の部分群、$G=\langle S\rangle,N =\langle T\rangle,\forall x\in S,\forall y\in T,xyx^{-1}\in N\land x^{-1}yx\in N \Rightarrow N$ は正規部分群。$G$が有限群なら$xyx^{-1}$のときだけで十分
* p.57 系2.8.8 $G$が群、$S \subset G$のとき、$N=\langle\{xyx^{-1}|x\in G, y\in S\}\rangle$は$S$を含む最小の正規部分群

### 2.9 群の直積

* p.60 定理2.9.3 中国式剰余定理 $n,m\in\mathbb{Z}\land\gcd(n,m)=1\Rightarrow\mathbb{Z}/nm\mathbb{Z}\cong\mathbb{Z}/n\mathbb{Z}\times\mathbb{Z}/m\mathbb{Z}$