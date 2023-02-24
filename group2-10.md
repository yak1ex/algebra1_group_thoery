# 代数学1 群論入門

## 2.10 準同型定理

### メモ

#### 同型の意味

ある種抽象的な準同型から間接的に定義されているところが分かりづらそう。

p.40 定義2.5.1(2)より$\phi$が準同型で逆写像を持ち、逆写像も準同型であるとき、$\phi$を同型(写像)であるという。
p.41 命題2.5.2は全単射準同型ならば同型であると言っている。
その逆、同型であれば全単射準同型であることは、p.17 演習問題1.1.5より「$\phi$が逆写像を持っているので全単射である」ことから言える。

ここで群$G,G^\prime$を考える。$G$の元は$x$のように$\prime$なしで、$G^\prime$の元は$x^\prime$のように$\prime$付きで表記する。また$G$の演算は$\circ$で$G^\prime$の演算は$+$で表記する。
$x_i\circ x_j=x_{k_{i,j}}$とするとこの$k_{i,j}$が演算表そのものである。

※添字だけで表記すると以下のようなイメージである。
| |1|2|...|n|
|-|-|-|-|-|
|1|$k_{1,1}$|$k_{1,2}$|...|$k_{1,n}$|
|2|$k_{2,1}$|$k_{2,2}$|...|$k_{2,n}$|
|...|||||
|n|$k_{n,n}$|$k_{n,2}$|...|$k_{n,n}$|

$\phi$は全単射なので$x_i$と$G^\prime$の要素が1対1に対応する。適当に添字をつけることで$x_i$と$x^\prime_i$とが対応するようにできる。すなわち簡単のため$\phi(x_i)=x^\prime_i$とするということである。
ここで$x^\prime_{k_{i,j}}=\phi(x_{k_{i,j}})=\phi(x_i\circ x_j)=\phi(x_i)+\phi(x_j)=x^\prime_i+x^\prime_j$となる。すなわち、$x^\prime_i+x^\prime_j=x^\prime_{k_{i,j}}$。これは$G$における演算表$k_{i,j}$がそのまま$G^\prime$における演算表$k_{i,j}$になるということである。すなわち同型写像で対応する群(＝同型な群)の間では演算表が一致する。群は集合とその要素間の演算で定まるため、これらはラベル、表記の違いを除いて群としては同じ、区別できないということである。従って、群論的な性質は同じように成立することになる。あくまでも群論的な性質であって群としての演算以外の演算(例えば加法群のときの乗法)はそもそも有り無しから異なるかもしれないし可逆であるかどうかも異なるかもしれない、もちろん一致しているかもしれない。

#### 環の同型

環の準同型の定義はp.46 定義2.5.23(1)より、$\phi(x+y)=\phi(x)+\phi(y),\phi(xy)=\phi(x)\phi(y),\phi(1_G)=1_{G^\prime}$(記法は「同型の意味」の議論に合わせた)。「同型の意味」の議論において演算(表)が一致することは$\phi(xy)=\phi(x)\phi(y)$と全単射写像であることから導出されている。全単射であることは逆写像があることから言っている。

つまり$\phi(1_G)=1_{G^\prime}$の条件なしに、$\phi(x+y)=\phi(x)+\phi(y),\phi(xy)=\phi(x)\phi(y),\phi$が逆写像を持つこと、だけから加法、乗法の両方で演算が保存されることについては言えることになる。しかし、$\phi(xy)=\phi(x)\phi(y)$と$\phi$が逆写像を持つことから、$x_1$を$G$の単位元として$x^\prime_i=\phi(x_i)=\phi(x_i x_1)=\phi(x_i)\phi(x_1)=x^\prime_i x^\prime_1$かつ$x^\prime_i=\phi(x_i)=\phi(x_1 x_i)=\phi(x_1)\phi(x_i)=x^\prime_1 x^\prime_i$となるので(p.26 定義2.2.1(4)乗法単位元の定義から)$x^\prime_1$が$G^\prime$での(乗法)単位元であることが言える。つまり$\phi(1_G)=\phi(x_1)=x^\prime_1=1_{G^\prime}$となり、(乗法)単位元が(乗法)単位元に移ることは逆写像があること(全単射であること)という条件があれば不要となる(そちらから導出できることになる)。

任意の$x^\prime_i$に対して$x^\prime_1$が単位元の性質を満たすことを示すところで$\phi$の全射性を(暗黙的に)用いている。一方、$\phi$が単射であるだけであれば、

||$1_G$|$a$|
|-|-|-|
|$1_G$|$1_G$|$a$|
|$a$|$a$|$a$|

