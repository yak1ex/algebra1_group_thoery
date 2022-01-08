# 代数学1 群論入門

## 1章の演習問題

### 1.1.1

$$f : g, A : X, B : X$$

### 1.1.2

1. $f(S)=\{3,4\}$
2. $f^{-1}(S_1)=\emptyset, f^{-1}(S_2)=\{1,3,4,5\}$
3. $f(x)=2$ となる $x$ が存在しないため全射ではない
4. $f(1)=f(4)$ だが $1 \neq 4$ なので単射ではない

### 1.1.3

* 全射：(終域の)任意の元に対して、その元に来る(始域の)元が存在する
* 単射：ある(終域の)元に行く(始域の)元はただ1つだけ存在する

### 1.1.4

* 全射射像：$(x+1)(x+2)(x+3), x(x+1)(x+2)(x+3)(x+4), x(x+1)(x+2)(x+3)(x+4)(x+5)(x+6) $
* 単射射像：$e^x, \tanh x, \frac{1}{1+e^{-x}}$

### 1.1.5

$(\Rightarrow)$
$f$ が全単射であるとすると、全射性より $\forall b \in B, \exists a \in A, f(a) = b$。単射性より $ a, a' \in A$ で $f(a) = f(a') = b$ ならば $a = a'$ となるため $f(a)=b$ となる $a$ は各 $b$ に対してただ一つに定まる。これを $a_b$ とし、関数 $g$ を $g(b)=a_b$ と定めると$$(g \circ f)(a) = g(f(a)) = g(b) = a_b$$ここで $f(a) = b = f(a_b)$ と $f$ の単射性から $a = a_b$。よって、$g \circ f = id_A$。
また$$(f \circ g)(b) = f(g(b)) = f(a_b) = b$$すなわち$f \circ g = id_B$。以上より $g$ が $f$ の逆写像となるため、$f$ が全単射であれば逆写像を持つことが証明された。

$(\Leftarrow)$
$f$ が逆写像 $g$ を持つとする。このとき $f \circ g = id_B$ かつ $g \circ f = id_A$。ここで $f$ が全射ではないと仮定すると、ある $b \in B$ について $f(a) = b$ となる $a \in A$ が存在しないことになるが、$$(f \circ g)(b) = b \\
\Rightarrow f(g(b)) = b$$となって、$g(b) \in A$ のため矛盾する。よって $f$ は全射。

