# 代数学1 群論入門

## 2章の演習問題

### 2.3 部分群と生成元

#### 2.3.1

($\Rightarrow$)
$H$ が部分群であることを言うためには、1. 単位元$1_{G}$ が $H$ に含まれること、2. 逆元および 3. 積が $H$ に閉じていることを言えばよい。

1. $H$ は空ではないので適当な $x \in H$ を採ることができる。このとき仮定より、$x^{-1} x = 1_{G} \in H$ となるため単位元 $1_{G}$ は $H$ に含まれる。
2. 1.より単位元 $1_{G}$ が $H$ に含まれるため、任意の $x \in H$ について仮定より、$x^{-1} 1_{G} = x^{-1} \in H$。すなわち、$H$ は逆元について閉じている。
3. $x,y \in H$ とする。このとき、2.より $x^{-1} \in H$。仮定より、$(x^{-1})^{-1} y = x y \in H$。すなわち $H$ は積について閉じている。

1.2.3.より $H$ は部分群である。

($\Leftarrow$)
$H$ が部分群であるとすると、任意の $x \in H$ について $x^{-1} \in H$。また任意の $x, y \in H$ について $x y \in H$。したがって任意の $x, y \in H$ について $x^{-1} y \in H$。

#### 2.3.2

$J_n = \left( \begin{array}{cc}
0 & I_n \\
-I_n & 0
\end{array} \right)$
$G=GL_{2n}(\mathbb{R}), Sp(2n)=H=\{g \in G | {}^t g J_n g = J_n \}$とする。

1. $I_{2n} \in G$ で、${}^t I_{2n} J_n I_{2n} = J_n$ であるため $I_{2n} \in G$。つまり単位元 $1_{G} = I_{2n} \in H$。
2. 任意の $g \in H$ に対して $^t g J_n g = J_n$、左から $(^t g)^{-1} = {}^t (g^{-1})$、右から $g^{-1}$をかけると、$J_n = {}^t(g^{-1}) J_n g^{-1}$ となるため $g^{-1} \in H$。すなわち $H$ は逆元について閉じている。
3. 任意の $x,y \in H$ について、${}^t (xy) J_n (xy) = {}^t y {}^t x J_n x y = {}^t y ({}^t x J_n x) y = {}^t y J_n y = J_n$ となるため $xy \in H$。すなわち $H$ は積について閉じている。

1.2.3.より $H(=Sp(2n))$ は部分群である。

#### 2.3.3

$G=GL_{n}(\mathbb{R}), U(n)=H=\{g\in G | {}^t\overline{g}g = I_n\}$ とする。

1. $I_n \in G$ で、${}^t \overline{I_n} I_n = I_n$ であるため $I_n \in G$。つまり単位元 $1_{G} = I_n \in H$。
2. 転置は要素の位置にのみ、複素共役は要素の値にのみ作用するため、任意の $x \in G$ について、$x^{-1} = {}^t\overline{x} = \overline{{}^t x}$ である。このとき、任意の $g \in H$ について$${}^t\overline{g^{-1}} g^{-1} = {}^t\overline{\overline{{}^t g}} g^{-1} = {}^t{}^tg g^{-1} = g g^{-1} = I_n$$ であるため、$g^{-1} \in H$。つまり $H$ は逆元について閉じている。
3. 任意の $x,y \in H$ について、${}^t (\overline{xy}) (xy) = {}^t \overline{y} {}^t \overline{x} x y = {}^t \overline{y} ({}^t \overline{x} x) y = {}^t \overline{y} y = I_n$ となるため $xy \in H$。すなわち $H$ は積について閉じている。

1.2.3より $H(=U(n))$ は部分群である。

#### 2.3.4

(1)

1. 明らかに $I_n \in B$ なので $B$ は $G$ の単位元を含む。

2. $x \in B$ の $i$ 行 $j$ 列成分を $x_{i,j}$ で表すことにすると、$x$ が下三角行列であるとは $x_{i,j} = 0 \quad (1 \le i \lt j \le n)$ であることと同義。$x, y \in B$ について、$$(xy)_{i,j} = \sum^n_{k=1} x_{i,k} y_{k,j} = \sum_{k \le i} x_{i,k} y_{k,j} + \sum_{i \lt k} x_{i,k} y_{k,j}$$
$i \lt j$ の時には $k \le i \lt j$ で $y_{k,j} = 0$ かつ、$i \lt k$ で $x_{i,k} = 0$ なので
$$\sum_{k \le i} x_{i,k} y_{k,j} + \sum_{i \lt k} x_{i,k} y_{k,j} = \sum_{k \le i} x_{i,k} 0 + \sum_{i \lt k} 0 y_{k,j} = 0$$
すなわち、$xy$ も下三角行列となるため、$B$ は積について閉じている。