||$1_{G^\prime}$|$a^\prime$|$b^\prime$|
|-|-|-|-|
|$1_{G^\prime}$|$1_{G^\prime}$|$a^\prime$|$b^\prime$|
|$a^\prime$|$a^\prime$|$a^\prime$|$a^\prime$|
|$b^\prime$|$b^\prime$|$a^\prime$|$b^\prime$|

$\phi(1_G)=b^\prime,\phi(a)=a^\prime$とすることで

||$\phi(1_G)=b^\prime$|$\phi(a)=a^\prime$|
|-|-|-|
|$\phi(1_G)=b^\prime$|$\phi(1_G)=b^\prime$|$\phi(a)=a^\prime$|
|$\phi(a)=a^\prime$|$\phi(a)=a^\prime$|$\phi(a)=a^\prime$|

となるから、$\phi(xy)=\phi(x)\phi(y)$だが$\phi(1_G)\ne 1_{G^\prime}$な構成を作ることができる。

#### 例題2.10.12

##### 「$G/H$は位数$2$の群なので$\mathbb{Z}/2\mathbb{Z}$と同型である」

p.53 命題2.6.22より$G/H$は位数$2$の巡回群。p.67 例2.10.6より位数$2$の巡回群は$\mathbb{Z}/2\mathbb{Z}$と同型である。

##### 定理2.10.2より、$H$は$G/2G$の指数$2$の部分群に対応する

定理2.10.2は同型とまでは言っていないがなぜ指数$2$と言えるのか？

$G$は有限群である。また$G$は可換群なので任意の部分群は正規部分群である。
$N\subset X\subset G$な正規部分群$X$を考える。
このときp.65 命題2.10.3 第二同型定理(2)を使うと$X\cap N\triangleleft X$、すなわち$N\triangleleft X$なので$X/N$は剰余群となる。
p.64 定理2.10.2 準同型定理(部分群の対応)での対応は、$G\rightarrow G/N$の自然な写像とその逆写像なので$X$と$X/N$が対応することになる。※ここ厳密とは言えないかも
p.53 定理2.6.20 ラグランジェの定理より$G$における$X$の指数は$\frac{|G|}{|X|}$である。
同様に$G/N$における$X/N$の指数は$\frac{|G/N|}{|X/N|}=\frac{|G|}{|N|}/\frac{|X|}{|N|}=\frac{|G|}{|X|}$となる。
すなわち、定理2.10.2によって対応する部分群の指数は等しい。

##### 「$G\cong\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$である。(略)$\mathbb{Z}/3\mathbb{Z}$において2倍写像は全単射である。よって、$G/2G\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$である」

##### 補題1 群$G=G_1\times G_2$で群$H=H_1\times H_2$かつ$G_1\triangleright H_1$かつ$G_2\triangleright H_2$とすると、$G\triangleright H$かつ$G/H=G_1/H_1\times G_2/H_2$

$\forall g\in G=G_1\times G_2$は$g_1\in G_1, g_2\in G_2$によって$g=(g_1,g_2)$と表せる。また$\forall h \in H=H_1\times H_2$は$h_1\in H_1, h_2\in H_2$によって$h=(h_1,h_2)$と表せる。このとき、正規部分群の定義から$g_1 h_1 g_1^{-1} \in H_1$かつ$g_2 h_2 g_2^{-1} \in H_2$である。従って、$ghg^{-1}=(g_1,g_2)(h_1,h_2)(g_1,g_2)^{-1}=(g_1,g_2)(h_1,h_2)(g_1^{-1},g_2^{-1})=(g_1 h_1 g_1^{-1},g_2 h_2 g_2^{-1})\in H_1\times H_2=H$となるため、正規部分群の定義から$G\triangleright H$である。

$G\triangleright H$なので$G/H$は剰余群となる。$\phi_1:G_1\ni g_1\mapsto g_1 H_1\in G_1/H_1, \phi_2:G_2\ni g_2\mapsto g_2 H_2\in G_2/H_2$はそれぞれ自然な写像でありp.59 命題2.8.13より全射準同型写像、また$\mathrm{Ker}(\phi_1)=H_1$かつ$\mathrm{Ker}(\phi_2)=H_2$である。よって、$\phi:G=G_1\times G_2\ni (g_1,g_2)\mapsto (\phi_1(g_1),\phi_2(g_2))=(g_1 H_1, g_2 H_2)\in G_1/H_1\times G_2/H_2$は(成分ごとに考えれば明らかにwell-definedな)全射準同型写像となり、$\mathrm{Ker}(\phi)=H_1\times H_2$である。よって、準同型定理(p.63 定理2.10.1)より$G/H=G/(H_1\times H_2)\cong G_1/H_1\times G_2/H_2$である。

##### 説明

補題1を再帰的に適用すれば3つ以上の群の直積についても同様のことが言える。