また、$f$ が単射ではないと仮定すると、$a, a' \in A$ で $f(a) = f(a')$ だが、$a \neq a'$ となる $a, a'$ が存在するが、
$$ f(a) = f(a') \\
\Rightarrow g(f(a)) = g(f(a')) \\
\Rightarrow (g \circ f)(a) = (g \circ f)(a') \\
\Rightarrow id_A(a) = id_A(a') \\
\Rightarrow a = a'
$$となり矛盾する。よって$f$ は単射。

### 1.1.6

1. $g$ の全射性より、$\forall c \in C$ について $g(b_c) = c$ となる $b_c \in B$ が存在することが言える。また $f$ の全射性より $f(a_{b_c}) = b_c$ となる $a_{b_c} \in A$ の存在が言える。従って $(g \circ f)(a_{b_c}) = g(f(a_{b_c})) = g(b_c) = c$ となる $a_{b_c}$ が存在するため、$g \circ f$ は全射である。
2. $a, a' \in A$ について、$(g \circ f)(a) = (g \circ f)(a')$ とする。$$\begin{align*}
& & (g \circ f)(a) &= (g \circ f)(a') \\
&\Rightarrow & g(f(a)) &= g(f(a')) \\
&\Rightarrow & f(a) &= f(a') \qquad(\because gの単射性より) \\
&\Rightarrow & a &= a' \qquad(\because fの単射性より)
\end{align*}$$となるため、$g \circ f$ も単射である。
3. $g \circ f$ が全射であるため、$\forall c \in C, \exists a \in A, (g \circ f)(a) = c$。このとき、$g(f(a))=c$となる$f(a) \in B$が存在するため $g$ は全射である。
4. $a,a' \in A$に対して $f(a)=f(a')$ とする。このとき $g(f(a))=g(f(a'))$ なので $(g \circ f)(a) = (g \circ f)(a')$。$g \circ f$ が単射であるため、$a = a'$。つまり $f$ は単射。

【間違い】
~~$g \circ f$ が単射であるため、$a,a' \in A$ で $(g \circ f)(a) = (g \circ f)(a')$ ならば $a = a'$。このとき、$g(f(a)) = g(f(a'))$ かつ $f(a) = f(a')$ となるため、$g$ は単射である。~~

### 1.1.7

$(\Rightarrow)$
$S \subset B$ を任意の部分集合とする。$s \in f(f^{-1}(S))$ とすると、$f(a) = s$ となる $a \in f^{-1}(S)$ が存在する。このとき $s = f(a) \in S$ となるため $f(f^{-1}(S)) \subset S$。

また$s \in S$ とすると $f$ の全射性より $f(a) = s \in S \subset B$ となる $a \in A$ が存在する。このとき $a \in f^{-1}(S)$ となるため $f(a) \in f(f^{-1}(S))$。すなわち $f(a) = s \in f(f^{-1}(S))$。よって$S \subset f(f^{-1}(S))$。

以上より、$f(f^{-1}(S)) = S$。

$(\Leftarrow)$
任意の部分集合 $S \subset B$ に対して $f(f^{-1}(S))=S$ なので、$f(f^{-1}(B))=B$ である($S=B$とした場合)。従って、$f(f^{-1}(B)) = \{f(a)|a \in f^{-1}(B)\} = B$。すなわち、任意の$b \in B$について$b = f(a)$ となる $a \in f^{-1}(B) \subset A$ が存在するため $f$ は全射である。

※{b}で使ったほうがわかりやすいかも

### 1.1.8

$S \subset B$を任意の部分集合とする。

$s \in f^{-1}(f(f^{-1}(S)))$ とすると $f(s) \in f(f^{-1}(S))$。すなわち $s \in f^{-1}(S)$。よって $f^{-1}(f(f^{-1}(S))) \subset f^{-1}(S)$。

$s \in f^{-1}(S)$ とすると $f(s) \in f(f^{-1}(S))$。すなわち $s \in f^{-1}(f(f^{-1}(S)))$。よって、$f^{-1}(S) \subset f^{-1}(f(f^{-1}(S)))$。

以上より、$f^{-1}(f(f^{-1}(S))) = f^{-1}(S)$。

### 1.1.9

1. $x = 4.5$
2. $A = \mathbb{N}, B = \{1\}$
3. $A = \{1,2\}, S_1 = \{1\}, S_2 = \{2\}, B = \{1\},f(1)=f(2)=1$ のとき、$S_1 \cap S_2 = \emptyset$ なので $f(S_1 \cap S_2) = \emptyset$ だが、$f(S_1) \cap f(S_2) = \{1\}$

### 1.1.10 **(←担当)**

1. A:「$x$ は実数で $2 \le x$」 B:「$x$ は実数で $1 \le x \le 3$」
→(d)必要条件でも十分条件でもない
A $\Rightarrow$ B: $x=4$ が反例
B $\Rightarrow$ A: $x=1$ が反例
2. A:「$x$ は実数で $1 \le x$」 B:「$x$ は実数で $1 \le x \le 3$」
→(a)必要条件で十分条件でない
A $\Rightarrow$ B: $x=4$ が反例
B $\Rightarrow$ A: 自明。よって必要条件
3. $X$ は集合で $Y$ はその部分集合とするとき、A,Bは以下の主張である。
A:「$X$ は有限集合である」 B:「$Y$ は有限集合である」
→(b)十分条件で必要条件でない
A $\Rightarrow$ B: 有限集合 $X$ の部分集合なので $Y$ も有限集合(※)。よって十分条件
B $\Rightarrow$ A: $X = \mathbb{N}, Y = \{1\}$ が反例

※$Y$ が空集合の場合は有限集合なので、$Y$ が空集合ではないとして $y_0$ を適当な $Y$ の元として選んで、
$$f(x) = \left\{ \begin{array}{}
x & (x \in Y) \\
y_0 & (x \notin Y)
\end{array} \right. $$
と置くと $f : X \rightarrow Y$ は全射($\forall y \in Y \subset X, f(y)=y$)なので$|X| \ge |Y|$ 。よって元の個数が有限、とか。有限集合も厳密に定義されてないのでさすがに自明でよい？

### 1.1.11

1. (Aが成り立たないかBが成り立たない)かつCが成り立たない
2. Aが成り立つが、BもCも成り立たない
3. Aが成り立つがBが成り立たないか、Aが成り立たないがBが成り立つ
4. ある自然数 $n$ に対して $0 \lt x \lt \frac{1}{n}$ となる実数 $x$ が存在しない
5. $f(x)$を$[0,1]$上の実数値関数とする。このとき、任意の $\delta \gt 0$ について、$x,y \in [0,1]$ で $|x-y| \lt \delta$ だが $|f(x) - f(y)| \ge \epsilon$ となる $\epsilon \gt 0$ が存在する

### 1.1.12

1. $4+5 = 9 \ge 3$ なので成り立つ
2. $1+(-1) = 0 \lt 3$ なので成り立たない

### 1.1.13

等価(=)、順序(<)、同値(～)

### 1.2.1

* 同値類

### 1.2.2

* $V$から$V$への射像全体

### 1.3.1

1. $Y \subset X$ を任意の全順序部分集合とする。また、$$S_Y = \bigcup_{y = (S_y,f_y) \in Y} S_y$$
と置く。また、$S_Y \subset A$ から $B$ への射像 $f_Y(s)$ を次のように定める。$s \in S_Y$ なのでいずれかの $y = (S_y, f_y)$ に対して $s \in S_y$ となる。この $f_y$ を使って $f_Y(s) = f_y(s) (s \in S_y)$ と定義する。これが well-defined($y$の選択によらない) であることは以下のように示せる。$s \in S_y$ となる $y$ が複数存在したとして $t = (S_t, f_t), u = (S_u, f_u)$ とする。このとき、$S_t \subset S_Y$ かつ $S_u \subset S_Y$ で $S_Y$ が全順序集合なので、$t, u$ には与えられた順序関係があるが $s \in S_t \cap S_u$ なので $f_t(s) = f_u(s)$。従って $f_Y(s)$ の値は一意に定まるため well-defined。ここで $(S_Y, f_Y)$ は $Y$ の上界となる。なぜなら $\forall (S_y, f_y) \in Y$ について、$S_y \subset S_Y$ かつ $\forall s \in S_y$ について $f_y(s) = f_Y(s)$ となるため($\because$定義より)、$f_Y$ は $f_y$ の拡張となっているから、$(S_y, f_y) \le (S_Y, f_Y)$ となるためである。
以上より、任意の全順序部分集合 $Y \subset X$ に対して上界の存在が示せたため、Zornの補題より $X$ に極大元が存在する。
2. 背理法で示す。$(S_0,f_0)$ が $X$ の極大元で(a)でも(b)でもないと仮定する。つまり、$S_0 \neq A$ かつ $f_0(S_0) \neq B$。このとき、$a_0 \in A \setminus S_0$、$b_0 \in B \setminus f_0(S_0)$ を選ぶことができ、$S_1 = S_0 \cup \{a_0\}$、 $$ f_1(a) = \left\{
\begin{array}{}
f_0(a) \qquad (a \in S_0) \\
b_0 \qquad (a = a_0)
\end{array} \right.$$
と定義してやると、$(S_0, f_0) \le (S_1, f_1)$ となるため$(S_0, f_0)$ の極大性に反するから矛盾。

※$S_0 \neq S_1$ なので $(S_0,f_0) \neq (S_1,f_1)$を言っとくべき