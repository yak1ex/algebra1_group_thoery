# 代数学1 群論入門

## 4.6 生成元と関係式

### メモ

#### 定理4.6.2

最後の文は第1版p.44 命題2.5.12ないし第2版p.48 命題2.5.14
準同型ではなく同型とすると $G$ が $n$ 変数の自由群を含まなければならない(同型なんだから当たり前ではある)
例えば $m\ge n$ で $m$ 変数の自由群から $n$ 個重複なく選んでくるとか
系2.8.8はp.62

#### 定義4.6.4

剰余群作るときに割る側の正規部分群は単位元にあたるので $R_i(x)=1$ を満たすことになる
代入は $\phi$ による写像にあたる

#### 定義4.6.5

$R_i(x)\in\mathrm{Ker}(\psi),\mathrm{Ker}(\psi)\triangleleft F_n$ なので、 $gR_i(x)g^{-1}\in\mathrm{Ker}(\psi)$ だから $S\subset\mathrm{Ker}(\psi)$
p.35 命題2.3.13(2) から $N=\langle S\rangle\subset\mathrm{Ker}(\psi)$
p.73 定理2.10.5
記号の乱用をしているのは $x_i$ 側で、 $\psi(x_i)$ の $x_i$ は $F_n$ 、 $\phi(x_i)$ の $x_i$ は $F_n/N$ の元である。

#### 例題4.6.7

少なくとも
全射準同型 $\phi:G\rightarrow H_1$ を考えたとき準同型定理から $G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=H_1$ 、ラグランジュの定理から $|G|=|H_1||\mathrm{Ker}(\phi)|$ なので $|G|$ は $|H_1|$ の倍数。

### 演習問題

### 4.6.1

### 4.6.2

### 4.6.3 担当

$xyx=y^2$ なので左から $x$ をかけると $yx=xy^2$ である。

$1=y^5=y\cdot y^2\cdot y^2=y(xyx)(xyx)=yxy^2x=xy^4x=x^2y^8=y^3$

より $y^5=1$ かつ $y^3=1$ から $y^2=1$ となり、
$y^3=1$ かつ $y^2=1$ から $y=1$ である。

※p.41 定理2.4.13と指数法則から互いに素な $i,j$ で $y^i=y^j=1$ なら $y=1$ が言えるはずだがこの程度ならまぁ

>定理2.4.13： 整数 $a,b$ の最大公約数が $d$ なら、 $ax+by=d$ となる整数 $x,y$ が存在する

### 4.6.4

1. $n\ge3,x_1=(1\;2),\cdots x_{n-1}=(n-1\;n)\in\mathfrak{S}_n\Rightarrow x_i^2=1,x_ix_j=x_j x_i(|i-j|\ge2),x_i x_{i+1}x_i=x_{i+1}x_ix_{i+1}(i=1,\cdots,n-2)$
2. $H_n=\langle x_i,\cdots,x_{n-1}\rangle\Rightarrow|H_n|\le n!$
3. $H_n\cong\mathfrak{S}_n$

### 4.6.5

### 4.6.6 担当

> $G=\langle x,y\mid x^{13}=y^3=1,yxy^{-1}=x^3\rangle$ なら、 $|G|=39$ であることを証明せよ

$yx=x^3y$ なのでp.125 例題4.6.6と同じ議論をすると $G$ の任意の元は $x^i y^j(i=0,1,2,\cdots,12,\;j=0,1,2)$ の形で表せるので $|G|\le39$

$x=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}\cdots\hspace{5mu}13)\in\mathfrak{S}_{13},y=(2\hspace{5mu}4\hspace{5mu}10)(3\hspace{5mu}7\hspace{5mu}6)(5\hspace{5mu}13\hspace{5mu}11)(8\hspace{5mu}9\hspace{5mu}12)\in\mathfrak{S}_{13}$ を考える。
明らかに $x$ の位数は $13$ 、 $y$ の位数は $3$ なので $x^{13}=1_{\mathfrak{S}_{13}},y^3=1_{\mathfrak{S}_{13}}$ である。