「$\mathbb{Z}/3\mathbb{Z}$において2倍写像は全単射である」ため、$2(\mathbb{Z}/3\mathbb{Z})\cong\mathbb{Z}/3\mathbb{Z}$である。なぜなら、$\phi(g)=2g$とすると可換群上なので$\phi(g+h)=2(g+h)=2g+2h=\phi(g)+\phi(h)$となり2倍写像は準同型、つまり全単射準同型なので同型だからである。

よって$G\cong\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$であれば、$2G\cong2(\mathbb{Z}/8\mathbb{Z})\times2(\mathbb{Z}/8\mathbb{Z})\times2(\mathbb{Z}/3\mathbb{Z})\cong2\mathbb{Z}/8\mathbb{Z}\times2\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$である。

$2G$は明らかに部分群で、$G$は可換群だから正規部分群となるため
$$G/2G\cong(\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z}\times2\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z})\\
=(\mathbb{Z}/8\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z})\times(\mathbb{Z}/8\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z})\times(\mathbb{Z}/3\mathbb{Z})/(\mathbb{Z}/3\mathbb{Z})\quad(\because 補題1より)\\
\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}\times\{0\}\quad(\because p.66\;命題2.10.4\;第三同型定理より))\\
\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$$

### 演習問題

#### 2.10.1

$G$は可換群なのでその部分群は常に正規部分群である。まず、$H_1,H_2$が$G$の(正規)部分群であることを確かめておく。

$1_\mathbb{C}\in H_1$、$z\in H_1$として$z\ne0$なので$|z^{-1}|=|\frac{1}{z}|=\frac{1}{|z|}=1$より$z^{-1}\in H_1$、$z_1,z_2\in H_1$として、$|z_1 z_2|=|z_1||z_2|=1$なので$z_1 z_2\in H_1$。よって、$H_1$は$G$の(正規)部分群となる。

$1_\mathbb{C}\in H_2$、$z \in H_2$として$z\ne0$なので$z^{-1}=\frac{1}{z}\gt0$。$z_1,z_2\in H_2$として、$z_1 z_2\gt0$なので$z_1 z_2\in H_2$。よって、$H_2$は$G$の(正規)部分群となる。

$\phi:G\ni z\mapsto |z|\in H_2$とする。このとき$\phi(z_1 z_2)=|z_1 z_2|=|z_1||z_2|=\phi(z_1)\phi(z_2)$なので$\phi$は準同型写像であり、また明らかに全射である。また、$\mathrm{Ker}(\phi)=H_1$なので準同型定理(p.63 定理2.10.1)より$G/H_1\cong H_2$。

$\psi:G\ni z\mapsto \frac{z}{|z|}\in H_1$とする。このとき$\psi(z_1 z_2)=\frac{z_1 z_2}{|z_1 z_2|}=\frac{z_1}{|z_1|}\frac{z_2}{|z_2|}=\psi(z_1)\psi(z_2)$なので$\psi$は準同型写像であり、また明らかに全射である。また、$\mathrm{Ker}(\psi)=H_2$なので($\because \frac{z}{|z|}=1\Rightarrow z=|z|\Rightarrow z\in H_2$)準同型定理(p.63 定理2.10.1)より$G/H_2\cong H_1$。

#### 2.10.2

$\mathbb{R}$は可換群なので$\mathbb{Z}$はその正規部分群となる。

$\phi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$を自然な写像とする(※)と$\mathrm{Ker}(\phi)=\mathbb{Z}$である。このとき$\psi(x)=\phi(\frac{x}{a})$とすると、$\psi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$で$\psi(x_1+x_2)=\phi(\frac{x_1+x_2}{a})=\{\frac{x_1+x_2}{a}\}=\{\frac{x_1}{a}\}+\{\frac{x_2}{a}\}$(※ここでの加算は$\mathbb{R}/\mathbb{Z}$のものである)$=\phi(\frac{x_1}{a})+\phi(\frac{x_2}{a})=\psi(x_1)+\psi(x_2)$となり、$\psi$は準同型写像でありまた、明らかに全射である。$\mathrm{Ker}(\psi)=a\mathbb{Z}$なので、準同型定理(p.63 定理2.10.1)より、$\mathbb{R}/a\mathbb{Z}\cong\mathbb{R}/\mathbb{Z}$である。

※$\mathbb{R}/\mathbb{Z}$とは実数の小数展開で整数部の差異を無視して小数部で類にまとめるということを意味する。$x\in\mathbb{R}$に対して$x$の小数部を$\{x\}=x-\lfloor x\rfloor$と表記することにすると$\phi:\mathbb{R}\ni x\mapsto \{x\}+\mathbb{Z}\in\mathbb{R}/\mathbb{Z}$になる。

#### 2.10.3

演習問題2.8.5(1)より$H$は$G$の正規部分群である。

