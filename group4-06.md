# 代数学1 群論入門

## 4.6 生成元と関係式

### メモ

外延と内包に近いイメージかも、外延が乗積表を書き下す形で、内包が生成元と関係式による表示

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

$G/H$ という表記だけなら剰余類で考えててもよいので $H$ が正規部分群である必要はない。
$\mathfrak{S}_3$ への「全射」準同型が必然かはわからない
補題4.2.2って必要なの？準同型なら明らかに関係式を満たす。「はずである」の部分はあくまで仮定したうえで話を進めて実際に確認できました、みたいな勢いかもしれない。

### 演習問題

### 4.6.1

>例2.10.6： $G$ を位数 $n$ の巡回群、 $x$ を $G$ の生成元とする。(略) $\mathbb{Z}/n\mathbb{Z}$ は $G$ と同型である。

p.125 例題4.6.7から $\langle x^2,y \rangle$ の元は全て $y^ix^{2j}(i=0,1,2,j=0,1)$ の形で書き表せまた全て相異なることが言える(※例題で $G$ の中で全てこの形で書き下しているから)ので $|\langle x^2,y \rangle|=6$ である。
$\langle yx^2\rangle=\lbrace1,yx^2,y^2,x^2,y,y^2x^2\rbrace=\langle x^2,y\rangle$ で位数 $6$ の巡回群となるため、p.73 例2.10.6より $\mathbb{Z}/6\mathbb{Z}$ と同型である。

### 4.6.2

>定理4.6.5： $G$ は $n$ 個の生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>命題4.1.10： (1)関係式 $t^n=1,r^2=1,rtr=t^{-1}$ が成り立つ。
(2) $|D_n|=2n,D_n=\lbrace1,t,\cdots,t^{n-1},r,rt,\cdots,rt^{n-1}\rbrace$ である。
(3) $rt^i(i=0,\cdots,n-1)$ の位数は $2$ である。

>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

定義とp.98 命題4.1.10から二面体群 $D_n$ はp.124 定理4.6.5の条件を満たし(生成される、関係式を満たす)、 $G=\langle x,y\mid x^n=y^2=1,yxy=x^{-1}\rangle$ から $D_n$ への全射準同型 $\phi$ が存在する。全射なのでp.18 定理1.5.2(2)とp.98 命題4.1.10(2)から $|G|\ge|D_n|=2n$

$yxy=x^{-1},x^n=1,y^2=1$ から $yx=x^{n-1}y$ となるので $x$ を左に移すことで $G$ の元は全て $x^i y^j(i=0,1,\cdots,n-1, j=0,1)$ の形で表せる。したがって $|G|\le2n$

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。

以上より $|G|=2n$ なのでp.8 命題1.1.7(2)より $\phi$ は全単射準同型となるため、p.45 命題2.5.3より $G\cong D_n$ である。

### 4.6.3 担当

> $G$ が群で $x,y\in G,x^2=y^5=1,xyx=y^2$ なら、 $y=1$ であることを証明せよ

$xyx=y^2$ なので左から $x$ をかけると $yx=xy^2$ である。

$1=y^5=y\cdot y^2\cdot y^2=y(xyx)(xyx)=\underline{yx}y^2x=x\underline{y^4x}=x^2y^8=y^3$

より $y^5=1$ かつ $y^3=1$ から $y^2=1$ となり、
$y^3=1$ かつ $y^2=1$ から $y=1$ である。

※p.41 定理2.4.13と指数法則から互いに素な $i,j$ で $y^i=y^j=1$ なら $y=1$ が言えるはずだがこの程度ならまぁ
※→不要。 $y$ の位数は $5$ の約数かつ $3$ の約数となるので $1$となる。よって $y=1$ 、が明快

>定理2.4.13： 整数 $a,b$ の最大公約数が $d$ なら、 $ax+by=d$ となる整数 $x,y$ が存在する

※ $(xyx)(xyx)=xy^2x=y^4$ 。両辺に左右から $x$ をかけて $y^2=xy^4x$ 。よって $xyx=xy^4x$ となるので $y^3=1$

### 4.6.4

