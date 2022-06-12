# 代数学1 群論入門

## 2章の演習問題

### 2.4 元の位数

#### 2.4.1

1. $$ |-48| = 1 \cdot 36 + 12 \\
12 = 0 \cdot 24 + 12 \\
24 = 2 \cdot 12 + 0$$ より $\gcd(36,-48)=12, \operatorname{lcm}(36,-48)=144$
1. $$ 35 = 24 \cdot 1 + 11 \\
24 = 2 \cdot 11 + 2 \\
11 = 2 \cdot 5 + 1 \\
5 = 5 \cdot 1 + 0$$ より $\gcd(35,24)=1$ のため $35$ と $24$ は互いに素

#### 2.4.2

1. $$ 395 = 1 \cdot 265 + 130 \\
265 = 2 \cdot 130 + 5 \\
130 = 26 \cdot 5 + 0$$ より $\gcd(395,265)=5$
2. $$d = 5 = 265 - 2 \cdot 130 \\
= 265 - 2 \cdot (395 - 1 \cdot 265) = -2 \cdot 395 + 3 \cdot 265$$ より $x = -2, y = 3$ は $395x+265y=d$ を満たす。

#### 2.4.3

以下乗法逆元を${}^{-1}$で表す

1. $\mathbb{Z}/7\mathbb{Z}$ で
$\overline{2}^{-1}=\overline{4}$
$\overline{3}^{-1}=\overline{5}$
$\overline{4}^{-1}=\overline{2}$
$\overline{5}^{-1}=\overline{3}$
$\overline{6}^{-1}=\overline{6}$
2. $$284 = 94 \cdot 3 + 2 \\
3 = 1 \cdot 2 + 1 \\
2 = 2 \cdot 1 + 0$$ より $\gcd(284,3)=1$。
よって、$$ 1 = \gcd(284,3) = 3 - 1 \cdot 2 \\
= 3 - 1 (284 - 94 \cdot 3) = -1 \cdot 284 + 95 \cdot 3$$
従って、$\overline{3}^{-1}=\overline{95}$

※p.38 系2.4.14から $3$ は $284$ と素になっていないと問題が成立しない
※$ax+by=1 \Rightarrow a,b$互いに素は対偶とって$a=a'\gcd(a,b),b=b'\gcd(a,b)$で$ax+by$が$\gcd(a,b)\ge2$ の倍数になることから言える

#### 2.4.4

p.38 系2.4.14 より $(\mathbb{Z}/p^n\mathbb{Z})^\times = \{ \overline{m} | 0<m<p^n,m,p^nは互いに素\}$
$p$ は素数なので $1\le m\le p^n-1$ の下で $m$ と $p^n$ が互いに素とは、$m$ が $p$ を約数にもたないことと同値。これはまた $m$ が $p$ の倍数ではないことと同値。$1\le m\le p^n-1$ で $p$ の倍数は $1 \cdot p,
2\cdot p,\cdots,(p^{n-1} - 1) \cdot p$ の $p^{n-1}-1$ 個。
従って、$|(\mathbb{Z}/p^n\mathbb{Z})^\times| = (p^n - 1) - (p^{n-1} - 1) = p^n - p^{n-1} = (p-1)p^{n-1}$

#### 2.4.5

$x^{35}$ の位数を $c$ とすると $(x^{35})^c = x^{35c} = 1$ を満たす最小の正の整数となる。$x$ の位数は 60 なのでp.39 命題2.4.18から $35c$ が $60$ の倍数となる最小の整数が $c$ となる。$$ 60 = 1 \cdot 35 + 25 \\
35 = 1 \cdot 25 + 10 \\
25 = 2 \cdot 10 + 5 \\
10 = 2 \cdot 5 + 0$$ より $\gcd(60,35)=5,\operatorname{lcm}(60,35)=420$ なので $c = \frac{\operatorname{lcm}(60,35)}{35}=\frac{420}{35}=12$ となる。