$\forall g \in G$に対して$g\in\mathrm{GL}_2(\mathbb{R})$が下三角行列であることから$g = \begin{pmatrix}a &0\\
c & d
\end{pmatrix}$と表せて、$g\in\mathrm{GL}_2(\mathbb{R})$であることから$\det(g)=ad\ne0$。すなわち$a\ne0\land d\ne0$である。従って、$\phi:G\ni\begin{pmatrix}a &0\\
c & d
\end{pmatrix}\mapsto\frac{a}{d}\in\mathbb{R}^\times$と定義することができる。このとき$\phi\left(\begin{pmatrix}a & 0\\
c & d
\end{pmatrix}\begin{pmatrix}
e & 0\\
g & h
\end{pmatrix}\right)=\phi\left(\begin{pmatrix}
ae & 0\\
ce+dg & dh
\end{pmatrix}\right)=\frac{ae}{dh}=\frac{a}{d}\frac{e}{h}=\phi\left(\begin{pmatrix}
a & 0\\
c & d
\end{pmatrix}\right)\phi\left(\begin{pmatrix}
e & 0\\
g & h
\end{pmatrix}\right)$なので$\phi$は準同型写像で、かつ明らかに全射である。また$\mathrm{Ker}(\phi)=H(\because g\in\mathrm{Ker}(\phi)\Leftrightarrow\frac{a}{d}=1\Leftrightarrow a=d\Leftrightarrow g\in H)$であることから、準同型定理(p.63 定理2.10.1)より、$G/H\cong\mathbb{R}^\times$である。

#### 2.10.4

以下、加法での表記を使用する。

$\phi$を$G\rightarrow G/H$の自然な写像とする。p.59 命題2.8.13より$\phi$は全射準同型写像で$\mathrm{Ker}(\phi)=H$である。また$G/H$の位数は$n$なので有限群であり、p.53 系2.6.21(2)から$\forall f\in G/H$の位数は$n$の約数となるため$nf=0$である。
$\forall k\in nG$は$g\in G$によって$k=ng$と表せる。$\phi(ng)=n\phi(g)=0(\because \phi(g)\in G/H)$。これは$ng=k\in\mathrm{Ker}(\phi)$ということである。すなわち$nG\subset \mathrm{Ker}(\phi)=H$。

#### 2.10.5

$G$は可換群なので任意の部分群は正規部分群である。

1. $G$の指数$2$の部分群を$H$とすると$G/H$は位数$2$の部分群となるため$\mathbb{Z}/2\mathbb{Z}$と同型である。よって、$g\in G$とすると$2g\in H$。したがって、$2G=\{2g\;|\;g\in G\}\subset H$。p.64 定理2.10.2 準同型定理(部分群の対応)より、$H$は指数$2$の$G/2G$の部分群と1対1対応する。$G=\mathbb{Z}\times\mathbb{Z}$より$2G=2\mathbb{Z}\times2\mathbb{Z}$なので、補題1より$G/2G\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$。すなわち$H$は$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の指数$2$の部分群と1対1対応する。$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数は$4$なので指数$2$の部分群は位数$2$の部分群と同じことである。位数$2$の部分群は単位元以外に$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数$2$の元を1つだけ持つ。逆に$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の元を$1$つ定めると位数$2$の部分群を生成する。つまり位数$2$の元と位数$2$の部分群は1対1である。$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数$2$の元は$3$つあるので位数$2$の部分群も$3$つである。これが$H$と1対1対応するので$G$の指数$2$の部分群$H$の数は$3$となる。


<table>
<caption>$2\mathbb{Z}\times\mathbb{Z}$</caption>
<colgroup>
<col style="background: #80ffff"><col style="background: #ff80ff">
<col style="background: #80ffff"><col style="background: #ff80ff">
</colgroup>
<tr><td>(0,3)</td><td>(1,3)</td><td>(2,3)</td><td>(3,3)</td></tr>
<tr><td>(0,2)</td><td>(1,2)</td><td>(2,2)</td><td>(3,2)</td></tr>
<tr><td>(0,1)</td><td>(1,1)</td><td>(2,1)</td><td>(3,1)</td></tr>
<tr><td>(0,0)</td><td>(1,0)</td><td>(2,0)</td><td>(3,0)</td></tr>
</table>

<table>
<caption>$\mathbb{Z}\times2\mathbb{Z}$</caption>
<tr style="background: #ff80ff"><td>(0,3)</td><td>(1,3)</td><td>(2,3)</td><td>(3,3)</td></tr>
<tr style="background: #80ffff"><td>(0,2)</td><td>(1,2)</td><td>(2,2)</td><td>(3,2)</td></tr>
<tr style="background: #ff80ff"><td>(0,1)</td><td>(1,1)</td><td>(2,1)</td><td>(3,1)</td></tr>
<tr style="background: #80ffff"><td>(0,0)</td><td>(1,0)</td><td>(2,0)</td><td>(3,0)</td></tr>
</table>

