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
* p.13 公理1.3.1 選択公理 $\forall \lambda \in \Lambda, A_\lambda \neq \empty \Rightarrow \Pi_{\lambda \in \Lambda} A_\lambda \neq \empty $
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

### 2.4 元の位数

* p.36 $a = qb (a,b,q \in \mathbb{Z}, b \neq 0): b \mid a$、$b$ は $a$ の約数、$a$ は $b$ の倍数
* p.39 命題2.4.18 $x \in G$, $x$ の位数は $d (<\infty)$ として、$x^n = 1_G \Leftrightarrow d \mid n$

### 2.5 準同型と同型

* p.44 命題2.5.12 $G_1,G_2$ 群、$\phi_1, \phi_2: G_1 \rightarrow G_2$ 準同型、($G_1 = \langle S\rangle \land \forall x \in S, \phi_1(x) = \phi_2(x)) \Rightarrow \phi_1 = \phi_2$
* p.44 命題2.5.13 $\phi:G_1 \rightarrow G_2$ 準同型ならば、$\phi$ が単射 $\Leftrightarrow \mathrm{Ker}(\phi)=\{1_G\}$
* p.45 (2.5.17) $i_g : G \rightarrow G, i_g(h) = ghg^{-1}$ とすると $i_g$ は同型(内部自己同型)