>補題4.2.2： $(i_1\cdots i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$

p.109 補題4.2.2より $yxy^{-1}=(y(1)\hspace{5mu}y(2)\hspace{5mu}y(3)\hspace{5mu}\cdots\hspace{5mu}y(13))=(1\hspace{5mu}4\hspace{5mu}7\hspace{5mu}10\hspace{5mu}13\hspace{5mu}3\hspace{5mu}6\hspace{5mu}9\hspace{5mu}12\hspace{5mu}2\hspace{5mu}5\hspace{5mu}8\hspace{5mu}11)=x^3$ である。(※どこからでてきたの？は厳密じゃないけど↓↓で説明)

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>定理2.10.1(準同型定理)： $\phi:G\rightarrow H$ を軍の準同型とする。 $\pi:G\rightarrow G/\mathrm{Ker}(\phi)$ を自然な準同型とするとき、右図(略)が可換図式となるような準同型 $\psi:G/\mathrm{Ker}(\phi)\rightarrow H$ がただ一つ存在し、 $\psi$ は $G/\mathrm{Ker}(\phi)$ から $\mathrm{Im}(\phi)$ への同型となる。

>定理2.6.20(ラグランジュの定理)： (上の状況( $H$ が $G$ の部分群)で) $|G|=(G:H)|H|$ である。

$x,y$ で生成される群 $H=\langle x,y\rangle\subset\mathfrak{S}_{13}$ を考えると、これはp.124 定理4.6.5の条件を満たすので $G$ から $H$ への全射準同型 $\phi$ が存在する。p.70 定理2.10.1(準同型定理)より $G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=H$ であり、p.57 定理2.6.20(ラグランジュの定理)より $\frac{|G|}{|\mathrm{Ker}(\phi)|}=|H|$ となるので $G$ の位数は $H$ の位数の倍数である。

>系2.6.21(2)： $g\in G$ の位数は $|G|$ の約数である。

$H$ は位数 $13,3$ の元を含むのでp.58 系2.6.21(2)より $H$ の位数は $13,3$ の公倍数となるから $G$ の位数も $13,3$ の公倍数である。よって $|G|\ge39$ となる。

以上により $|G|\le39$ かつ $|G|\ge39$ なので $|G|=39$ である。

#### p.125 例題4.6.7の方針だと詰まる

※$H=\langle x\rangle$ とすると $|G/H|=3$ になるはずで、 $G$ の $G/H$ への左作用による置換表現を考える。 $G/H$ の代表元として $\lbrace1,y,y^2\rbrace$ が取れるので $y$ は $(1\;2\;3)$ として作用するはずである。 $x^9H=H,x^9yH=yx^3H=yH,x^9y^2=yx^3yH=y^2xH=y^2H$ (※ここで $x^iy^2$ を $y^2x$ の形にしたいので $x^9$ を持ってきている)なので $x^9$ は恒等置換として作用する。また $x^{13}=1$ なので $x^4=1$ 、結局 $x=1$ でなければならない(※)。この場合、 $x,y$ では $H$ が生成できないので条件を満たさない。ならば逆に $y$ で生成される群、つまり $\mathbb{Z}/3\mathbb{Z}$ と同型な群を考えると、 $y=\bar{1}, x=\bar{0}$ で生成され、関係式を満たしている。なのでこれは使える。
が、仮に $H$ を可換群とした場合、 $yxy^{-1}=x^3$ から $x=x^3$ となり $x^2=1$ 、さらに $x^{13}=1$ から $x=1$ となる。すると $y^3=1$ となる $y$ で生成される群になるので単位元からなる群か、 $\mathbb{Z}/3\mathbb{Z}$ と同型な群となる。よって非可換な群を考えなければならない。

※p.41 定理2.4.13と指数法則から互いに素な $i,j$ で $x^i=x^j=1$ なら $x=1$ が言えるはず

>定理2.4.13： 整数 $a,b$ の最大公約数が $d$ なら、 $ax+by=d$ となる整数 $x,y$ が存在する

#### 問題の形式から直上の演習問題4.6.5(未)参照か

$H=\mathfrak{S}_{13}, x=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}\cdots\hspace{5mu}13)\in H$ を考える。 $yxy^{-1}=x^3$ だとすると
$x^3=\begin{pmatrix}1&2&3&4&5&6&7&8&9&10&11&12&13\\4&5&6&7&8&9&10&11&12&13&1&2&3\end{pmatrix}=(1\hspace{5mu}4\hspace{5mu}7\hspace{5mu}10\hspace{5mu}13\hspace{5mu}3\hspace{5mu}6\hspace{5mu}9\hspace{5mu}12\hspace{5mu}2\hspace{5mu}5\hspace{5mu}8\hspace{5mu}11)$ なので
$(y(1)\hspace{5mu}y(2)\hspace{5mu}y(3)\hspace{5mu}\cdots\hspace{5mu}y(13))=(1\hspace{5mu}4\hspace{5mu}7\hspace{5mu}10\hspace{5mu}13\hspace{5mu}3\hspace{5mu}6\hspace{5mu}9\hspace{5mu}12\hspace{5mu}2\hspace{5mu}5\hspace{5mu}8\hspace{5mu}11)$ となればよい