1. 各 $x_i$ は全て互換なので $x_i^2=1$ である。
$x_i=(i\hspace{5mu}i+1),x_j=(j\hspace{5mu}j+1)$ なので $|i-j|\ge2$ であれば要素が被らないため可換 $x_i x_j = x_j x_i$ である。
$x_i x_{i+1} x_i=x_i (i+1\hspace{5mu}i+2)x_i^{-1}=(x_i(i+1)\hspace{5mu}x_i(i+2))=(i\hspace{5mu}i+2)$
$=(x_{i+1}(i)\hspace{5mu}x_{i+1}(i+1))=x_{i+1}(i\hspace{5mu}i+1)x_{i+1}^{-1}=x_{i+1} x_i x_{i+1}$
2. **【まだ】** ヒントに沿って、まず $H_n$ の任意の元が $x_1,\cdots,x_{n-1}$ の語で $x_{n-1}$ が高々 $1$ 回しか現れないもので表されることを証明し、次に $\tau_i=x_ix_{i+1}\cdots x_{n-1}(i=1,\cdots,n-1)$ とするとき、 $H_n$ の任意の元は、 $x_{n-1}$ が現れない語であるか、 $x_{n-1}$ が現れない語 $y$ により $\tau_i y(1\le y\le n-1)$ という形で表されることを証明する。
$H_n=\langle x_1,\cdots,x_{n-1}\rangle\Rightarrow|H_n|\le n!$
※ $x_i^2=1$ なので 同じ項が隣接する場合は考えなくともよい
※ $\tau_n=1$ と表記すると書きやすいかも
3. p.77 演習問題2.3.9(1) から $\langle x_1,\cdots,x_{n-1}\rangle=\mathfrak{S}_n$ である。
(1)とp.124 定理4.6.5より $H_n$ から $\mathfrak{S}_n$ への全射準同型 $\phi$ が存在する。p.18 定理1.5.2(2)より $|H_n|\ge|\mathfrak{S}_n|=n!$ 。一方(2)より $|H_n|\le n!$ なので $|H_n|=n!$ である。
p.8 命題1.1.7(2)より $\phi$ は全単射準同型となり、p.45 命題2.5.3より $\phi$ は同型(写像)となるため $H_n\cong\mathfrak{S}_n$ である。

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>演習問題2.3.9(1)： $\mathfrak{S}_n$ は $\sigma_1=(1\hspace{5mu}2),\cdots,\sigma_{n-1}(n-1\hspace{5mu}n)$ で生成されることを証明せよ

>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。

※ $H_{k-1}$ は $H_k$ の部分群になるといっていいか？ → 別の関係式で割った類だから型としては別扱いかな、元の数はもっと減ってるかもしれない
※ $H_n$ で考えたときに生成元が全て個別の類になるとは言っていないが適当に代表元をとればそのまま議論することができそう

### 4.6.5

1. $yxy^{-1}=x^2$ より $yx=x^2y$ 。これを用いて $x$ を左に移すことで $G$ の任意の元は $x^iy^j$ と表せる。 $x^7=y^3=1$ なので $G=\lbrace x^iy^j\mid i=0,\cdots,6,y=0,1,2\rbrace$ である。
2. $\sigma=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5\hspace{5mu}6\hspace{5mu}7)\in\mathfrak{S}_7$ とおくと $\sigma^2=(1\hspace{5mu}3\hspace{5mu}5\hspace{5mu}7\hspace{5mu}2\hspace{5mu}4\hspace{5mu}6)$ なのでp.109 補題4.2.2より $\tau=(2\hspace{5mu}3\hspace{5mu}5)(4\hspace{5mu}7\hspace{5mu}6)\in\mathfrak{S}_7$ とおけば $\tau\sigma\tau^{-1}=\sigma^2$ となる。また巡回置換なので明らかに $\sigma,\tau$ の位数はそれぞれ $7,3$ である。
3. p.124 定理4.6.5より $G$ から $\langle\sigma,\tau\rangle$ への全射準同型が存在する。(1) より $|G|\le21$ であり、p.18 定理1.5.2(2)から $|\langle\sigma,\tau\rangle|\le|G|\le21$ である。一方  p.58 系2.6.21(2)より $|\langle\sigma,\tau\rangle|$ は $\sigma,\tau$ の位数の公倍数でなければならないので $|\langle\sigma,\tau\rangle|\ge21$ である。よって $|G|=21$ である。

>補題4.2.2： $(i_1\cdots i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

>系2.6.21(2)： $g\in G$ の位数は $|G|$ の約数である。

### 4.6.6 担当

> $G=\langle x,y\mid x^{13}=y^3=1,yxy^{-1}=x^3\rangle$ なら、 $|G|=39$ であることを証明せよ

$yx=x^3y$ なのでp.125 例題4.6.6と同じ議論をすると $G$ の任意の元は $x^i y^j(i=0,1,2,\cdots,12,\;j=0,1,2)$ の形で表せるので $|G|\le39$

$x=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}\cdots\hspace{5mu}13)\in\mathfrak{S}_{13},y=(2\hspace{5mu}4\hspace{5mu}10)(3\hspace{5mu}7\hspace{5mu}6)(5\hspace{5mu}13\hspace{5mu}11)(8\hspace{5mu}9\hspace{5mu}12)\in\mathfrak{S}_{13}$ を考える。
明らかに $x$ の位数は $13$ 、 $y$ の位数は $3$ なので $x^{13}=1_{\mathfrak{S}_{13}},y^3=1_{\mathfrak{S}_{13}}$ である。

