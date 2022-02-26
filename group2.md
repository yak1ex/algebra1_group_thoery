# 代数学1 群論入門

## 2章の演習問題

### 2.1.1 **(←担当)**

$G$ が群になると仮定すると単位元が存在する。
$1 \cdot 0 = 0 \neq 1$ なので $0$ は単位元ではない。
$1$ が単位元とすると、$0 \cdot 0 = 0 \cdot 1 = 0 \neq 1$ なので $0$ に対する逆元が存在しないため矛盾。したがって $G$ は群にならない。

- コメント
  - 1は単位元で正しい
  - 結合法則も成立する
  - 単位元が存在し結合法則も存在する→$G$はモノイド
  - $G=\{0\}, 0 \cdot 0 = 0$ なら群
  - $G=\{0,1\}$なので2元ある($0 \neq 1$)前提でよいはず

### 2.1.2

与えられた演算により $\mathbb{R}$ が群になると仮定する。

$e$ を単位元とすると、$a \circ e = a + e + ae = a$ より $e(a+1)=0$。これが任意のaに対して成立するので$e=0$。つまり単位元は$0$である。

$a \circ a^{-1} = a + a^{-1} + a a^{-1} = e = 0$ より、$a^{-1}(1 + a) = -a$。$a=-1$のときにこの式を満たす$a^{-1}$は存在しない。すなわち$-1$ に対する逆元が存在しないので矛盾。よって与えられた演算により$\mathbb{R}$ は群にはならない。

※結合則は満たす
$(a \circ b) \circ c = (a + b + ab) \circ c = (a + b + ab) + c + (a + b + ab)c = a + b + c + ab + bc + ca + abc$
$a \circ (b \circ c) = a \circ (b + c + bc) = a + (b + c + bc) + a (b + c + bc) = a + b + c + ab + bc + ca + abc$

### 2.1.3

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

### 2.1.4

$((ab)c)d=(a(bc))d=a((bc)d)$

## 2.1.5

$bac^{-1}d=abd$
$\Leftrightarrow bac^{-1}=ab$  ($\because d^{-1}$を右からかける)
$\Leftrightarrow ba=abc$  ($\because c$を右からかける)
$\Leftrightarrow a^{-1}ba=bc$  ($\because a^{-1}$を左からかける)
$\Leftrightarrow b^{-1}a^{-1}ba=c$  ($\because b^{-1}$を左からかける)

### 2.1.6

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

### 2.2.1

$\mathbb{Z}/7\mathbb{Z}$

1. $\overline{4}+\overline{5}=\overline{2}$
2. $\overline{2}-\overline{5}=\overline{4}$
※1.の両辺から $\overline{5}$ 引いてもよい
※そもそも引き算(マイナス)がなにものかという話はあり、逆元の加算とするともうちょい確認が必要か($-\overline{5}=\overline{2}$の加算とか)
3. $\overline{4} \times \overline{5}=\overline{6}$
4. $\overline{5}^3=\overline{4} \times \overline{5}=\overline{6}$
5. $\overline{4}^{32}$
$\overline{4}^3=\overline{4} \times \overline{4} \times \overline{4} = \overline{2} \times \overline{4} = \overline{1}$ のため
$\overline{4}^{32}=\overline{4}^{3 \times 10 + 2}=\left(\overline{4}^3\right)^{10} \times \overline{4}^2=\overline{1} \times \overline{2}=\overline{2}$
(当初は $\overline{4}^{2},\overline{4}^{4},\overline{4}^{8},...$ と自乗で計算していこうかと思ったが $\overline{4}^{4}=\overline{4}$ になったので↑にしたが、自乗を続けると$\overline{4},\overline{2},\overline{4},\overline{2},...$を繰り返すとしても簡単だった)(※指数法則が成立することはp.21に触れてある)

### 2.2.2

$\mathbb{Z}/39\mathbb{Z}$