|$y(1)$|$y(2)$|$y(3)$|$y(4)$|$y(5)$|$y(6)$|$y(7)$|$y(8)$|$y(9)$|$y(10)$|$y(11)$|$y(12)$|$y(13)$|
|-|-|-|-|-|-|-|-|-|-|-|-|-|
|1|4|7|10|13|3|6|9|12|2|5|8|11|

これは $y=(2\hspace{5mu}4\hspace{5mu}10)(3\hspace{5mu}7\hspace{5mu}6)(5\hspace{5mu}13\hspace{5mu}11)(8\hspace{5mu}9\hspace{5mu}12)$ の場合である。長さ $3$ で重複のない巡回置換の積なので位数は $3$ である。

#### なんで？

そのままだと剰余を考えるときに表記が面倒になるので以下では置換の表記として $1,\cdots,13$ の代わりに $\bar{0},\cdots,\bar{12}$ を使う。
$x=(\overline{0}\hspace{5mu}\overline{1}\cdots\hspace{5mu}\overline{12})$ である。
観察から $x^n=(\overline{0}\hspace{5mu}\overline{n}\hspace{5mu}\overline{2n}\hspace{5mu}\overline{3n}\cdots\overline{12n})$ であることがわかる(厳密には帰納法を使うのだろうか？)。気持ち的には $1$ つ後ろの位置にずらすことを $n$ 回繰り返せば $n$ 後ろの位置にずれるのでそんなに不思議ではないと思う。
このとき $y(\overline{1})=\overline{n},y(\overline{2})=\overline{2n},\cdots,y(\overline{12})=\overline{12n}$
つまり(環としての $\mathbb{Z}/13\mathbb{Z}$ で) $n$ 倍する操作にあたる。
$n=3$ として $n$ 倍を繰り返すと、 $\overline{3},\overline{3}^2=\overline{9},\overline{3}^3=\overline{27}=\overline{1}$ なので $3$ 倍する操作は(この場合) $3$ 回で一巡する(元の数字に戻る)(※)。したがって( $\overline{0}$ に対して以外は)長さ $3$ の巡回置換となる。
この表記を使うと $y=(\overline{1}\hspace{5mu}\overline{3}\hspace{5mu}\overline{9})(\overline{2}\hspace{5mu}\overline{6}\hspace{5mu}\overline{5})(\overline{4}\hspace{5mu}\overline{12}\hspace{5mu}\overline{10})(\overline{7}\hspace{5mu}\overline{8}\hspace{5mu}\overline{11})$ となって $\overline{3}$ 倍になっていることがわかりやすいと思う。

※ $13$ が素数なのでp.58 定理2.6.23(フェルマーの小定理)からべき乗すると一巡することは言える。この場合は $p-1=12$ より小さい値(約数)で一巡している。

>定理2.6.23(フェルマーの小定理)： $p$ が素数で $x\in\mathbb{Z}$ が $p$ で割り切れなければ $x^{p-1}\equiv1 \mod p$

### 4.6.7

### 4.6.8

### 4.6.9 担当

>演習問題2.3.9(2)： $\mathfrak{S}_n$ は $\sigma=(1\hspace{5mu}2\cdots n)$ と $\tau=(1\hspace{5mu}2)$ で生成されることを証明せよ

1. 愚直に計算する。 $\sigma\tau\nu=(3\hspace{5mu}4)(1\hspace{5mu}3\hspace{5mu}2)(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4)=(\text{※1})=1_{\mathfrak{S}_4}$
p.77 演習問題2.3.9(2)から $\mathfrak{S}_4$ が $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4),(1\hspace{5mu}2)$ で生成されることが言えている。 $\nu=(3\hspace{5mu}4\hspace{5mu}1\hspace{5mu}2),\sigma=(3\hspace{5mu}4)$ なので(単にラベルの置き換えだから) $\mathfrak{S}_4$ は $\nu,\sigma$ で生成される。ここに $\mathfrak{S}_4$ の元を生成元として追加したところで $\mathfrak{S}_4$ より生成される群が大きくなることはないから、 $\mathfrak{S}_4$ は $\sigma,\tau,\nu$ で生成される。
2. $x^2=1$ から $x^{-1}=x$ 、これと $xyz=1$ から $x=yz, yzyz=1, yz=(yz)^{-1}=z^{-1}y^{-1},zy=y^{-1}z^{-1}$ である。
$S=\lbrace1,y,y^2,y^2z,y^2z^2,y^2z^2y\rbrace$ なので、
$Sy=\lbrace y,y^2,1,y^2zy,y^2z^2y,y^2z^2y^2\rbrace$ である。
(※2)より、 $y^2zy=(z^3)(y^2z^2)\in HS,y^2z^2y^2=(z^3)(y^2z)(y^2z^2y) \in HS$ 、他の要素は $S$ に含まれているので $HSy\subset HS$ である。
また $Sz=\lbrace z,yz,y^2z,y^2z^2,y^2z^3,y^2z^2yz\rbrace$ である。
$z\in HS$ 、(※3)より、 $yz=(z^3)(y^2)\in HS, y^2z^3=(z^3)(y^2z^2)(y^2z^2)\in HS, y^2z^2yz=(y^2z)(y^2)\in HS$ で他の要素は $S$ に含まれているので $HSz\subset HS$ である。
$x=yz$ なので $HSx=HSyz\subset HSz\subset HS$ となり $Sx\subset HS$ である。全ての生成元 $x,y,z$ に対して $HSx, HSy, HSz \subset HS$ なので、 ($\forall g\in G$ について $HSg\subset HS$ となるから $g\in HS$ となり) $G\subset HS$ である。
明らかに $G\supset HS$ なので $G=HS$ である。

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。