#### 2.4.6

求める $x^n$ の位数を $c$ とすると、$(x^n)^c = x ^{nc} = 1$ を満たす最小の正の整数となる。$x$ の位数は $d (< \infty)$ なのでp.39 命題2.4.18から、これは $c$ が「$nc$ が $d$ の倍数となる最小の正の整数である」ことと同値である。$k \in \mathbb{Z}$ として$$ nc = dk \\
\Leftrightarrow \gcd(n, d) \frac{n}{\gcd(n, d)} c = \gcd(n,d) \frac{d}{\gcd(n,d)} k \\
\Leftrightarrow \frac{n}{\gcd(n,d)} c = \frac{d}{\gcd(n,d)} k $$ $\frac{n}{\gcd(n,d)}$ と $\frac{d}{\gcd(n,d)}$ は互いに素な整数で $\frac{d}{\gcd(n,d)} \gt 0$ なので $c = \frac{d}{\gcd(n,d)}$

#### 2.4.7

$x \in \mathbb{Z}/n\mathbb{Z}$ で $k$ を $x$ の位数とする($\mathbb{Z}/n\mathbb{Z}$ は有限群なので $k$ は有限である(p.35 命題2.4.5))。p.40 命題2.4.19より$|\langle x\rangle| = k$。$\langle x\rangle \subset \mathbb{Z}/n\mathbb{Z}$ なので$$
k=|\mathbb{Z}/n\mathbb{Z}|=n \\
\Leftrightarrow \langle x \rangle = \mathbb{Z}/n\mathbb{Z} \quad(※) \\
\Leftrightarrow \mathbb{Z}/n\mathbb{Z} は x で生成される$$(以下、加法での表現であることに注意)
ここで、$\overline{m} = m \overline{1}$ でかつ $\overline{1}$ の位数は $n$ なので演習問題2.4.6から $\overline{m}$ の位数は $\frac{n}{\gcd(m,n)}$ である($x$ が $\overline{1}$、$x$ の位数 $d$ が $n$、位数を求めたい対象 $x^n$ が $\overline{m} = m \overline{1}$ にあたる)。つまり $$
\mathbb{Z}/n\mathbb{Z} が \overline{m} で生成される \\
\Leftrightarrow \overline{m} の位数が n である \\
\Leftrightarrow \frac{n}{\gcd(m,n)} = n \\
\Leftrightarrow \gcd(m,n) = 1 \\
\Leftrightarrow m と n が互いに素$$

(※)$(\Rightarrow) k=|\langle x\rangle|=n$ かつ $y \in \mathbb{Z}/n\mathbb{Z}$ のときに、$y \notin \langle x \rangle$ と仮定する。$\langle x \rangle \subset \mathbb{Z}/n\mathbb{Z}$ なので $\langle x \rangle$ の $n$ 個の元に加えてそれらと異なる元 $y$ が $\mathbb{Z}/n\mathbb{Z}$ に含まれることになる。これは $\mathbb{Z}/n\mathbb{Z}$ の位数が $n$ であることに矛盾する。よって、$y \in \langle x \rangle$ となるため、$\langle x \rangle \supset \mathbb{Z}/n\mathbb{Z}$。従って、$\langle x \rangle = \mathbb{Z}/n\mathbb{Z}$。$(\Leftarrow)$ は明らか。
※$(\Rightarrow)$ は p.7 命題1.1.6 で OK

※系2.4.14との関連：生成元であるということは何回か足す(何倍かする)ことで $\overline{1}$ を作れる、つまり乗法逆元がある。逆に乗法逆元があるなら何倍かする(何回か足す)ことで $\overline{1}$ を作れる。あとは繰り返せばすべての元を生成できるので生成元になる。