1. $\overline{34} \times \overline{21} \times \overline{33}=\overline{2} \times \overline{17} \times \overline{3} \times \overline{7} \times \overline{3} \times \overline{11}=\overline{2} \times \overline{2} \times \overline{3} \times \overline{3} \times \overline{11} = \overline{5} \times \overline{9}=\overline{6} \qquad (\because 17 \times 7 = 119 = 3 \times 39 + 2, 2 \times 2 \times 11 = 44 = 39 + 5)$
別解：$34 \cdot 21 \cdot 11 \equiv 8 \cdot 8 \cdot 11 \equiv 64 \cdot 11 \equiv 12 \cdot 11 \equiv 132 \equiv 2 \pmod{13}$ なので
$34 \cdot 21 \cdot 33 \equiv 2 \cdot 3 \equiv 6 \pmod{39}$
2. $\overline{25} \times \overline{18} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{3} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{39}=\overline{0}$
→$\overline{39}$ という表記は存在しないので↑は駄目
$\overline{25} \times \overline{18} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{3} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{0}=\overline{0}$
3. $\overline{16}^8$
$\overline{16}^2=\overline{22}\qquad(\because 16 \times 16 = 256 = 6 \times 39 + 22$)
$\overline{16}^4=\left(\overline{16}^2\right)^2=\overline{22}^2=\overline{16}\qquad(\because 22\times22=484=12\times39+16)$
$\overline{16}^3=\overline{16}^2\times\overline{16}=\overline{22}\times\overline{16}=\overline{1}\qquad(\because 22\times16=352=9\times39+1)$
$\overline{16}^8=\overline{16}^{3\times2+2}=\overline{16}^2=\overline{22}$
4. $\overline{16}^{34}=\overline{16}^{3\times11+1}=\overline{16}$

### 2.3.1

($\Rightarrow$)
$H$ が部分群であることを言うためには、1. 単位元$1_{G}$ が $H$ に含まれること、2. 逆元および 3. 積が $H$ に閉じていることを言えばよい。
1. $H$ は空ではないので適当な $x \in H$ を採ることができる。このとき、$x^{-1} x = 1_{G} \in H$ となるため単位元 $1_{G}$ は $H$ に含まれる。
2. 1.より単位元 $1_{G}$ が $H$ に含まれるため、任意の $x \in H$ について、$x^{-1} 1_{G} = x^{-1} \in H$。すなわち、$H$ は逆元について閉じている。
3. $x,y \in H$ とする。このとき、2.より $x^{-1} \in H$。仮定より、$(x^{-1})^{-1} y = x y \in H$。すなわち $H$ は積について閉じている。
i),ii),iii)より$H$は部分群である。

($\Leftarrow$)
$H$ が部分群であるとすると、任意の $x \in H$ について $x^{-1} \in H$。また任意の $x, y \in H$ について $x y \in H$。したがって任意の $x, y \in H$ について $x^{-1} y \in H$。

### 2.3.2

$J_n = \left( \begin{array}{cc}
0 & I_n \\
-I_n & 0
\end{array} \right)$
$G=GL_{2n}(\mathbb{R}), Sp(2n)=H=\{g \in G | {}^t g J_n g = J_n \}$とする。

1. $I_{2n} \in G$ で、${}^t I_{2n} J_n I_{2n} = J_n$ であるため $I_{2n} \in G$。つまり単位元 $1_{G} = I_{2n} \in H$。
2. $g \in H$ とすると $^t g J_n g = J_n$、左から $(^t g)^{-1} = {}^t (g^{-1})$、右から $g^{-1}$をかけると、$J_n = {}^t(g^{-1}) J_n g^{-1}$ となるため $g^{-1} \in H$。すなわち $H$ は逆元について閉じている。
3. 任意の $x,y \in H$ について、${}^t (xy) J_n (xy) = {}^t y {}^t x J_n x y = {}^t y ({}^t x J_n x) y = {}^t y J_n y = J_n$ となるため $xy \in H$。すなわち $H$ は積について閉じている。

1.2.3.より$H(=Sp(2n))$は部分群。