<table>
<caption>$(2\mathbb{Z}\times2\mathbb{Z})\cup((1+2\mathbb{Z})\times(1+2\mathbb{Z}))$</caption>
<tr><td style="background: #ff80ff">(0,3)</td><td style="background: #80ffff">(1,3)</td><td style="background: #ff80ff">(2,3)</td><td style="background: #80ffff">(3,3)</td></tr>
<tr><td style="background: #80ffff">(0,2)</td><td style="background: #ff80ff">(1,2)</td><td style="background: #80ffff">(2,2)</td><td style="background: #ff80ff">(3,2)</td></tr>
<tr><td style="background: #ff80ff">(0,1)</td><td style="background: #80ffff">(1,1)</td><td style="background: #ff80ff">(2,1)</td><td style="background: #80ffff">(3,1)</td></tr>
<tr><td style="background: #80ffff">(0,0)</td><td style="background: #ff80ff">(1,0)</td><td style="background: #80ffff">(2,0)</td><td style="background: #ff80ff">(3,0)</td></tr>
</table>

2. $G$の指数$13$の部分群を$H$とすると$G/H$は位数$13$の部分群となるため$\mathbb{Z}/13\mathbb{Z}$と同型である。よって、$g\in G$とすると$13g\in H$。したがって、$13G=\{13g\;|\;g\in G\}\subset H$。p.64 定理2.10.2 準同型定理(部分群の対応)より、$H$は指数$13$の$G/2G$の部分群と1対1対応する。$G=\mathbb{Z}\times\mathbb{Z}$より$13G=13\mathbb{Z}\times13\mathbb{Z}$なので、補題1より$G/2G\cong\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$。すなわち$H$は$\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$の指数$13$の部分群と1対1対応する。$\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$の位数は$169$なので指数$13$の部分群は位数$13$の部分群と同じことである。$13$は素数なのでp.53 命題2.6.22より位数$13$の部分群は単位元以外の元によって生成される巡回群である。$g=(\bar{a},\bar{b})$を$\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$の元とする。$\bar{a}=0$とすると、$\bar{b}\ne\bar{0}$の位数は$13$でどの元によっても生成される群は等しい。$\bar{b}=\bar{0}$の場合も同様に$\bar{a}\ne\bar{0}$の位数は$13$でどの元によっても生成される群は等しい。$\bar{a}\ne\bar{0}$かつ$\bar{b}\ne\bar{0}$の場合、その元によって生成される群のなかに$\bar{a}=\bar{1}$となる元が必ず存在し、かつその元自体も(単位元ではないので命題2.6.22より)生成元となる。この生成元について$\bar{b}=\bar{0}$とすると$\bar{b}\ne\bar{0}$な元が生成されないので$\bar{b}\ne\bar{0}$である。同じ生成元からは同じ群が生成され、$\bar{b}$が異なれば異なる群が生成されるので$(\bar{1},\bar{b})(\bar{b}\ne\bar{0})$の取り方だけ異なる群が存在する。以上により、位数$13$の$\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$の部分群は$\langle(\bar{0},\bar{1})\rangle,\langle(\bar{1},\bar{b})\rangle(\bar{b}\in\mathbb{Z}/13\mathbb{Z})$の14通り存在する。これが$H$と1対1対応するので$G$の指数13の部分群$H$の数は14である。

#### 2.10.6

$G$の指数$2$の部分群を$H$とすると$G/H$は位数2の部分群となるため$\mathbb{Z}/2\mathbb{Z}$と同型である。よって、$g\in G$とすると$2g\in H$。したがって、$2G=\{2g\;|\;g\in G\}\subset H$。p.64 定理2.10.2 準同型定理(部分群の対応)より、$H$は指数$2$の$G/2G$の部分群と1対1対応する。$G=\mathbb{Z}/45\mathbb{Z}\times\mathbb{Z}/24\mathbb{Z}\times\mathbb{Z}/14\mathbb{Z}$より$2G=\mathbb{Z}/45\mathbb{Z}\times2\mathbb{Z}/24\mathbb{Z}\times2\mathbb{Z}/14\mathbb{Z}$なので($\because2$倍写像は$\mathbb{Z}/45\mathbb{Z}$で全単射)、
$$G/2G\cong(\mathbb{Z}/45\mathbb{Z}\times\mathbb{Z}/24\mathbb{Z}\times\mathbb{Z}/14\mathbb{Z})/(\mathbb{Z}/45\mathbb{Z}\times2\mathbb{Z}/24\mathbb{Z}\times2\mathbb{Z}/14\mathbb{Z})\\
=(\mathbb{Z}/45\mathbb{Z})/(\mathbb{Z}/45\mathbb{Z})\times(\mathbb{Z}/24\mathbb{Z})/(2\mathbb{Z}/24\mathbb{Z})\times(\mathbb{Z}/14\mathbb{Z})/(2\mathbb{Z}/14\mathbb{Z})\quad(\because補題1)\\
\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z} \quad(\because p.66\;命題2.10.4\;第三同型定理)
$$
p.64 定理2.10.2 準同型定理(部分群の対応)より$H$は$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の指数$2$の部分群と1対1対応する。$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数は$4$なので指数$2$の部分群は位数$2$の部分群と同じことである。位数$2$の部分群は単位元以外に$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数$2$の元を1つだけ持つ。逆に$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の元を$1$つ定めると位数$2$の部分群を生成する。つまり位数$2$の元と位数$2$の部分群は1対1である。$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の位数$2$の元は$3$つあるので位数$2$の部分群も$3$つである。これが$H$と1対1対応するので$G$の指数$2$の部分群$H$の数は$3$となる。

