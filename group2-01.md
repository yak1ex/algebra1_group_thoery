# 代数学1 群論入門

## 2章の演習問題

### 2.1 群の定義

#### 2.1.1 **(←担当)**

$G$ が群になると仮定すると単位元が存在する。
$1 \cdot 0 = 0 \neq 1$ なので $0$ は単位元ではない。
$1$ が単位元とすると、$0 \cdot 0 = 0 \cdot 1 = 0 \neq 1$ なので $0$ に対する逆元が存在しないため矛盾。したがって $G$ は群にならない。

- コメント
  - 1は単位元で正しい
  - 結合法則も成立する
  - 単位元が存在し結合法則も存在する→$G$はモノイド
  - $G=\{0\}, 0 \cdot 0 = 0$ なら群
  - $G=\{0,1\}$なので2元ある($0 \neq 1$)前提でよいはず

#### 2.1.2

与えられた演算により $\mathbb{R}$ が群になると仮定する。

$e$ を単位元とすると、$a \circ e = a + e + ae = a$ より $e(a+1)=0$。これが任意のaに対して成立するので$e=0$。つまり単位元は$0$である。

$a \circ a^{-1} = a + a^{-1} + a a^{-1} = e = 0$ より、$a^{-1}(1 + a) = -a$。$a=-1$のときにこの式を満たす$a^{-1}$は存在しない。すなわち$-1$ に対する逆元が存在しないので矛盾。よって与えられた演算により$\mathbb{R}$ は群にはならない。

※結合則は満たす
$(a \circ b) \circ c = (a + b + ab) \circ c = (a + b + ab) + c + (a + b + ab)c = a + b + c + ab + bc + ca + abc$
$a \circ (b \circ c) = a \circ (b + c + bc) = a + (b + c + bc) + a (b + c + bc) = a + b + c + ab + bc + ca + abc$

#### 2.1.3

$\sigma_1$ を単位元、$\sigma_2 = (2 3), \sigma_3 = (1 2), \sigma_4 = (1 2 3), \sigma_5 = (3 2 1), \sigma_6 = (1 3)$ とする。

※
$\sigma_1 = \left( \begin{array}{cccc}
1 & 2 & 3 \\
1 & 2 & 3
\end{array}\right)$,
$\sigma_2 = (2 3) = \left( \begin{array}{cccc}
1 & 2 & 3 \\
1 & 3 & 2
\end{array}\right)$,
$\sigma_3 = (1 2) = \left( \begin{array}{cccc}
1 & 2 & 3 \\
2 & 1 & 3
\end{array}\right)$,
$\sigma_4 = (1 2 3) = \left( \begin{array}{cccc}
1 & 2 & 3 \\
2 & 3 & 1
\end{array}\right)$,
$\sigma_5 = (3 2 1) = (1 3 2) =     ,\left( \begin{array}{cccc}
1 & 2 & 3 \\
3 & 1 & 2
\end{array}\right)$,
$\sigma_6 = (1 3) = \left( \begin{array}{cccc}
1 & 2 & 3 \\
3 & 2 & 1
\end{array}\right)$

$\sigma \tau = \sigma \circ \tau$ で $\tau$ が列、$\sigma$ が行。

| | $\sigma_1$ | $\sigma_2$ | $\sigma_3$ | $\sigma_4$ | $\sigma_5$ | $\sigma_6$ |
|-|-|-|-|-|-|-|
|$\sigma_1$|$\sigma_1$|$\sigma_2$|$\sigma_3$|$\sigma_4$|$\sigma_5$|$\sigma_6$|
|$\sigma_2$|$\sigma_2$|$\sigma_1$|$\sigma_5$|$\sigma_6$|$\sigma_3$|$\sigma_4$|
|$\sigma_3$|$\sigma_3$|$\sigma_4$|$\sigma_1$|$\sigma_2$|$\sigma_6$|$\sigma_5$|
|$\sigma_4$|$\sigma_4$|$\sigma_3$|$\sigma_6$|$\sigma_5$|$\sigma_1$|$\sigma_2$|
|$\sigma_5$|$\sigma_5$|$\sigma_6$|$\sigma_2$|$\sigma_1$|$\sigma_4$|$\sigma_3$|
|$\sigma_6$|$\sigma_6$|$\sigma_5$|$\sigma_4$|$\sigma_3$|$\sigma_2$|$\sigma_1$|