>補題4.2.2： $(i_1\cdots i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$

p.109 補題4.2.2より $yxy^{-1}=(y(1)\hspace{5mu}y(2)\hspace{5mu}y(3)\hspace{5mu}\cdots\hspace{5mu}y(13))=(1\hspace{5mu}4\hspace{5mu}7\hspace{5mu}10\hspace{5mu}13\hspace{5mu}3\hspace{5mu}6\hspace{5mu}9\hspace{5mu}12\hspace{5mu}2\hspace{5mu}5\hspace{5mu}8\hspace{5mu}11)$
$=\begin{pmatrix}1&2&3&4&5&6&7&8&9&10&11&12&13\\4&5&6&7&8&9&10&11&12&13&1&2&3\end{pmatrix}=x^3$ である。
(※同じ長さの巡回置換の積になるのが不思議に思ったが厳密じゃないけど↓↓で考察)

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>定理2.10.1(準同型定理)： $\phi:G\rightarrow H$ を軍の準同型とする。 $\pi:G\rightarrow G/\mathrm{Ker}(\phi)$ を自然な準同型とするとき、右図(略)が可換図式となるような準同型 $\psi:G/\mathrm{Ker}(\phi)\rightarrow H$ がただ一つ存在し、 $\psi$ は $G/\mathrm{Ker}(\phi)$ から $\mathrm{Im}(\phi)$ への同型となる。

>定理2.6.20(ラグランジュの定理)： (上の状況( $H$ が $G$ の部分群)で) $|G|=(G:H)|H|$ である。

$x,y$ で生成される群 $H=\langle x,y\rangle\subset\mathfrak{S}_{13}$ を考えると、これはp.124 定理4.6.5の条件を満たすので $G$ から $H$ への全射準同型 $\phi$ が存在する。p.70 定理2.10.1(準同型定理)より $G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=H$ であり、p.57 定理2.6.20(ラグランジュの定理)より $\frac{|G|}{|\mathrm{Ker}(\phi)|}=|H|$ となるので $G$ の位数は $H$ の位数の倍数である。

>系2.6.21(2)： $g\in G$ の位数は $|G|$ の約数である。

$H$ は位数 $13,3$ の元を含むのでp.58 系2.6.21(2)より $H$ の位数は $13,3$ の公倍数となるから $G$ の位数も $13,3$ の公倍数である。よって $|G|\ge39$ となる。

以上により $|G|\le39$ かつ $|G|\ge39$ なので $|G|=39$ である。

※回りくどい。 $|H|\ge39$ と全射から $|G|\ge39$ でよい。
※ $H$ 側で $x,y$ 使うのは混乱を招いてわかりにくい

#### p.125 例題4.6.7の方針だと詰まる

※$H=\langle x\rangle$ とすると $|G/H|=3$ になるはずで、 $G$ の $G/H$ への左作用による置換表現を考える。 $G/H$ の代表元として $\lbrace1,y,y^2\rbrace$ が取れるので $y$ は $(1\;2\;3)$ として作用するはずである。 $x^9H=H,x^9yH=yx^3H=yH,x^9y^2=yx^3yH=y^2xH=y^2H$ (※ここで $x^iy^2$ を $y^2x$ の形にしたいので $x^9$ を持ってきている)なので $x^9$ は恒等置換として作用する。また $x^{13}=1$ なので $x^4=1$ 、結局 $x=1$ でなければならない(※)。この場合、 $x,y$ では $H$ が生成できないので条件を満たさない。ならば逆に $y$ で生成される群、つまり $\mathbb{Z}/3\mathbb{Z}$ と同型な群を考えると、 $y=\bar{1}, x=\bar{0}$ で生成され、関係式を満たしている。なのでこれは使える。
が、仮に $H$ を可換群とした場合、 $yxy^{-1}=x^3$ から $x=x^3$ となり $x^2=1$ 、さらに $x^{13}=1$ から $x=1$ となる。すると $y^3=1$ となる $y$ で生成される群になるので単位元からなる群か、 $\mathbb{Z}/3\mathbb{Z}$ と同型な群となる。よって非可換な群を考えなければならない。条件踏まえると位数 $39$ になるはず。

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

#### 同じ長さの巡回置換の積になるのが不思議

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

>p.34 四元数群 
$$
\begin{array}{l}
1=I_2,
i=\begin{pmatrix}\sqrt{-1}&0\\0&-\sqrt{-1}\end{pmatrix},
j=\begin{pmatrix}0&1\\-1&0\end{pmatrix},
k=\begin{pmatrix}0&\sqrt{-1}\\\sqrt{-1}&0\end{pmatrix} \\
H=\lbrace\pm1,\pm i,\pm j,\pm k\rbrace
\end{array}
$$

>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。

以下、 $G=\langle x,y\mid x^4=y^4=1,x^2=y^2,yxy^{-1}=x^{-1}\rangle$ とし、また四元数群を $H$ と表す。
$i^4=j^4=1, i^2=j^2(=-1), jij^{-1}=ji(-j)=j(-k)=-i=i^{-1}$ なので $G$ の関係式を満たす。

よって p.124 定理4.6.5より $G$ から $H$ への全射準同型 $\phi$ が存在する。p.18 定理1.5.2より $|G|\ge|H|=8$ である。

$yxy^{-1}=x^{-1},x^4=1$ なので $yx = x^3y$ である。この式を用いて $x$ を $y$ の左に持ってくることで $G$ の任意の元は $x^i y^j(i=0,1,2,3,j=0,1,2,3)$ と表せる。ところが $y^2=x^2$ なので $j\ge2$ の場合は $y^2$ を $x^2$ に置き換えることで $x^k y^l(k=0,1,2,3,l=0,1)$ と表せることになる。よって $|G|\le8$ である。

以上により $8\ge|G|\ge|H|=8$ となるので $|G|=|H|=8$ である。p.8 命題1.1.7(2)から $\phi$ は全単射となり、p.45 命題2.5.3から同型(写像)である。よって $|G|\cong|H|$ となり題意は証明された。


### 4.6.8

>p.109 補題4.2.2： $(i_1\cdots i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$
1. 愚直に計算すると $\sigma\tau\nu=(1\hspace{5mu}2)(3\hspace{5mu}4)(1\hspace{5mu}2\hspace{5mu}3)(2\hspace{5mu}3\hspace{5mu}4)=(\text{※1})=1_{\mathfrak{S}_4}$
$\sigma,\tau,\nu$ はいずれも偶置換なのでその積も全て偶置換である。
$A_4$ の要素の置換の型を考えると $2,2$ 型が $3$ 通り( $1$ とのペアの選び方)、 $3,1$ 型が $8$ 通り( $1$ 部分の要素の選び方で $4$ 通り、 $3$ 部分の置換は $2$ 通り)、 $1,1,1,1$ 型が恒等置換で $1$ 通りである。
p.109 補題4.2.2より $\tau\sigma\tau^{-1}=(2\hspace{5mu}3)(1\hspace{5mu}4),\nu\sigma\nu^{-1}=(1\hspace{5mu}3)(4\hspace{5mu}2)$ なので $2,2$ 型は $\sigma,\tau,\nu$ から全て生成される。
$\tau=(1\hspace{5mu}2\hspace{5mu}3),\tau^2=(1\hspace{5mu}3\hspace{5mu}2),\nu=(2\hspace{5mu}3\hspace{5mu}4),\nu^2=(2\hspace{5mu}4\hspace{5mu}3),$
$\sigma\tau\sigma^{-1}=(1\hspace{5mu}2\hspace{5mu}4),(\sigma\tau\sigma^{-1})^2=(1\hspace{5mu}4\hspace{5mu}2),\sigma\nu\sigma^{-1}=(1\hspace{5mu}3\hspace{5mu}4),(\sigma\nu\sigma^{-1})^2=(1\hspace{5mu}4\hspace{5mu}3)$ となり $3,1$ 型も全て生成される。
$\mathfrak{S}_4$ の偶置換 $\sigma,\tau,\nu$ によって $A_4$ の全ての要素が生成され、 $\mathfrak{S}_4$ には他に奇置換しかなく偶置換である $\sigma,\tau,\nu$ の積で生成できるものは他にないので、 $\sigma,\nu,\tau$ は $A_4$ を生成する。
2. $x^2=1$ から $x^{-1}=x$ 、これと $xyz=1$ から $x=yz, yzyz=1, yz=(yz)^{-1}=z^{-1}y^{-1},zy=y^{-1}z^{-1}$ である。
$S=\lbrace1,y,y^2,y^2z\rbrace$ なので、
$Sy=\lbrace y,y^2,1,y^2zy\rbrace$ である。
$y^2zy=y\underline{yzy}=yz^{-1}=\underline{yz}z=\underline{z^{-1}}\underline{y^{-1}}z=(z^2)(y^2z)\in HS$ 、他の要素は $S$ に含まれているので $HSy\subset HS$ である。
また $Sz=\lbrace z,yz,y^2z,y^2z^2\rbrace$ である。
$z\in HS$ 、$\underline{y}\underline{z}=\underline{z^{-1}}\underline{y^{-1}}=(z^2)(y^2)\in HS, \underline{y^2}\underline{z^2}=\underline{y^{-1}z^{-1}}=(z)(y)\in HS$ で他の要素は $S$ に含まれているので $HSz\subset HS$ である。
>定理4.6.5： $G$ は $n$ この生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。
3. $x=yz$ なので $HSx=HSyz\subset HSz\subset HS$ となり $HSx\subset HS$ である。全ての生成元 $x,y,z$ に対して $HSx, HSy, HSz \subset HS$ なので、 ($\forall g\in G$ について $HSg\subset HS$ となるから $g\in HS$ となり) $G\subset HS$ である。
明らかに $G\supset HS$ なので $G=HS$ である。
$H=\lbrace1,z,z^2\rbrace$ なので $|H|=3$ 、また $|S|=4$ なので $|G|=|HS|\le|H||S|=12$
>定理1.5.2(2)： 集合 $A$ から集合 $B$ への全射写像があれば、 $|A|\ge|B|$ である。

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。
4. (1)とp.124 定理4.6.5より $G$ から $\langle\sigma,\tau,\nu\rangle=A_4$ への全射準同型 $\phi$ が存在する。
(1)とp.124 定理4.6.5から $G$ から $\mathfrak{S}_4$ への全射準同型 $\phi$ が存在する。全射なのでp.18 定理1.5.2(2)から $|G|\ge|A_4|=12$ である。
一方、(2) より $|G|=|A_4|=12$ である。
よって、p.8 命題1.1.7(2)より $\phi$ は全単射準同型となり、p.45 命題2.5.3より $\phi$ は同型(写像)となるため $G\cong\mathfrak{S}_4$ である。

(※1)
$$
\begin{array}{ll}
&(1\hspace{5mu}2)(3\hspace{5mu}4)(1\hspace{5mu}2\hspace{5mu}3)(2\hspace{5mu}3\hspace{5mu}4)\\
=&\begin{pmatrix}1&2&3&4\\2&1&4&3\end{pmatrix}\begin{pmatrix}1&2&3&4\\2&3&1&4\end{pmatrix}\begin{pmatrix}1&2&3&4\\1&3&4&2\end{pmatrix}\\
=&\begin{pmatrix}1&2&3&4\\2&1&4&3\end{pmatrix}\begin{pmatrix}1&2&3&4\\2&1&4&3\end{pmatrix}\\
=&\begin{pmatrix}1&2&3&4\\1&2&3&4\end{pmatrix}\\
=&1_{\mathfrak{S}_4}
\end{array}
$$

※(1) 異なる元が $7$ 個生成できれば部分群として位数 $12$ の群しかできず、偶置換しか生成できないので $A_4$ になる

#### ヒントとコメント

$G$ の $H\backslash G$ への右作用は全単射であり

>p.96 命題4.1.2 群 $G$ が集合 $X$ に作用すると、 $g\in G$ に対して定める写像 $X\ni x\mapsto gx\in X$ は全単射である

$2$ が $Hy$ であることを考えなくとも上の行の表から機械的に数字を割り当てることはできる

### 4.6.9 担当

>演習問題2.3.9(2)： $\mathfrak{S}_n$ は $\sigma=(1\hspace{5mu}2\cdots n)$ と $\tau=(1\hspace{5mu}2)$ で生成されることを証明せよ

1. 愚直に計算すると $\sigma\tau\nu=(3\hspace{5mu}4)(1\hspace{5mu}3\hspace{5mu}2)(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4)=(\text{※1})=1_{\mathfrak{S}_4}$
p.77 演習問題2.3.9(2)から $\mathfrak{S}_4$ が $(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4),(1\hspace{5mu}2)$ で生成されることが言えている。 $\nu=(3\hspace{5mu}4\hspace{5mu}1\hspace{5mu}2),\sigma=(3\hspace{5mu}4)$ なので(単にラベルの置き換えだから) $\mathfrak{S}_4$ は $\nu,\sigma$ で生成される。ここに $\mathfrak{S}_4$ の元を生成元として追加したところで $\mathfrak{S}_4$ より生成される群が大きくなることはないから、 $\mathfrak{S}_4$ は $\sigma,\tau,\nu$ で生成される。
2. $x^2=1$ から $x^{-1}=x$ 、これと $xyz=1$ から $x=yz, yzyz=1, yz=(yz)^{-1}=z^{-1}y^{-1},zy=y^{-1}z^{-1}$ である。
$S=\lbrace1,y,y^2,y^2z,y^2z^2,y^2z^2y\rbrace$ なので、
$Sy=\lbrace y,y^2,1,y^2zy,y^2z^2y,y^2z^2y^2\rbrace$ である。
(※2)より、 $y^2zy=(z^3)(y^2z^2)\in HS,y^2z^2y^2=(z)(y^2z) \in HS$ 、他の要素は $S$ に含まれているので $HSy\subset HS$ である。
また $Sz=\lbrace z,yz,y^2z,y^2z^2,y^2z^3,y^2z^2yz\rbrace$ である。
$z\in HS$ 、(※3)より、 $yz=(z^3)(y^2)\in HS, y^2z^3=(z)(y)\in HS, y^2z^2yz=(z^3)(y^2z^2y)\in HS$ で他の要素は $S$ に含まれているので $HSz\subset HS$ である。
$x=yz$ なので $HSx=HSyz\subset HSz\subset HS$ となり $HSx\subset HS$ である。全ての生成元 $x,y,z$ に対して $HSx, HSy, HSz \subset HS$ なので、 ($\forall g\in G$ について $HSg\subset HS$ となるから $g\in HS$ となり) $G\subset HS$ である。
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

(※2) 2つ目はトッドコクセターの方法の表から $6y=4(6:y^2z^2y, 4:y^2z)$ を参照して $(y^2z^2y^2)(y^2z)^{-1}=z$ を計算したうえで計算式眺めながら発見
$$
\begin{array}{lll}
y^2zy&=&y\underline{yz}y=yz^{-1}y^{-1}y=yz^{-1}=yz^3\\
&=&\underline{yz}zz=z^{-1}y^{-1}z^2=z^3y^2z^2\\
&=&(z^3)(y^2z^2)\\
y^2z^2y^2&=&(y^2z^2y^2)(yzyz)=\underline{y^2}\underline{z^3}yz=\underline{y^{-1}z^{-1}}yz=zyyz=zy^2z\\
&=&(z)(y^2z)
\end{array}
$$

参照した計算
$$
\begin{array}{lll}
(y^2z^2y^2)(y^2z)^{-1}&=&y^2z^2y^2\underline{z^{-1}y^{-1}}y^{-1}=y^2z^2\underline{y^2y}zy^{-1}=\underline{y^2}\underline{z^3}y^{-1}\\
&=&\underline{y^{-1}z^{-1}}y^{-1}=z\underline{yy^{-1}}\\
&=&z
\end{array}
$$

(※3) 3つ目はトッドコクセターの方法の表から $6z=6(6:y^2z^2y)$ を参照、して計算してなかったりする
$$
\begin{array}{lll}
yz&=&z^{-1}y^{-1}=z^3y^2\\
&=&(z^3)(y^2)\\
y^2z^3&=&y^{-1}z^{-1}=zy\\
&=&(z)(y)\\
y^2z^2yz&=&y(\underline{yz})(\underline{zyz})=y(z^{-1}y^{-1})(y^{-1})=y\underline{z^{-1}}\underline{y^{-2}}=yz^3y\\
&=&\underline{yz}zzy=\underline{z^{-1}}\underline{y^{-1}}z^2y=z^3y^2z^2y\\
&=&(z^3)(y^2z^2y)
\end{array}
$$

※ $S$ は積で閉じているわけではないので、 $s_1,s_2\in S$ として $s_1s_2\in S$ とは言えない

※ トッド・コクセターの方法が証明されている前提であれば $G\subset HS$ は明らかでよい？ → $H\backslash G$ の代表系がトッド・コクセターの方法の結果 $S$ になるとすれば $G=\bigsqcup_{s\in S} Hs=HS$ と言って良さそうだが
※ 演習問題4.6.8,4.6.9,4.6.10で似たような形の関係式でそれぞれ $A_4,\mathfrak{S}_4,A_5$ と同型な群が定義できている。これは一般的に言える？

### 4.6.10

※ p.138 補題4.9.1 $n\ge3$ なら、 $A_n$ は長さ $3$ の巡回置換で生成される を使うこともできる
※ 全部隣接してる場合 $(1\hspace{5mu}2\hspace{5mu}3)$ とそうでない場合 $(1\hspace{5mu}3\hspace{5mu}4)$ で $\tau, (\sigma\nu)\tau(\sigma\nu)^{-1}$ に $\nu$ の共役作用でぐるぐる回せば全パターンの長さ $3$ の巡回置換を生成できる

※ 生成元の位数が $2,3,5$ なので生成される部分群の位数は $30$ か $60$ 
※ 位数 $4$ の部分群を含めば位数 $60$ であることが言える
※ シロー $2$ 部分群を考えると $A_4,A_5$ の中に位数 $4$ の部分群は存在しているはず
※ $A_4\subset A_5$ で、 $A_4$ の中に位数 $4$ の部分群がある
※ 実際には $2,2$ 型＋単位元がその位数 $4$ の部分群になる

### 4.6.11

1. p.125 例題4.6.7より $G$ のすべての元は $y^ix^j(i\in\lbrace0,1,2\rbrace,j\in\lbrace0,1,2,3\rbrace)$ と個別に表せる。 $y^ix^j\in Z(G),y^kx^l\in G$ とすると
$(y^i x^j)(y^k x^l)=y^{i+k2^j}x^{j+l}, (y^k x^l)(y^i x^j)=y^{k+i2^l}x^{l+j}$ なので
任意の $k\in\lbrace0,1,2\rbrace,l\in\lbrace0,1,2,3\rbrace$ で
$i+k2^j\equiv k+i2^l\mod3$ でなくてはならない。
$2^l \mod3$ は $l$ によって $1,2$ のいずれかを取りうる。
$k=0$ のとき $i\equiv i2^l\mod3$ であり、 $l=0,2$ であれば $i\equiv i\mod3$ なので任意の $i$ で成立、 $l=1,3$ であれば $i\equiv 2i\mod3$ なので、 $i=0$ で成立する。よって $i=0$ でなければならない。
$k=1$ のとき $i+2^j\equiv 1+i2^l\mod3$ であり、 $i=0$ の制約を使うと $2^j\equiv 1\mod3$ なので $j=0,2$
$k=2$ のとき $i+2\cdot2^j\equiv 2+i2^l\mod3$ であり、 $i=0$ の制約を使うと
$2\cdot2^j\equiv 2\mod3$ なので $j=0,2$
以上により $i=0,j=0$ または $i=0,j=2$ で条件を満たすので $Z(G)=\lbrace y^0x^0,y^0x^2\rbrace=\lbrace1_G,x^2\rbrace$
2. $(y^kx^l)(y^ix^j)(y^kx^l)^{-1}=y^kx^ly^ix^jx^{-l}y^{-k}=y^{k+i2^l}x^jy^{3-k}=y^{k+i2^l+(3-k)2^j}x^j$ となるので $x$ の指数が異なる要素は共役類にならない。
$1_G,x^2\in Z(G)$ なのでそれぞれで共役類である( $i=0,j=0$ あるいは $i=0,j=2$ の場合)。
$i=0,j=1$ あるいは $i=0,j=3$ のときには $y^{k+i2^l+(3-k)2^j}x^j=y^{-k}x^j$ となるため、 $x$ の指数は変えられないが $k$ を適当に選べば $y$ 分の指数は任意に設定できる。
よって共役類は $\lbrace1_G\rbrace,\lbrace x^2\rbrace,\lbrace x,yx,y^2x\rbrace,\lbrace x^3,yx^3,y^2x^3\rbrace$

### 4.6.12

### 4.6.13 担当

>p.77 演習問題2.3.9(1)： $\mathfrak{S}_n$ は $\sigma_1=(1\hspace{5mu}2),\cdots,(n-1\hspace{5mu}n)$ によって生成されることを証明せよ

>p.109 補題4.2.2： $(i_1\cdots i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$

$y_1=(1\hspace{5mu}2)(3\hspace{5mu}4)(5\hspace{5mu}6)\in\mathfrak{S}_6\quad\text{※}\phi((1\hspace{5mu}2))\text{に相当}$
$y_2=(1\hspace{5mu}4)(2\hspace{5mu}5)(3\hspace{5mu}6)\in\mathfrak{S}_6\quad\text{※}\phi((2\hspace{5mu}3))\text{に相当}$
$y_3=(1\hspace{5mu}3)(2\hspace{5mu}4)(5\hspace{5mu}6)\in\mathfrak{S}_6\quad\text{※}\phi((3\hspace{5mu}4))\text{に相当}$
$y_4=(1\hspace{5mu}2)(3\hspace{5mu}6)(4\hspace{5mu}5)\in\mathfrak{S}_6\quad\text{※}\phi((4\hspace{5mu}5))\text{に相当}$
$y_5=(1\hspace{5mu}4)(2\hspace{5mu}3)(5\hspace{5mu}6)\in\mathfrak{S}_6\quad\text{※}\phi((5\hspace{5mu}6))\text{に相当}$

とおく。このとき明らかに $y_i^2=1(i=1,2,3,4,5)$ である(互換の積だから)。また

$y_1y_3=(1\hspace{5mu}4)(2\hspace{5mu}3)=y_3y_1$ 
$y_2y_4=(1\hspace{5mu}5)(2\hspace{5mu}4)=y_4y_2$ 
$y_3y_5=(1\hspace{5mu}2)(3\hspace{5mu}4)=y_5y_3$ 

である。さらに p.109 補題4.2.2 と $y_i=y_i^{-1}$ であることから

$y_1y_2y_1=(2\hspace{5mu}3)(1\hspace{5mu}6)(4\hspace{5mu}5)=y_2y_1y_2$
$y_2y_3y_2=(4\hspace{5mu}6)(1\hspace{5mu}5)(2\hspace{5mu}3)=y_3y_2y_3$
$y_3y_4y_3=(3\hspace{5mu}4)(1\hspace{5mu}5)(2\hspace{5mu}6)=y_4y_3y_4$
$y_4y_5y_4=(3\hspace{5mu}4)(2\hspace{5mu}5)(1\hspace{5mu}6)=y_5y_4y_5$

よって $y_i(i=1,2,3,4,5)$ はp.151 演習問題4.6.4(1)の関係式を満たす。

>定理4.6.5： $G$ は $n$ 個の生成元 $y_1,\cdots,y_n$ を持ち、関係式 $R_1(y_1,\cdots,y_n)=\cdots=R_m(y_1,\cdots,y_n)=1_G$ を持つとする。このとき、 $K=\langle x_1,\cdots,x_n\mid R_1(\boldsymbol{x})=1,\cdots,R_m(\boldsymbol{x})=1\rangle$ から $G$ への全射準同型 $\phi$ で、 $\phi(x_1)=y1,\cdots,\phi(x_n)=y_n$ となるものがある。

したがって p.124 定理4.6.5より(p.151 演習問題4.6.4の表記で) $H_6$ から $Y=\langle y_1,\cdots,y_5\rangle$ への全射準同型 $\rho$ で $\rho(x_i)=y_i(i=1,2,3,4,5)$ となるものが存在する。

>演習問題2.3.9(2)： $\mathfrak{S}_n$ は $\sigma=(1\hspace{5mu}2\cdots n)$ と $\tau=(1\hspace{5mu}2)$ によって生成されることを証明せよ。

>命題1.1.7(2)： $A,B$ が有限集合で $|A|=|B|$ なら (2) $f:A\rightarrow B$ が写像なら、 $f$ が単射であることと、全射であることは同値である。したがって、このとき $f$ は全単射になる。

>命題2.5.3： 全単射写像 $\phi:G_1\rightarrow G_2$ が群の準同型なら、同型である。

ここで、
( $Y$ の要素が $\mathfrak{S}_6$ を生成することが言いたいのだが超力技)
$y_1y_3y_5=(1\hspace{5mu}4)(2\hspace{5mu}3)(1\hspace{5mu}4)(2\hspace{5mu}3)(5\hspace{5mu}6)=(5\hspace{5mu}6)$
$y_1y_3y_2=(1\hspace{5mu}4)(2\hspace{5mu}3)(1\hspace{5mu}4)(2\hspace{5mu}5)(3\hspace{5mu}6)= (2\hspace{5mu}5\hspace{5mu}3\hspace{5mu}6)$
$y_1y_3y_2y_4=(2\hspace{5mu}5\hspace{5mu}3\hspace{5mu}6)(1\hspace{5mu}2)(3\hspace{5mu}6)(4\hspace{5mu}5)=(1\hspace{5mu}5\hspace{5mu}4\hspace{5mu}3\hspace{5mu}2)$
$y_1y_3y_2y_4y_1y_3y_5=(1\hspace{5mu}5\hspace{5mu}4\hspace{5mu}3\hspace{5mu}2)(5\hspace{5mu}6)=(1\hspace{5mu}5\hspace{5mu}6\hspace{5mu}4\hspace{5mu}3\hspace{5mu}2)$
となり、p.77 演習問題2.3.9(2)より $y_1y_3y_5=(5\hspace{5mu}6),y_1y_3y_2y_4y_1y_3y_5=(5\hspace{5mu}6\hspace{5mu}4\hspace{5mu}3\hspace{5mu}2\hspace{5mu}1)$ から $\mathfrak{S}_6$ が生成されるので、 $Y=\mathfrak{S}_6$ である。
p.151 演習問題4.6.4(3) から $H_6\cong\mathfrak{S}_6$  なので $\rho:H_6\rightarrow Y=\mathfrak{S}_6$ はp.8 命題1.1.7(2)、p.45 命題2.5.3から $\rho$ は同型(写像)となる。

>演習問題2.3.9(1)： $\mathfrak{S}_n$ は $\sigma_1=(1\hspace{5mu}2),\cdots,\sigma_{n-1}(n-1\hspace{5mu}n)$ で生成されることを証明せよ

$z_1=(1\hspace{5mu}2),\cdots,z_5=(5\hspace{5mu}6)$ とおくとp.151 演習問題4.6.4(1) で関係式を満たすことは確かめたので同様の議論をすることで、 $H_6$ から $Z=\langle z_1,\cdots,z_5\rangle$ への全射準同型で $\psi(x_i)=z_i$ となるものが存在する。p.77 演習問題2.3.9(1) から $Z=\mathfrak{S}_6$ で、p.151 演習問題4.6.4(3) から $H_6\cong\mathfrak{S}_6$  なのでp.8 命題1.1.7(2)、p.45 命題2.5.3から $\psi$ は同型(写像)となる。

>命題2.5.13(2)：群の同型写像の合成は同型写像である。同型写像の逆写像も同型写像である。

$x_i=\rho(y_i)=\psi(z_i)(i=1,2,3,4,5)$ で $\rho$ は全単射だから逆写像が存在し $(\rho^{-1}\circ\psi)(z_i)=y_i(i=1,2,3,4,5)$ となる。 $\phi=\rho^{-1}\circ\psi$ と置くと $\phi:\mathfrak{S}_6\rightarrow\mathfrak{S}_6$ で p.48 命題2.5.13(2) から $\phi$ は同型写像、さらに $\phi(z_i)=y_i(i=1,2,3,4,5)$ となるので、$\phi$ が題意を満たす自己同型である。

(※内部自己同型は共役なものに移すので互換は互換に移るから $\phi$ は内部自己同型ではない)