#### 2.10.7

p.67 例2.10.6より巡回群の部分群は巡回群なので各元が生成する群を確認すれば良い。

1. 以下の6個である。
    * $\langle\bar{0}\rangle=\{\bar{0}\}$
    * $\langle\bar{1}\rangle=\langle\bar{5}\rangle=\langle\bar{7}\rangle=\langle\bar{11}\rangle=\mathbb{Z}/12\mathbb{Z}$
    * $\langle\bar{2}\rangle=\langle\bar{10}\rangle=\{\bar{0},\bar{2},\bar{4},\bar{6},\bar{8},\bar{10}\}$
    * $\langle\bar{3}\rangle=\langle\bar{9}\rangle=\{\bar{0},\bar{3},\bar{6},\bar{9}\}$
    * $\langle\bar{4}\rangle=\langle\bar{8}\rangle=\{\bar{0},\bar{4},\bar{8}\}$
    * $\langle\bar{6}\rangle=\{\bar{0},\bar{6}\}$
2. 以下の6個である。
    * $\langle\bar{0}\rangle=\{\bar{0}\}$
    * $\langle\bar{1}\rangle=\langle\bar{5}\rangle=\langle\bar{7}\rangle=\langle\bar{11}\rangle=\langle\bar{13}\rangle=\langle\bar{17}\rangle=\mathbb{Z}/18\mathbb{Z}$
    * $\langle\bar{2}\rangle=\langle\bar{4}\rangle=\langle\bar{8}\rangle=\langle\bar{14}\rangle=\langle\bar{16}\rangle=\{\bar{0},\bar{2},\bar{4},\bar{6},\bar{8},\bar{10},\bar{12},\bar{14},\bar{16}\}$
    * $\langle\bar{3}\rangle=\langle\bar{15}\rangle=\{\bar{0},\bar{3},\bar{6},\bar{9},\bar{12},\bar{15}\}$
    * $\langle\bar{6}\rangle=\langle\bar{12}\rangle=\{\bar{0},\bar{6},\bar{12}\}$
    * $\langle\bar{9}\rangle=\{\bar{0},\bar{9}\}$

※p.67 例2.10.6より$\mathbb{Z}/n\mathbb{Z}$の部分群は$n$の約数と1対1対応する。
従って$n=\Pi_{i=1}^N p_i^{n_i}$と素因数分解できていたとすると部分群の数は$\Pi_{i=1}^N (n_i+1)$

#### 2.10.8

$\mathrm{ord}(G)=6$