3. $x \in B$ で $y = x^{-1}$ とする。数学的帰納法で $y$ が下三角行列であること($y_{i,j}=0(i\lt j))$を証明する。
a. $i = 1$ のとき
$$(xy)_{i,j} = \sum^n_{k=1} x_{i,k} y_{k,j} = \sum_{k \le i} x_{i,k} y_{k,j} + \sum_{i \lt k} x_{i,k} y_{k,j}$$
なので、$\delta_{i,j}$ をクロネッカーのデルタとして
$$(xy)_{1,j} = \sum^n_{k=1} x_{1,k} y_{k,j} = x_{1,1} y_{1,j} = \delta_{1,j}$$
$x_{1,1}y_{1,1}=1$ より $x_{1,1} \neq 0$。よって $1 \lt j$ で $y_{1,j} = 0$
b. $i \le m$ で成立する時 $i = m + 1$ でも成立することを証明する。$i \le m$ で成立するから $y_{i,j} = 0(i \lt j)(i \le m)$ である。$m+1 \le j$ として $m + 1 \lt k$ のときは $x_{m+1,k} = 0$ であり、また $k \le m$ のときは $k \lt m + 1 \le j$ なので $y_{k,j} = 0$ であることに注意すると
$$(xy)_{m+1,j} = \sum^n_{k=1} x_{m+1,k} y_{k,j} = x_{m+1,m+1} y_{m+1,j} = \delta_{m+1,j}$$
$x_{m+1,m+1}y_{m+1,m+1}=1$より$x_{m+1,m+1} \neq 0$。よって $m+1 \lt j$で$y_{m+1,j}=0$である。
a.b.より$y$が下三角行列であることが証明された。すなわち $B$ は逆元について閉じている。
※【別解】掃き出し法で単位行列に持っていく操作(第 $i$ 行を $\lambda$ 倍、第 $i$ 行に第 $j$ 行の $\lambda$ 倍を加える($i \gt j$))が下三角行列であることを言うことでも証明できる。多分気持ちは近い。
※【さらに別解】余因子行列で逆行列が表せる($A^{-1}=\frac{1}{\det(A)}\widetilde{A}$)こと、下三角行列で右上部分の余因子行列を考えると転置した位置で行、列を抜くので対角成分に $0$ が現れることを使う

1.2.3.より $B$ は $G$ の部分群である。

(2)

$x,y \in G$ で $x_{1,n} = 1$、$y_{i,i} = i\quad(1 \le i \le n)$、他の全ての要素は $0$ とすると $x,y \in B$。この時、$xy_{1,n} = 1, yx_{1,n} = n$ なので $xy \neq yx$。つまり可換ではない。
※$n=1$ の時には可換

#### 2.3.5

1. $1_{\mathbb{R}^\times} = 1 \in \mathbb{R}_\gt$ なので $\mathbb{R}_\gt$ は $\mathbb{R}^\times$ の単位元を含む。
2. 任意の $x \in \mathbb{R}_\gt$ について、$x \gt 0$ なので $\frac{1}{x} \gt 0$ かつ $x \frac{1}{x} = \frac{1}{x} x = 1$。つまり $x$ の逆元 $\frac{1}{x} \in \mathbb{R}_\gt$　なので $\mathbb{R}_{\gt}$ は逆元について閉じている。
3. $x,y \in \mathbb{R}_{\gt}$ について $xy \gt 0$ なので $xy \in \mathbb{R}_\gt$。つまり $\mathbb{R}_\gt$ は積について閉じている。

1.2.3.より $\mathbb{R}_\gt$ は $\mathbb{R}^\times$ の部分群である。

#### 2.3.6

$\mathbb{R}$ を加法により群とみなす場合の単位元は $0$ であるが $0 \notin \mathbb{R}_\gt$ のため $\mathbb{R}_\gt$ は部分群にならない。

#### 2.3.7