1. $\overline{1},\overline{2},\overline{3},\overline{4}$
2. $\overline{1},\overline{2},\overline{3},\overline{4},\overline{5},\overline{6}$
3. $\overline{1},\overline{3},\overline{5},\overline{7}$
4. $\overline{1},\overline{2},\overline{4},\overline{5},\overline{7},\overline{8}$
5. $\mathbb{Z}/15\mathbb{Z}$ 担当分は一応全部計算もした
$\overline{1}: \overline{2},\overline{3},\overline{4},\overline{5},\overline{6},\overline{7},\overline{8},\overline{9},\overline{10},\overline{11},\overline{12},\overline{13},\overline{14},\overline{0}$
$\overline{2}: \overline{4},\overline{6},\overline{8},\overline{10},\overline{12},\overline{14},\overline{1},\overline{3},\overline{5},\overline{7},\overline{9},\overline{11},\overline{13},\overline{0}$
$\overline{4}: \overline{8},\overline{12},\overline{1},\overline{5},\overline{9},\overline{13},\overline{2},\overline{6},\overline{10},\overline{14},\overline{3},\overline{7},\overline{11},\overline{0}$
$\overline{7}: \overline{14}, \overline{6}, \overline{13}, \overline{5}, \overline{12}, \overline{4}, \overline{11}, \overline{3}, \overline{10},\overline{2},\overline{9},\overline{1}, \overline{8}, \overline{0}$
$\overline{8}: \overline{1}, \overline{9}, \overline{2}, \overline{10}, \overline{3}, \overline{11}, \overline{4}, \overline{12}, \overline{5},\overline{13},\overline{6},\overline{14}, \overline{7}, \overline{0} $
$\overline{11}: \overline{7}, \overline{3}, \overline{14}, \overline{10}, \overline{6}, \overline{2}, \overline{13}, \overline{9}, \overline{5},\overline{1},\overline{12},\overline{8}, \overline{4}, \overline{0}$
$\overline{13}: \overline{11}, \overline{9}, \overline{7}, \overline{5}, \overline{3}, \overline{1}, \overline{14}, \overline{12}, \overline{10},\overline{8},\overline{6},\overline{4}, \overline{2}, \overline{0}$
$\overline{14}: \overline{13}, \overline{12}, \overline{11}, \overline{10}, \overline{9}, \overline{8}, \overline{7}, \overline{6}, \overline{5},\overline{4},\overline{3},\overline{2}, \overline{1}, \overline{0}$

駄目なやつ
$\overline{3}→\overline{6}→\overline{9}→\overline{12}→\overline{0}→$
$\overline{5}→\overline{10}→\overline{0}→$
$\overline{6}→\overline{12}→\overline{3}→\overline{9}→\overline{0}→$
$\overline{9}→\overline{3}→\overline{12}→\overline{6}→\overline{0}→$
$\overline{10}→\overline{5}→\overline{0}→$
$\overline{12}→\overline{9}→\overline{6}→\overline{3}→\overline{0}→$


#### 2.4.8 ←担当

任意の $g \in G$ について $g^2 = 1$ であるとき $g^{-1}$ を両辺にかけると $g = g^{-1}$。すなわち $G$ の任意の元について、逆元は自分自身となる。
また任意の $g, h \in G$ について、$g h \in G$ なので、$(gh)^2 = (gh)(gh) = g h g h = g^{-1} h g h^{-1} = 1$。一番右の等式について左から $g$、右から $h$ をかけると $h g = g h$。すなわち $G$ の任意の2元の積について可換となるため、$G$ は可換群である。

#### 2.4.9