| |$e$|$(2 3)$|$(1 2)$|$(1 2 3)$|$(1 3 2)$|$(1 3)$|
|-|-|-|-|-|-|-|
|$e$|$e$|$(2 3)$|$(1 2)$|$(1 2 3)$|$(1 3 2)$|$(1 3)$|
|$(2 3)$|$(2 3)$|$e$|$(1 3 2)$|$(1 3)$|$(1 2)$|$(1 2 3)$|
|$(1 2)$|$(1 2)$|$(1 2 3)$|$e$|$(2 3)$|$(1 3)$|$(1 3 2)$|
|$(1 2 3)$|$(1 2 3)$|$(1 2)$|$(1 3)$|$(1 3 2)$|$e$|$(2 3)$|
|$(1 3 2)$|$(1 3 2)$|$(1 3)$|$(2 3)$|$e$|$(1 2 3)$|$(1 2)$|
|$(1 3)$|$(1 3)$|$(1 3 2)$|$(1 2 3)$|$(1 2)$|$(2 3)$|$e$|

#### 2.1.4

$((ab)c)d=(a(bc))d=a((bc)d)$

#### 2.1.5

$bac^{-1}d=abd$
$\Leftrightarrow bac^{-1}=ab$  ($\because d^{-1}$を右からかける)
$\Leftrightarrow ba=abc$  ($\because c$を右からかける)
$\Leftrightarrow a^{-1}ba=bc$  ($\because a^{-1}$を左からかける)
$\Leftrightarrow b^{-1}a^{-1}ba=c$  ($\because b^{-1}$を左からかける)

#### 2.1.6

$\sigma_1 = (1 4 3 2) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
4 & 1 & 2 & 3
\end{array} \right)$,
$\sigma_2 = (1 3)(2 4) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2 
\end{array} \right)$,
$\sigma_3 = (2 3 4) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 3 & 4 & 2
\end{array}\right)$,
$\sigma_4 = (1 3) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{array}\right)$

※右から計算

1. $\sigma_1^{-1} = (1 2 3 4) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
2 & 3 & 4 & 1
\end{array}\right)$
2. $\sigma_2^{-1} = \sigma_2 = (1 3)(2 4) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2
\end{array}\right)$
3. $\sigma_1 \sigma_3 = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
4 & 2 & 3 & 1
\end{array}\right)= (1 4)$
4. $\sigma_2^{-1} \sigma_4 = \sigma_2 \sigma_4 = (2 4) = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 4 & 3 & 2
\end{array}\right)$
5. $\sigma_3 \sigma_1 \sigma_3^{-1}= \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 3 & 4 & 2
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
4 & 1 & 2 & 3
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 4 & 2 & 3
\end{array}\right)= \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 3 & 4 & 2
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
4 & 3 & 1 & 2
\end{array}\right)= \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
2 & 4 & 1 & 3
\end{array}\right) = (1 2 4 3)$
1. $\sigma_2^{-1} \sigma_4 \sigma_2 = \sigma_2 \sigma_4 \sigma_2 = \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2
\end{array}\right)= \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2
\end{array}\right)
\left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
1 & 4 & 3 & 2
\end{array}\right)= \left( \begin{array}{cccc}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{array}\right)=(1 3)$
別解：$\sigma_2^{-1} \sigma_4 \sigma_2 = (1 3)(2 4)(1 3)(1 3)(2 4) = (1 3)$
