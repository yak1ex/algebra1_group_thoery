# 代数学1 群論入門

## 2.10 準同型定理

### メモ

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

$G\triangleright H$なので$G/H$は剰余群となる。$\phi_1:G_1\ni g_1\mapsto g_1 H_1\in G_1/H_1, \phi_2:G_2\ni g_2\mapsto g_2 H_2\in G_2/H_2$はそれぞれ自然な写像でありp.59 命題2.8.13より全射準同型写像、また$\mathrm{Ker}(\phi_1)=H_1$かつ$\mathrm{Ker}(\phi_2)=H_2$である。よって、$\phi:G=G_1\times G_2\ni (g_1,g_2)\mapsto (\phi_1(g_1),\phi_2(g_2))=(g_1 H_1, g_2 H_2)\in G_1/H_1\times G_2/H_2$は(成分ごとに考えれば明らかにwell-definedな)1全射準同型写像となり、$\mathrm{Ker}(\phi)=H_1\times H_2$である。よって、準同型定理(p.63 定理2.10.1)より$G/H=G/(H_1\times H_2)\cong G_1/H_1\times G_2/H_2$である。

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

$G:$可換群(演算は$+$)、$n\gt0\in\mathbb{Z},nG=\{nx\mid x\in G\}$、$H$が指数$n$の部分群$\Rightarrow nG\subset H$を証明

#### 2.10.5

$G=\mathbb{Z}^2$

1.$G$の指数$2$の部分群の数を求めよ
2.$G$の指数$13$の部分群の数を求めよ 

#### 2.10.6

$G=\mathbb{Z}/45\mathbb{Z}\times\mathbb{Z}/24\mathbb{Z}\times\mathbb{Z}/14\mathbb{Z}$の指数$2$の部分群の数を求めよ

#### 2.10.7

1.$\mathbb{Z}/12\mathbb{Z}$の部分群をすべて求めよ
2.$\mathbb{Z}/18\mathbb{Z}$の部分群をすべて求めよ

#### 2.10.8

$\mathrm{ord}(G)=6$

1. prove $\exists g \in G, \mathrm{ord}(g)=3$, see 2.4.8
2. $x\in G, \mathrm{ord}(x)=3, H=\langle x\rangle$, prove $\exists g \in G, \mathrm{ord}(g)=2$ by considering $G/H$
3. prove $G:$可換$\Rightarrow G\cong\mathbb{Z}/6\mathbb{Z}$
4. $G:$非可換$\Rightarrow K=\{g \in G\mid\mathrm{ord}(g)=2\},|K|=3,\forall x_1,x_2\in K, \exists g\in G, g x_1 g^{-1}=x_2$
5. $K=\{x_1,x_2,x_3\},g\in G,gx_ig^{-1}=x_{\rho(g)(i)}\Rightarrow\rho(g)\in\mathfrak{S}_3,\rho:G\cong\mathfrak{S}_3$
