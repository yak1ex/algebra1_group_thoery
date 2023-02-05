# 代数学1 群論入門

## 2章の演習問題

### 2.10 準同型定理

#### 2.10.1

$G$は可換群なのでその部分群は常に正規部分群である。まず、$H_1,H_2$が$G$の(正規)部分群であることを確かめておく。

$1_\mathbb{C}\in H_1$、$z\in H_1$として$z\ne0$なので$|z^{-1}|=|\frac{1}{z}|=\frac{1}{|z|}=1$なので$z^{-1}\in H_1$、$z_1,z_2\in H_1$として、$|z_1 z_2|=|z_1||z_2|=1$なので$z_1 z_2\in H_1$。よって、$H_1$は$G$の(正規)部分群となる。

$1_\mathbb{C}\in H_2$、$z \in H_2$として$z\ne0$なので$z^{-1}=\frac{1}{z}\gt0$。$z_1,z_2\in H_2$として、$z_1 z_2\gt0$なので$z_1 z_2\in H_2$。よって、$H_2$は$G$の(正規)部分群となる。

$\phi:G\ni z\mapsto |z|\in H_2$とする。このとき$\phi(z_1 z_2)=|z_1 z_2|=|z_1||z_2|=\phi(z_1)\phi(z_2)$なので$\phi$は準同型であり、また明らかに全射である。また、$\mathrm{Ker}(\phi)=H_1$なので準同型定理(p.63 定理2.10.1)より$G/H_1\cong H_2$。

$\psi:G\ni z\mapsto \frac{z}{|z|}\in H_1$とする。このとき$\psi(z_1 z_2)=\frac{z_1 z_2}{|z_1 z_2|}=\frac{z_1}{|z_1|}\frac{z_2}{|z_2|}=\psi(z_1)\psi(z_2)$なので$\psi$は準同型であり、また明らかに全射である。また、$\mathrm{Ker}(\psi)=H_2$なので($\because \frac{z}{|z|}=1\Rightarrow z=|z|\Rightarrow z\in H_2$)準同型定理(p.63 定理2.10.1)より$G/H_2\cong H_1$。

#### 2.10.2

$\mathbb{R}$は可換群なので$\mathbb{Z}$はその正規部分群となる。

$\phi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$を自然な写像とする(※)と$\mathrm{Ker}(\phi)=\mathbb{Z}$である。このとき$\psi(x)=\phi(\frac{x}{a})$とすると、$\psi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$で$\psi(x_1+x_2)=\phi(\frac{x_1+x_2}{a})=\{\frac{x_1+x_2}{a}\}=\{\frac{x_1}{a}\}+\{\frac{x_2}{a}\}$(※ここでの加算は$\mathbb{R}/\mathbb{Z}$のものである)$=\phi(\frac{x_1}{a})+\phi(\frac{x_2}{a})=\psi(x_1)+\psi(x_2)$となり、$\psi$は準同型でありまた、明らかに全射である。$\mathrm{Ker}(\psi)=a\mathbb{Z}$なので、準同型定理(p.63 定理2.10.1)より、$\mathbb{R}/a\mathbb{Z}\cong\mathbb{R}/\mathbb{Z}$である。

※$\mathbb{R}/\mathbb{Z}$とは実数の小数展開で整数部の差異を無視して小数部で類にまとめるということを意味する。$x\in\mathbb{R}$に対して$x$の小数部を$\{x\}=x-\lfloor x\rfloor$と表記することにすると$\phi:\mathbb{R}\ni x\mapsto \{x\}+\mathbb{Z}\in\mathbb{R}/\mathbb{Z}$になる。

#### 2.10.3

$G\le\mathrm{GL}_2(\mathbb{R}),G:$下三角行列、$H\le G$、$H$の対角成分が等しい、$G/H\cong\mathbb{R}^\times$を準同型定理を使って証明

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