1. 背理法で証明する。$G$の位数が$6$なので、p.53 系2.6.21(2)より$G$の元の位数は$6$の約数$1,2,3,6$のいずれかである。まず位数$3$の元が存在しないと仮定する。位数$1$の元は単位元のみなので、位数$2$か位数$6$の元が存在する。
位数$6$の元が存在しない仮定すると、単位元以外は全て位数$2$の元である。このとき$\forall g\in G$について$g^2=1$となるため(※単位元もこの条件を満たす)、演習問題2.4.8から$G$は可換群となる。可換群の任意の部分群は正規部分群である。$G$の単位元以外の元を$g$とすると、$g^2=1_G$なので$H=\{1_G,g\}$は$G$の正規部分群となる。従って、$G/H$は剰余群で$|G/H|=|G|/|H|=3$なので$G/H$の単位元以外の元の位数は$3$。$G$の$H$に含まれない元を$g^\prime$とすると$g^\prime$の位数は2で$H$以外の剰余類$g^\prime H$に属する。$g^\prime H$の位数は$3$なので$(g^\prime H)^3=g^{\prime3}H=g^\prime H(\because g^{prime2}=1_G)=H$。これは$g^\prime\notin H$に矛盾する。従って、位数$6$の元が存在する。
位数$6$の元を$g$とおくと$g^6=(g^2)^3=1_G$。p.39 命題2.4.18より$g^2$の位数は$3$の約数となり$1$または$3$である。$g^2$の位数が$1$とすると$g^2=1_G$となって$g$の位数が$6$であることに矛盾するため$g^2$の位数は$3$。これは位数$3$の元が存在しないという仮定に矛盾する。従って位数$3$の元が存在する。
2. $x\in G$が位数$3$の元なので$H=\langle x\rangle$は$\{1_G,x,x^2\}$からなる位数$3$の群である。なぜなら$x$の位数は$3$なので$x\ne1_G$かつ$x^2\ne1_G$。$x=x^2$と仮定すると$x^{-1}$を両辺にかけることで$1_G=x$となり$x$の位数が$3$であることに矛盾するため$x\ne x^2$。従って、$1_G,x,x^2$は相異なる元だからである。p.53 定理2.6.20 ラグランジュの定理より$|G/H|=|G|/|H|=2$。$G$の$H$に含まれない元を$y$とすると$H$ではない方の剰余類は$yH=\{y,yx,yx^2\}$となる。ここで$y^2$を考えると$y^2\notin yH$である。なぜなら、$y^2=y$とすると$y=1_G$、$y^2=yx$とすると$y=x$、$y^2=y^2x$とすると$1_G=x$となりいずれも矛盾となるからである。従って$y^2\in H$。このとき、$y^2=1_G$、$y^2=x$、$y^2=x^2$の$3$通りの可能性があるが以下のようにいずれの場合も位数$2$の元が存在する。
        1. $y^2=1$の場合、$y$は単位元ではないので$y$の位数が$2$となる。
    2. $y^2=x$の場合、$yH=\{y,y^3,y^5\}$となる。$G$の位数は$6$なので元の位数は$6$の約数。従って$G$の任意の元を$6$乗すると必ず$1_G$となる。よって、$(y^3)^2=y^6=1_G$となるため$y^3$の位数が$2$となる。
    3. $y^2=x^2$の場合、$yH\ni yx^2=y^3$で、$(y^3)^2=y^6=1_G$となるため$y^3$の位数が$2$となる。