$z^n=1$ とすると、
$|z^n|=1 \Leftrightarrow |z|^n=1 \Leftrightarrow |z|=1$、また
$\arg z^n = 0 \Leftrightarrow n \arg z = 2 \pi m \Leftrightarrow \arg z = 2 \pi \frac{m}{n} (m = 0, 1, \cdots, n-1)$
よって、任意の $z \in H$ について $z = \cos 2 \pi \frac{m}{n} + i \sin 2 \pi \frac{m}{n} (m = 0, 1, \cdots, n-1)$。
ここで、
1. $1 \in H (m = 0 のとき)$ のため単位元が $H$ に含まれる。
2. $(\cos 2 \pi \frac{m}{n} + i \sin 2 \pi \frac{m}{n})(\cos 2 \pi \frac{n-m}{n} + i \sin 2 \pi \frac{n-m}{n})=\cos 2 \pi=1 (m = 0, 1, \cdots, n-1)$ のため、$H$ は逆元について閉じている。
3. $(\cos 2 \pi \frac{m}{n} + i \sin 2 \pi \frac{m}{n})(\cos 2 \pi \frac{l}{n} + i \sin 2 \pi \frac{l}{n}) = \cos 2 \pi \frac{m+l}{n} + i \sin 2 \pi \frac{m+l}{n}$で、三角関数の周期が $2 \pi$ なので $H$ は積について閉じている。

1.2.3.より $H$ は部分群となる。
さらに、$H$ の元は $n$ 個であり、$\cos \frac{2 \pi}{n} + i \sin \frac{2 \pi}{n}$ を掛け合わせることで生成できるため、$H$ は位数 $n$ の巡回部分群である。

※$z^n=1$ だけ使って先に部分群であることを示すことも可能
※極座標表示したほうが表記は楽そう

#### 2.3.8

1. $\mathfrak{S}_3 = \{ 1_{\mathfrak{S}_3}, (1\;2), (2\;3), (3\;1), (1\;2\;3), (1\;3\;2) \}$ で、
$\langle 1_{\mathfrak{S}_3} \rangle = \{ 1_{\mathfrak{S}_3} \},$
$\langle (1\;2) \rangle = \{ 1_{\mathfrak{S}_3}, (1\;2) \},$
$\langle (2\;3) \rangle = \{ 1_{\mathfrak{S}_3}, (2\;3) \},$
$\langle (3\;1) \rangle = \{ 1_{\mathfrak{S}_3}, (3\;1) \},$
$\langle (1\;2\;3) \rangle = \{ 1_{\mathfrak{S}_3}, (1\;2\;3), (1\;3\;2) \},$
$\langle (1\;3\;2) \rangle = \{ 1_{\mathfrak{S}_3}, (1\;2\;3), (1\;3\;2) \}$
となり、いずれの元によっても $\mathfrak{S}_3$ が生成されないため巡回群ではない。
※【別解】巡回群は必ず可換、$\mathfrak{S}_3$ は可換ではないので巡回群でない
2. $\mathbb{Q}$ が加法に関して巡回群であると仮定する。このとき、巡回群の性質から、任意の $x,y \in \mathbb{Q}$ について、ある生成元 $g \in \mathbb{Q}$　と $m,n \in \mathbb{Z}$ によって $x = mg, y = ng$ と表せる。このとき、$m$ と互いに素で1より大きな整数 $p \in \mathbb{Z}(p \gt 1, \gcd(m,p)=1)$ をとり、$(n+\frac{1}{p})x-my \in \mathbb{Q}$ を考えると、$$(n+\frac{1}{p})x-my=(n+\frac{1}{p})mg-mng=\frac{m}{p}g$$
巡回群の性質よりこれが生成元 $g$ の整数倍と表せるはずだが、これは $\gcd(m,p)=1$ に矛盾する。以上により、$\mathbb{Q}$ は加法に関して巡回群ではない。
【別解】
$\mathbb{Q}$ が加法に関して巡回群であると仮定する。このとき、巡回群の性質から、任意の $x \in \mathbb{Q}$ について、ある生成元 $g \in \mathbb{Q}$ と $m \in \mathbb{Z}$ によって $x = mg$ と表せる。このとき、$\frac{g}{2} \in \mathbb{Q}$ も巡回群の性質より生成元 $g$ の整数倍と表せるはずだが、これは矛盾である。以上により、$\mathbb{Q}$ は加法に関して巡回群ではない。
※$g \neq 0$ は言うべき、$\frac{g}{2}=mg$ から $\frac{1}{2}=m$ で矛盾
3. $\mathbb{R}$ が加法に関して巡回群であると仮定する。このとき、巡回群の性質から、任意の $x,y \in \mathbb{R}$ について、ある生成元 $g \in \mathbb{R}$　と $m,n \in \mathbb{Z}$ によって $x = mg, y = ng$ と表せる。このとき、$m$ と互いに素で1より大きな整数 $p \in \mathbb{Z}(p \gt 1, \gcd(m,p)=1)$ をとり、$(n+\frac{1}{p})x-my \in \mathbb{R}$ を考えると、$$(n+\frac{1}{p})x-my=(n+\frac{1}{p})mg-mng=\frac{m}{p}g$$
巡回群の性質よりこれが生成元 $g$ の整数倍と表せるはずだが、これは $\gcd(m,p)=1$ に矛盾する。以上により、$\mathbb{R}$ は加法に関して巡回群ではない。
【別解】
$\mathbb{R}$ が加法に関して巡回群であると仮定する。このとき、巡回群の性質から、任意の $x \in \mathbb{R}$ について、ある生成元 $g \in \mathbb{R}$ と $m \in \mathbb{Z}$ によって $x = mg$ と表せる。このとき、$\frac{g}{2} \in \mathbb{R}$ も巡回群の性質より生成元 $g$ の整数倍と表せるはずだが、これは矛盾である。以上により、$\mathbb{R}$ は加法に関して巡回群ではない。
※$g \neq 0$ は言うべき、$\frac{g}{2}=mg$ から $\frac{1}{2}=m$ で矛盾
4. ※【別解】$|g|\neq 1$ は↑と同様に言う、$-g = g^n \Rightarrow g^{n-1} = -g$、有理数として考えると $r = -1$ になって矛盾
【別解】$\mathbb{Q}^\times$ が巡回群として  $-1\in\mathbb{Q}^\times$ なので $-1 = g^n$ となる整数 $n$ が存在する。このとき $1 = (-1)^2 = g^{2n}$ となるので $g$ の位数は有限。
$\mathbb{Q}^\times$ が乗法に関して巡回群であると仮定する。このとき、生成元が $g \in \mathbb{Q}^\times$ だとすると、1) $|g| \lt 1$、 2) $|g| = 1$、 3) $|g| \gt 1$ のいずれかである。以下、$n \in \mathbb{Z}$ とする。以下のように1.2.3.いずれの場合でも、$g^n$ で生成できない元があるため矛盾である。すなわち、$\mathbb{Q}^\times$ は乗法に関して巡回群ではない。
    1. $|g| \lt 1$ のとき、$n \le 0$ で $|g^n|=|g|^n \ge 1$、$n \ge 1$ で $|g^n|=|g|^n \le |g|$ のため、$|g| \lt |x| \lt 1$ となる $x \in \mathbb{Q}^\times$ を $g^n$ の形で生成できない。
    2. $|g| = 1$ のときには、$|g^n|=|g|^n=1$ なので、$|x| \neq 1$ となる $x \in \mathbb{Q}^\times$ を $g^n$ の形で生成できない。
    3. $|g| \gt 1$ のとき、$n \le 0$ で $|g^n|=|g|^n \le 1$、$n \ge 1$ で $|g^n|=|g|^n \ge |g|$ のため、$1 \lt |x| \lt |g|$ となる $x \in \mathbb{Q}^\times$ を $g^n$ の形で生成できない。