1. $g^2=\left(\begin{array}{cc} 0 & -1 \\ 1 & 0 \end{array}\right)
\left( \begin{array}{cc} 0 & -1 \\ 1 & 0 \end{array}\right)
=
\left( \begin{array}{cc} -1 & 0 \\ 0 & -1 \end{array}\right) = -I_2$
$g^3 = -I_2 g = -g$
$g^4 = -g g = - g^2 = I_2$ より $g$ の位数は $4$。
$h^2=\left(\begin{array}{cc} 1 & 1 \\ -1 & 0 \end{array}\right)
\left( \begin{array}{cc} 1 & 1 \\ -1 & 0 \end{array}\right)
=
\left( \begin{array}{cc} 0 & 1 \\ -1 & -1 \end{array}\right)$
$h^3=\left(\begin{array}{cc} 0 & 1 \\ -1 & -1 \end{array}\right)
\left( \begin{array}{cc} 1 & 1 \\ -1 & 0 \end{array}\right)
=
\left( \begin{array}{cc} -1 & 0 \\ 0 & -1 \end{array}\right) = -I_2$
$h^4=-I_2 h=-h$
$h^5=-h h = -h^2 = \left( \begin{array}{cc} 0 & -1 \\ 1 & 1 \end{array}\right)$
$h^6=-h^2 h = -h^3 = I_2$ より $h$ の位数は $6$。
※n乗して1になるものをなんか見つけてp.39 命題2.4.18使うのもあり
2. $gh = \left(\begin{array}{cc} 0 & -1 \\ 1 & 0 \end{array}\right)
\left( \begin{array}{cc} 1 & 1 \\ -1 & 0 \end{array}\right)
=
\left( \begin{array}{cc} 1 & 0 \\ 1 & 1 \end{array}\right)$
$(gh)^n = \left(\begin{array}{cc} 1 & 0 \\ n & 1 \end{array}\right)$ であることを $n>0$ について帰納法で証明する。
$n=1$ については計算結果より正しい。
$n=k$ のとき正しい、すなわち $(gh)^k=\left( \begin{array}{cc} 1 & 0 \\ k & 1 \end{array}\right)$ と仮定すると、
$(gh)^{k+1}=\left( \begin{array}{cc} 1 & 0 \\ k & 1 \end{array}\right)
\left( \begin{array}{cc} 1 & 0 \\ 1 & 1 \end{array}\right)
=
\left( \begin{array}{cc} 1 & 0 \\ k+1 & 1 \end{array}\right)$ となるため $n=k+1$ について正しい。
以上により、帰納法から $n>0$ で $(gh)^n = \left(\begin{array}{cc} 1 & 0 \\ n & 1 \end{array}\right)$。よって、正の整数 $n$ で $(gh)^n=1$ となる $n$ は存在しないため、$gh$ の位数は無限である。

※$\left\{ I_2 + k \left( \begin{array}{cc} 0 & 0 \\ 1 & 0 \end{array}\right) \right\}^n = \sum_{i=0}^n {}_n C_r (I_2)^i k^{n-i} \left( \begin{array}{cc} 0 & 0 \\ 1 & 0 \end{array}\right)^{n-i}$ これで $n-i \ge 2$ の項は消えるので帰納法使わなくとも証明可能6

#### 2.4.10

1. $a$ の位数を $m(<\infty)$、$b$ の位数を $n(<\infty)$ とすると、可換群なので $(ab)^{mn}=(a^m)^n (b^n)^m = 1$ となるため $ab$ の位数は(少なくとも)有限である($\because x$ の位数が無限である$\Leftrightarrow x^n=1$ となる正の整数 $n$ が存在しない、の対偶)。
2. $H$ を $G$ の有限位数の元の集合とすると以下により $H$ は部分群となる。
   1. $1_G$ は位数 $1$ のため $1_G \in H$
   2. 任意の $x \in H$ について、位数を $d(<\infty)$ とすると $x^d = 1$。$(x^{-1})^d$ を両辺にかけると、$1 = (x^{-1})^d$ となるため、$x^{-1}$ の位数は(少なくとも)有限である。つまり $x^{-1} \in H$ のため $H$ は逆元について閉じている。
   3. 前小問より、任意の $x,y \in H$ について $xy \in H (\because xy $ の位数が有限 $)$ となるため $H$ は積について閉じている


### 2.5