3. (1)とp.124 定理4.6.5から $G$ から $\mathfrak{S}_4$ への全射準同型 $\phi$ が存在する。全射なのでp.18 定理1.5.2(2)から $|G|\ge|\mathfrak{S}_4|=24$ である。
一方、(2) より $G=HS$ なので $|G|=|HS|\le|H||S|=4\cdot6=24$ なので $|G|=|\mathfrak{S}_4|=24$ である。
よって、p.8 命題1.1.7(2)より $\phi$ は全単射準同型となり、p.45 命題2.5.3より $\phi$ は同型(写像)となるため $G\cong\mathfrak{S}_4$ である。

(※1)
$$
\begin{array}{ll}
&\begin{pmatrix}1&2&3&4\\1&2&4&3\end{pmatrix}\begin{pmatrix}1&2&3&4\\3&1&2&4\end{pmatrix}\begin{pmatrix}1&2&3&4\\2&3&4&1\end{pmatrix}\\
=&\begin{pmatrix}1&2&3&4\\1&2&4&3\end{pmatrix}\begin{pmatrix}1&2&3&4\\1&2&4&3\end{pmatrix}\\
=&\begin{pmatrix}1&2&3&4\\1&2&3&4\end{pmatrix}\\
=&1_{\mathfrak{S}_4}
\end{array}
$$

下線部を置き換え

(※2)
$$
\begin{array}{lll}
y^2zy&=&y\underline{yz}y=yz^{-1}y^{-1}y=yz^{-1}=yz^3\\
&=&\underline{yz}zz=z^{-1}y^{-1}z^2=z^3y^2z^2\\
&=&(z^3)(y^2z^2)\\
y^2z^2y^2&=&y\underline{yz}\underline{zy}y=yz^{-1}y^{-1}y^{-1}z^{-1}y=yz^{-1}y^{-2}z^{-1}y=yz^3yz^3y\\
&=&\underline{yz}z\underline{zy}zzzy=z^{-1}y^{-1}zy^{-1}z^{-1}zzzy=z^3y^2zy^2z^2y\\
&=&(z^3)(y^2z)(y^2z^2y)
\end{array}
$$

(※3)
$$
\begin{array}{lll}
yz&=&z^{-1}y^{-1}=z^3y^2\\
&=&(z^3)(y^2)\\
y^2z^3&=&y\underline{yz}zz=yz^{-1}y^{-1}zz=yz^3y^2z^2\\
&=&\underline{yz}zzy^2z^2=z^{-1}y^{-1}zzy^2z^2=z^3y^2z^2y^2z^2\\
&=&(z^3)(y^2z^2)(y^2z^2)\\
y^2z^2yz&=&yyzz\underline{yz}=yyzzz^{-1}y^{-1}=y^2zy^2\\
&=&(y^2z)(y^2)
\end{array}
$$

### 4.6.10

### 4.6.11

### 4.6.12

### 4.6.13 担当(まだ)

ref 演習問題 4.6.4

$\mathfrak{S}_6$ の自己同型 $\phi$ で
$\phi((1\;2))=(1\;2)(3\;4)(5\;6)$
$\phi((2\;3))=(1\;4)(2\;5)(3\;6)$
$\phi((3\;4))=(1\;3)(2\;4)(5\;6)$
$\phi((4\;5))=(1\;2)(3\;6)(4\;5)$
$\phi((5\;6))=(1\;4)(2\;3)(5\;6)$

(※内部自己同型は共役なものに移すので互換は互換に移る)