5. $\mathbb{Z} \times \mathbb{Z}$ が巡回群であると仮定する。$g=(g_1,g_2) \in \mathbb{Z} \times \mathbb{Z}(g_1,g_2 \in \mathbb{Z})$ が生成元であるとすると $g_1 \neq 0$ かつ $g_2 \neq 0$。なぜなら、$g_1 = 0$ の場合は、$\langle g \rangle = \{0\} \times \langle g_2 \rangle$ であり、$g_2 = 0$ の場合は、$\langle g \rangle = \langle g_1 \rangle \times \{0\}$ であるため、いずれも $\mathbb{Z}\times\mathbb{Z}$ を生成しない。ここで、$(g_1, -g_2) \in \mathbb{Z} \times \mathbb{Z}$ を考えるとこれも巡回群の性質より、$n \in \mathbb{Z}$ として $ng = (ng_1, ng_2)$ の形で表せなければならない。すなわち$$\left\{ \begin{array}{rcc}
g_1 & = & n g_1 \\
-g_2 & = & n g_2
\end{array}\right. $$ だが、$g_1 \neq 0$ かつ $g_2 \neq 0$ の時に、これらを満たす $n \in \mathbb{Z}$ は存在しないため矛盾である。すなわち、$\mathbb{Z} \times \mathbb{Z}$ は巡回群ではない。

#### 2.3.9

1. $S = \{ \sigma_m | m = 1,2,\cdots,n-1 \}$ とする。まず、任意の互換 $(i\;j)(1\le i\lt j\le n)$ が $\langle S \rangle$ に含まれる$(*)$ことを帰納法で示す。
a. $(1\;2)=\sigma_1 \in S$ なので $j \le 2$ で $(i\;j) \in \langle S \rangle$
b. $j \le m$ で $(*)$ が成立する場合に、$j = m+1$ でも成立することを示す。$(i\;m+1)=(i\;m)(m\;m+1)(i\;m)=(i\;m)\sigma_m(i\;m)$。仮定より $(i\;m) \in \langle S \rangle$ で $\langle S \rangle$ が積について閉じているので、$(i\;m+1) \in \langle S \rangle$。すなわち、$j = m+1$ で $(*)$ が成立する。
a.b.より $(*)$ が証明された。
以降では、以下の形になる置換($m+1,\cdots,n$については自分自身に移す置換)を長さ $m (1 \le m \le n)$ の置換と呼ぶことにする。$$\left( \begin{array}{ccccc}
1 & \cdots & m & m+1 & \cdots & n \\
\sigma(1) & \cdots & \sigma(m) & m+1 & \cdots & n
\end{array}\right)$$$\langle S \rangle \subset \mathfrak{S}_n$ なので、($n$ 以下の)任意の長さの置換が $\langle S \rangle$ に含まれる$(**)$ことが言えれば、$\forall \sigma \in \mathfrak{S}_n, \sigma \in \langle S \rangle$、つまり $\mathfrak{S}_n \subset \langle S \rangle$ となって $\mathfrak{S}_n = \langle S \rangle$ である。$(**)$ を帰納法で証明する。
    a. 長さ $1$ の置換は恒等置換すなわち単位元のみなので $\langle S \rangle$ に含まれる。
    b. 長さ $m$ 以下の置換が $\langle S \rangle$ に含まれるときに、長さ $m+1$ の置換も $\langle S \rangle$ に含まれることを言う。長さ $m+1$ の置換は以下のようになる。$$\left( \begin{array}{ccccc}
1 & \cdots & m+1 & m+2 & \cdots & n \\
\sigma(1) & \cdots & \sigma(m+1) & m+2 & \cdots & n
\end{array}\right)$$このとき、$\sigma(i)=m+1$ となる $i \in \mathbb{Z}, 1 \le i \le m+1$ が存在し、$$\left( \begin{array}{ccccc}
1 & \cdots & i & \cdots & m & m+1 & m+2 & \cdots & n \\
\sigma(1) & \cdots & m+1 & \cdots & \sigma(m) & \sigma(m+1) & m+2 & \cdots & n
\end{array}\right)
\\=(i\;m+1)
\left( \begin{array}{ccccc}
1 & \cdots & i & \cdots & m & m+1 & \cdots & n \\
\sigma(1) & \cdots & \sigma(m+1) & \cdots & \sigma(m) & m+1 & \cdots & n
\end{array}\right)$$と表せる。$(*)$ より $(i\;m+1) \in \langle S \rangle$。残りは長さ $m$ の置換であるため仮定より $\langle S \rangle$ に含まれる。$\langle S \rangle$ は積について閉じているので、これで長さ $m+1$ の置換も $\langle S \rangle$ に含まれることが言えた。
a.b.より $(**)$ が証明された。
※$i,m+1$ の位置を交換までする必要はない
※【別解】互換を使って $\mathfrak{S}_n$ の元を $n$ を $n$ に移す置換に変えてそれが $\mathfrak{S}_{n-1}$ と対応する元で表現できることを使う
※【別解】$\sigma(1)=i$ として $\tau = (1\;2)(2\;3)\cdots(i-1\;i)\sigma$ とすると $\tau(1)=1$ なので $\tau$ は $\mathfrak{S}_{n-1}$ で表せる
2. $\sigma_n$ を前問(1)の定義として、$\sigma^{-(m-1)} \tau \sigma^{m-1} = \sigma_m (m=1,2,\cdots,n-1)$。
よって、$S = \{ \sigma_m | m = 1,2,\cdots,n-1 \} \subset \langle \sigma, \tau \rangle$ となるため、$\langle S \rangle \subset \langle \sigma, \tau \rangle$ ($\because$ 命題2.3.13(2))。
前問より $\langle S \rangle = \mathfrak{S}_n$ なので、
$\mathfrak{S}_n = \langle S \rangle \subset \langle \sigma, \tau \rangle \subset \mathfrak{S}_n$ ($\because \langle \sigma, \tau \rangle$ は $\mathfrak{S}_n$ の部分群であるため)
従って $\langle \sigma, \tau \rangle = \mathfrak{S}_n$。