3. 1.2.より$G$には位数$2$の元と位数$3$の元が存在する。位数$2$の元を$g_2$、位数$3$の元を$g_3$とすると、p.32命題2.3.13(1)より$S=\{1_G,g_2,g_3,g_3^2\}\subset\langle g_2,g_3\rangle\subset G$。$(g_2g_3)^i=g_2^i g_3^i=1_G$を考えると$g_2g_3\in\langle g_2,g_3\rangle$の位数は$6$なので$g_2g_3\notin S$。同様に$(g_2g_3^2)^i=g_2^i g_3^{2i}=1_G$を考えると、$g_2g_3^2\in\langle g_2,g_3\rangle$の位数は$6$なので$g_2g_3^2\notin S$。また$g_2g_3\ne g_2g_3^2$なので($\because$等しい場合$g_3$が単位元になって矛盾)、$S\cup\{g_2g_3,g_2g_3^2\}\subset\langle g_2,g_3\rangle\subset G$で、$|S\cup\{g_2g_3,g_2g_3^2\}|=6=|G|$なので$S\cup\{g_2g_3,g_2g_3^2\}=G$である。このとき$G=\langle g_2,g_3\rangle\cong\langle g_2\rangle\times\langle g_3\rangle\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}\cong\mathbb{Z}/6\mathbb{Z}$である。
4. 1.2.より$G$には位数$2$の元と位数$3$の元が存在する。位数$2$の元を$g_2$、位数$3$の元を$g_3$とすると、p.32命題2.3.13(1)より$S=\{1_G,g_2,g_3,g_3^2\}\subset\langle g_2,g_3\rangle\subset G$。ここで$g_2g_3=g_3g_2$とすると3.と同じ議論が成立し$G$が可換群となるため、$g_2g_3\ne g_3g_2$。ここで$g_2g_3\notin S$である。なぜなら$g_2g_3=1_G$とすると両辺に左から$g_2$をかけ$g_3=g_2$となり矛盾。$g_2g_3=g_2$とすると両辺に左から$g_2$をかけ$g_3=1_G$となり矛盾。$g_2g_3=g_3$とすると、両辺に右から$g_3^2$をかけ$g_2=1_G$となり矛盾。$g_2g_3=g_3^2$とすると、両辺に右から$g_3^2$をかけると$g_2=g_3$となり矛盾。従って$g_2g_3\notin S$である。同様に$g_3g_2\notin S$。$S\cup\{g_2g_3,g_3g_2\}\subset\langle g_2,g_3 \rangle\subset G$で$|S\cup\{g_2g_3,g_3g_2\}|=6$なので$G=S\cup\{g_2g_3,g_3g_2\}$。
位数が$1$となる元は単位元だけなので、$g_2g_3$の位数は$2,3,6$のいずれかである。
$g_2g_3$の位数が$3$であると仮定する。このとき$(g_2g_3)^3=1_G$となるが、$g_2^{-1}$を左から$g_2$を右から両辺にかけることで$(g_3g_2)^3=1_G$となり$g_3g_2$は単位元ではないため$g_3g_2$の位数も$3$となる。$g_2g_3,g_3g_2\notin S$で位数$3$の元であることから$(g_2g_3)^2=g_3g_2$であり、また$(g_2g_3)^2=(g_2g_3)^{-1}=g_3^{-1}g_2^{-1}$となる。よって$g_3g_2=g_3^{-1}g_2^{-1}$となるが、左から$g_3$、右から$g_2$をかけることで$g_3^2=1_G$となり矛盾する。よって$g_2g_3$の位数は$3$ではない。
$g_2g_3$の位数が$6$であると仮定する。このとき$|\langle g_2g_3\rangle|=6$なので$G$と一致するはずである。以下の表から$g_3g_2$も位数$6$となり、また$(g_2g_3)^5=(g_2g_3)^{-1}=g_3^{-1}g_2^{-1}=g_3g_2$となるが、左から$g_3$、右から$g_2$をかけることで$1_G=g_3^2$となり矛盾する。よって$g_2g_3$の位数は$6$ではない。
$g_3g_2$についても同様なので$g_2g_3,g_3g_2$の位数は$2$である。従って、$G$において$g_2,g_2g_3,g_3g_2$の$3$つの元が位数$2$となる。
$g_2,g_2g_3,g_3g_2$の位数は$2$なので、$g_2^{-1}=g_2,(g_2g_3)^{-1}=g_2g_3,(g_3g_2)^{-1}=g_3g_2$である。$g_2=(g_3g_2)(g_2g_3)(g_3g_2),g_2=(g_2g_3)(g_3g_2)(g_2g_3)$で、それぞれ左右から$g_3g_2$、$g_2g_3$をかけることで$(g_3g_2)g_2(g_3g_2)=g_2g_3,(g_2g_3)g_2(g_2g_3)=g_3g_2$。また$g_2g_3=g_2(g_3g_2)g_2,g_3g_2=g_2(g_2g_3)g_2$となるのですべて互いに共役となる。

| | $1_G$ | $g_2g_3$ | $(g_2g_3)^2$ | $(g_2g_3)^3$ | $(g_2g_3)^4$ | $(g_2g_3)^5$ |
|-|-|-|-|-|-|-|
|位数|1|6|3|2|3|6|

5. $x_1=g_2,x_2=g_2g_3,x_3=g_3g_2$とすると以下の表となる。$x_j x_i x_j^{-1}$で$i=j$なら$x_i$のまま、$i\ne j$なら$k\ne i, k\ne j$である$x_k$になるので$x_1,x_2,x_3$をどのように入れ替えても$x_1,x_2,x_3$の行は変わらず、それ以外($1_G,g_3,g_3^2$)は行の入れ替えになるだけである。どの行も$x_1,x_2,x_3$の並び替えなので$\rho(g)\in\mathfrak{S}_3$である。$\rho:G\rightarrow\mathfrak{S}_3$を考えると全射で$\mathrm{Ker}(\phi)=\{1_G\}$である。また$\rho(gg^\prime)(i)=(gg^\prime)x_i(gg\prime)^{-1}=g(g^\prime x_i g^{\prime-1})g^{-1}=g x_{\rho(g^\prime)(i)} g^{-1}=\rho(g)(\rho(g^\prime)(i))=\rho(g)\circ\rho(g^\prime)(i)$となるので$\rho$は準同型写像であるから準同型定理(p.63 定理2.10.1)より$G\cong\mathfrak{S}_3$である。

|g|$gx_1g^{-1}:\rho(g)(1)$|$gx_2g^{-1}:\rho(g)(2)$|$gx_3g^{-1}:\rho(g)(3)$|
|-|-|-|-|
|$x_1=g_2$|$x_1:1$|$x_3:3$|$x_2:2$|
|$x_2=g_2g_3$|$x_3:3$|$x_2:2$|$x_1:1$|
|$x_3=g_3g_2$|$x_2:2$|$x_1:1$|$x_3:3$|
|$1_G$|$x_1:1$|$x_2:2$|$x_3:3$|
|$g_3$|$x_2:2$|$x_3:3$|$x_1:1$|
|$g_3^2$|$x_3:3$|$x_1:1$|$x_2:2$|
