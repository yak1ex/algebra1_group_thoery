# 代数学1 群論入門

## 2.10 準同型定理

### メモ

#### 同型の意味

ある種抽象的な準同型から間接的に定義されているところが分かりづらそう。

p.40 定義2.5.1(2)より $\phi$ が準同型で逆写像を持ち、逆写像も準同型であるとき、 $\phi$ を同型(写像)であるという。
p.41 命題2.5.2は全単射準同型ならば同型であると言っている。
その逆、同型であれば全単射準同型であることは、p.17 演習問題1.1.5より「 $\phi$ が逆写像を持っているので全単射である」ことから言える。

ここで群 $G,G^\prime$ を考える。 $G$ の元は $x$ のように $\prime$ なしで、 $G^\prime$ の元は $x^\prime$ のように $\prime$ 付きで表記する。また $G$ の演算は $\circ$ で $G^\prime$ の演算は $+$ で表記する。
$x_i\circ x_j=x_{k_{i,j}}$ とするとこの $k_{i,j}$ が演算表そのものである。

※添字だけで表記すると以下のようなイメージである。
| |1|2|...|n|
|-|-|-|-|-|
|1|$k_{1,1}$|$k_{1,2}$|...|$k_{1,n}$|
|2|$k_{2,1}$|$k_{2,2}$|...|$k_{2,n}$|
|...|||||
|n|$k_{n,n}$|$k_{n,2}$|...|$k_{n,n}$|

$\phi$ は全単射なので $x_i$ と $G^\prime$ の要素が1対1に対応する。適当に添字をつけることで $x_i$ と $x^\prime_i$ とが対応するようにできる。すなわち簡単のため $\phi(x_i)=x^\prime_i$ とするということである。
ここで $x^\prime_{k_{i,j}}=\phi(x_{k_{i,j}})=\phi(x_i\circ x_j)=\phi(x_i)+\phi(x_j)=x^\prime_i+x^\prime_j$ となる。すなわち、 $x^\prime_i+x^\prime_j=x^\prime_{k_{i,j}}$ 。これは $G$ における演算表 $k_{i,j}$ がそのまま $G^\prime$ における演算表 $k_{i,j}$ になるということである。すなわち同型写像で対応する群(＝同型な群)の間では演算表が一致する。群は集合とその要素間の演算で定まるため、これらはラベル、表記の違いを除いて群としては同じ、区別できないということである。従って、群論的な性質は同じように成立することになる。あくまでも群論的な性質であって群としての演算以外の演算(例えば加法群のときの乗法)はそもそも有り無しから異なるかもしれないし可逆であるかどうかも異なるかもしれない、もちろん一致しているかもしれない。

#### 環の同型

環の準同型の定義はp.46 定義2.5.23(1)より、 $\phi(x+y)=\phi(x)+\phi(y),\phi(xy)=\phi(x)\phi(y),\phi(1_G)=1_{G^\prime}$ (記法は「同型の意味」の議論に合わせた)。「同型の意味」の議論において演算(表)が一致することは $\phi(xy)=\phi(x)\phi(y)$ と全単射写像であることから導出されている。全単射であることは逆写像があることから言っている。

つまり $\phi(1_G)=1_{G^\prime}$ の条件なしに、 $\phi(x+y)=\phi(x)+\phi(y),\phi(xy)=\phi(x)\phi(y),\phi$ が逆写像を持つこと、だけから加法、乗法の両方で演算が保存されることについては言えることになる。しかし、 $\phi(xy)=\phi(x)\phi(y)$ と $\phi$ が逆写像を持つことから、 $x_1$ を $G$ の単位元として $x^\prime_i=\phi(x_i)=\phi(x_i x_1)=\phi(x_i)\phi(x_1)=x^\prime_i x^\prime_1$ かつ $x^\prime_i=\phi(x_i)=\phi(x_1 x_i)=\phi(x_1)\phi(x_i)=x^\prime_1 x^\prime_i$ となるので(p.26 定義2.2.1(4)乗法単位元の定義から) $x^\prime_1$ が $G^\prime$ での(乗法)単位元であることが言える。つまり $\phi(1_G)=\phi(x_1)=x^\prime_1=1_{G^\prime}$ となり、(乗法)単位元が(乗法)単位元に移ることは逆写像があること(全単射であること)という条件があれば不要となる(そちらから導出できることになる)。

↑では任意の $x^\prime_i$ に対して $x^\prime_1$ が単位元の性質を満たすことを示すところで $\phi$ の全射性を(暗黙的に)用いている。一方、 $\phi$ が単射であるだけであれば、

||$1_G$|$a$|
|-|-|-|
|$1_G$|$1_G$|$a$|
|$a$|$a$|$a$|

||$1_{G^\prime}$|$a^\prime$|$b^\prime$|
|-|-|-|-|
|$1_{G^\prime}$|$1_{G^\prime}$|$a^\prime$|$b^\prime$|
|$a^\prime$|$a^\prime$|$a^\prime$|$a^\prime$|
|$b^\prime$|$b^\prime$|$a^\prime$|$b^\prime$|

$\phi(1_G)=b^\prime,\phi(a)=a^\prime$ とすることで

||$\phi(1_G)=b^\prime$|$\phi(a)=a^\prime$|
|-|-|-|
|$\phi(1_G)=b^\prime$|$\phi(1_G)=b^\prime$|$\phi(a)=a^\prime$|
|$\phi(a)=a^\prime$|$\phi(a)=a^\prime$|$\phi(a)=a^\prime$|

となるから、 $\phi(xy)=\phi(x)\phi(y)$ だが $\phi(1_G)\ne 1_{G^\prime}$ な構成を作ることができる。

#### 例題2.10.12 メモ

##### 「 $G/H$ は位数 $2$ の群なので $\mathbb{Z}/2\mathbb{Z}$ と同型である」

p.53 命題2.6.22より $G/H$ は位数 $2$ の巡回群。p.67 例2.10.6より位数 $2$ の巡回群は $\mathbb{Z}/2\mathbb{Z}$ と同型である。

##### 定理2.10.2より、 $H$ は $G/2G$ の指数 $2$ の部分群に対応する

定理2.10.2は同型とまでは言っていないがなぜ指数 $2$ と言えるのか？

###### 初期版

$G$ は有限群である。また $G$ は可換群なので任意の部分群は正規部分群である。
$N\subset K\subset G$ な正規部分群 $K$ を考える。
このときp.65 命題2.10.3 第二同型定理(2)を使うと $K\cap N\triangleleft K$ 、すなわち $N\triangleleft K$ なので $K/N$ は剰余群となる。
p.64 定理2.10.2 準同型定理(部分群の対応)での対応は、 $G\rightarrow G/N$ の自然な写像とその逆写像なので $K$ と $K/N$ が対応することになる。※ここ厳密とは言えないかも
p.53 定理2.6.20 ラグランジュの定理より $G$ における $K$ の指数は $\frac{|G|}{|K|}$ である。
同様に $G/N$ における $K/N$ の指数は $\frac{|G/N|}{|K/N|}=\frac{|G|}{|N|}/\frac{|K|}{|N|}=\frac{|G|}{|K|}$ となる。
すなわち、定理2.10.2によって対応する部分群の指数は等しい。

###### 改訂版( $G$ に対する有限群かつ可換群であるという前提を外す)

$N\subset K\subset G$ な正規部分群 $K$ を考える。 $N\triangleleft G$ なので定義より $\forall g\in G$ について $gNg^{-1}\subset N$ であるが、 $K\subset G$ なのでこれは $\forall k\in K$ についても成立する。よって $N\triangleleft K$ なので $K/N$ は剰余群となる。
p.64 定理2.10.2 準同型定理(部分群の対応)での対応は、 $G\rightarrow G/N$ の自然な写像とその逆写像なので $K$ と $K/N$ が対応することになる。
p.66 命題2.10.4 第三同型定理より $(G/N)/(K/N)\cong G/K$ なので、 $G$ における $K$ の指数、すなわち $G/K$ の位数は、 $G/N$ における $K/N$ の指数、すなわち $(G/N)/(K/N)$ の位数に等しい。
すなわち、定理2.10.2によって対応する部分群の指数は等しい。

###### 改訂版2( $K$ に対する正規性の前提を外す)

$N\subset K\subset G$ な部分群 $K$ を考える。 $N\triangleleft G$ なので定義より $\forall g\in G$ について $gNg^{-1}\subset N$ であるが、 $K\subset G$ なのでこれは $\forall k\in K$ についても成立する。よって $N\triangleleft K$ なので $K/N$ は剰余群となる。
p.64 定理2.10.2 準同型定理(部分群の対応)での対応は、 $G\rightarrow G/N$ の自然な写像 $\pi$ とその逆写像 $\pi^{-1}$ なので $K$ と $K/N$ が対応することになる。

ここで、 $G/K$ の元である $gK$ と $(G/N)/(K/N)$ の元である $(gN)\lbrace kN|k\in K\rbrace$ が1対1対応であることが言えればそれぞれの位数が等しい、つまり $G$ における $K$ の指数と $G/N$ における $K/N$ の指数が等しいことが言える。
$\phi:(G/N)/(K/N)\ni(gN)\lbrace kN|k\in K\rbrace\mapsto gK\in G/K$ と定めたとする。
$(gN)\lbrace kN|k\in K\rbrace$ の任意の元の任意の元は $k\in K,n_1,n_2\in N$ を用いて $gn_1kn_2$ と表せる。
このとき $gn_1kn_2K=gn_1kK(\because n_2\in N\subset K)=gn_1K=gK(\because n_1\in N\subset K)$ となるので $\phi$ はwell-definedである。
$g$ は任意にとれるので $\phi$ の全射性は明らかである。 $g^\prime K=gK$ になるとき $k^\prime\in K$ を用いて $g^\prime=gk^\prime$ と表せる。このとき

```math
\begin{align}
(g^\prime N)\lbrace kN|k\in K\rbrace&=(gk^\prime N)\lbrace kN|k\in K\rbrace =\lbrace gk^\prime NkN|k\in K\rbrace \\
&=\lbrace gNk^\prime kN|k\in K\rbrace\quad(\because k\prime \in K\triangleright N\Rightarrow k^\prime N=Nk^\prime)\\
&=\lbrace gNkN|k\in K\rbrace =(gN)\lbrace kN|k\in K\rbrace 
\end{align}
```

となるので $\phi$ は単射である。よって $\phi$ は1対1対応となる。　　　　　　　　　

以上により、 $G$ における $K$ の指数と $G/N$ における $K/N$ の指数は等しい。
すなわち、定理2.10.2によって対応する部分群の指数は等しい。

※ $\phi$ は単射性を示すのに多少楽かもと思って自然な方向と逆向きに定義したが、単射であることを示すために $f(a)=f(b)\Rightarrow a=b$ を言い、well-definedであることを示すために $a=b\Rightarrow f(a)=f(b)$ を言う必要があるのでどちらで定義しても大して変わらなかった。

##### 「 $G\cong\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$ である。(略) $\mathbb{Z}/3\mathbb{Z}$ において2倍写像は全単射である。よって、 $G/2G\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ である」

##### 補題1 群 $G=G_1\times G_2$ で群 $H=H_1\times H_2$ かつ $G_1\triangleright H_1$ かつ $G_2\triangleright H_2$ とすると、 $G\triangleright H$ かつ $G/H=G_1/H_1\times G_2/H_2$

$\forall g\in G=G_1\times G_2$ は $g_1\in G_1, g_2\in G_2$ によって $g=(g_1,g_2)$ と表せる。また $\forall h \in H=H_1\times H_2$ は $h_1\in H_1, h_2\in H_2$ によって $h=(h_1,h_2)$ と表せる。このとき、正規部分群の定義から $g_1 h_1 g_1^{-1} \in H_1$ かつ $g_2 h_2 g_2^{-1} \in H_2$ である。従って、 $ghg^{-1}=(g_1,g_2)(h_1,h_2)(g_1,g_2)^{-1}=(g_1,g_2)(h_1,h_2)(g_1^{-1},g_2^{-1})=(g_1 h_1 g_1^{-1},g_2 h_2 g_2^{-1})\in H_1\times H_2=H$ となるため、正規部分群の定義から $G\triangleright H$ である。

$G\triangleright H$ なので $G/H$ は剰余群となる。 $\phi_1:G_1\ni g_1\mapsto g_1 H_1\in G_1/H_1, \phi_2:G_2\ni g_2\mapsto g_2 H_2\in G_2/H_2$ はそれぞれ自然な写像でありp.59 命題2.8.13より全射準同型写像、また $\mathrm{Ker}(\phi_1)=H_1$ かつ $\mathrm{Ker}(\phi_2)=H_2$ である。よって、 $\phi:G=G_1\times G_2\ni (g_1,g_2)\mapsto (\phi_1(g_1),\phi_2(g_2))=(g_1 H_1, g_2 H_2)\in G_1/H_1\times G_2/H_2$ は(成分ごとに考えれば明らかにwell-definedな)全射準同型写像となり、 $\mathrm{Ker}(\phi)=H_1\times H_2$ である。よって、準同型定理(p.63 定理2.10.1)より $G/H=G/(H_1\times H_2)\cong G_1/H_1\times G_2/H_2$ である。

##### 説明

補題1を再帰的に適用すれば3つ以上の群の直積についても同様のことが言える。

「 $\mathbb{Z}/3\mathbb{Z}$ において2倍写像は全単射である」ため、 $2(\mathbb{Z}/3\mathbb{Z})\cong\mathbb{Z}/3\mathbb{Z}$ である。なぜなら、 $\phi(g)=2g$ とすると可換群上なので $\phi(g+h)=2(g+h)=2g+2h=\phi(g)+\phi(h)$ となり2倍写像は準同型、つまり全単射準同型なので同型だからである。

よって $G\cong\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$ であれば、 $2G\cong2(\mathbb{Z}/8\mathbb{Z})\times2(\mathbb{Z}/8\mathbb{Z})\times2(\mathbb{Z}/3\mathbb{Z})\cong2\mathbb{Z}/8\mathbb{Z}\times2\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$ である。

$2G$ は明らかに部分群で、 $G$ は可換群だから正規部分群となるため

```math
\begin{align}
G/2G&\cong(\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z}\times2\mathbb{Z}/8\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z})\\
&=(\mathbb{Z}/8\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z})\times(\mathbb{Z}/8\mathbb{Z})/(2\mathbb{Z}/8\mathbb{Z})\times(\mathbb{Z}/3\mathbb{Z})/(\mathbb{Z}/3\mathbb{Z})\quad(\because\text{補題1より})\\
&\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}\times\lbrace0\rbrace \quad(\because\text{p.66 命題2.10.4 第三同型定理より})\\
&\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}
\end{align}
```

### 演習問題

#### 2.10.1

$G$ は可換群なのでその部分群は常に正規部分群である。まず、 $H_1,H_2$ が $G$ の(正規)部分群であることを確かめておく。

$1_\mathbb{C}\in H_1$ 、 $z\in H_1$ として $z\ne0$ なので $|z^{-1}|=|\frac{1}{z}|=\frac{1}{|z|}=1$ より $z^{-1}\in H_1$ 、 $z_1,z_2\in H_1$ として、 $|z_1 z_2|=|z_1||z_2|=1$ なので $z_1 z_2\in H_1$ 。よって、 $H_1$ は $G$ の(正規)部分群となる。

$1_\mathbb{C}\in H_2$ 、 $z \in H_2$ として $z\ne0$ なので $z^{-1}=\frac{1}{z}\gt0$ 。 $z_1,z_2\in H_2$ として、 $z_1 z_2\gt0$ なので $z_1 z_2\in H_2$ 。よって、 $H_2$ は $G$ の(正規)部分群となる。

$\phi:G\ni z\mapsto |z|\in H_2$ とする。このとき $\phi(z_1 z_2)=|z_1 z_2|=|z_1||z_2|=\phi(z_1)\phi(z_2)$ なので $\phi$ は準同型写像であり、また明らかに全射である。また、 $\mathrm{Ker}(\phi)=H_1$ なので準同型定理(p.63 定理2.10.1)より $G/H_1\cong H_2$ 。

$\psi:G\ni z\mapsto \frac{z}{|z|}\in H_1$ とする。このとき $\psi(z_1 z_2)=\frac{z_1 z_2}{|z_1 z_2|}=\frac{z_1}{|z_1|}\frac{z_2}{|z_2|}=\psi(z_1)\psi(z_2)$ なので $\psi$ は準同型写像であり、また明らかに全射である。また、 $\mathrm{Ker}(\psi)=H_2$ なので( $\because \frac{z}{|z|}=1\Rightarrow z=|z|\Rightarrow z\in H_2$ )準同型定理(p.63 定理2.10.1)より $G/H_2\cong H_1$ 。

##### ※ $G/H_1\cong H_2\land G/H_2\cong H_1$ が成立する条件は？ 命題2.9.2は十分条件になりそうだが……

$G=H_1\times H_2$ とすると、p.60 命題2.9.1(2)より $H_1,H_2\triangleleft G$ である。このとき、 $\phi:G\ni g=(h_1,h_2)\mapsto(h_1,1_G)\in H_1$ とすると、 $\phi$ は明らかに全射準同型写像で、 $\mathrm{Ker}(\phi)=H_2$ だから準同型定理(p.63 定理2.10.1)より、 $G/H_2=G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=H_1$ となり、また $H_1,H_2$ を入れ替えても同様の議論が成立するので $G/H_1\cong H_2$　である。

すなわち、$G=H_1\times H_2\Rightarrow G/H_1\cong H_2\land G/H_2\cong H_1$ である。 ほぼ同様の議論で、$G\triangleright H_1,H_2\land G\cong H_1\times H_2\Rightarrow G/H_1\cong H_2\land G/H_2\cong H_1$ が言える。また、p.60 命題2.9.2より、$H_1,H_2\triangleleft G\land H_1\cap H_2=\lbrace1_G\rbrace\land H_1H_2=G$ であれば $G\cong H_1\times H_2$ となるのでこの場合も条件を満たす(十分条件となる)。演習問題2.10.1の例はこの条件を満たしている( $H_1,H_2\triangleleft G, H_1\cap H_2=\lbrace1\rbrace, H_1H_2=\mathbb{C}^\times$ )。

逆側は、同型による条件が $H_1,H_2$ の間の関係を縛るには緩いので意味のあることを言うのは難しい。

例えば↑の逆が成り立たない例として $G=H\times I\times J, H\cong I\cong J$ のとき、 $G/H\cong I\times J\cong H\times I$ かつ、 $G/(H\times I)\cong J\cong H$ なので $G/H\cong H\times I, G/(H\times I)\cong H$ だが、$H(H\times I)=(H\times\lbrace1_G\rbrace)(H\times I)=H\times I\ne G$ である。

$G$ が有限群で、 $G\triangleright H_1,H_2$ かつ $H_1\cap H_2=\lbrace1_G\rbrace$ という条件のもとでなら、 $G/H_1\cong H_2\land G/H_2\cong H_1\Leftrightarrow G\cong H_1\times H_2$ は言える。左向きは↑で言っているので、右向きを示す。 $\phi: G\ni g\mapsto(gH_2,gH_1)\in G/H_2\times G/H_1\cong H_1\times H_2$ とすると、p.59 命題2.8.13より成分ごとに準同型写像であることが言えるから $\phi$ 自体も準同型写像である。 $g \in \mathrm{Ker}(\phi)\Leftrightarrow g\in H_2\land g\in H_1\Leftrightarrow g\in H_1\cap H_2$ なので $\mathrm{Ker}(\phi)=H_1\cap H_2=\lbrace1_G\rbrace$ である。従って準同型定理(p.63 定理2.10.1)より、 $G\cong G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)\subset G/H_2\times G/H_1\cong H_1\times H_2$ だが、p.53 定理2.6.20(ラグランジュの定理)より $|G|=|G/H_1||H_1|=|H_2||H_1|=|H_1\times H_2|$ なので $G\cong\mathrm{Im}(\phi)$ となるためには $\mathrm{Im}(\phi)=G/H_2\times G/H_1\cong H_1\times H_2$ でなければならない。すなわち $G\cong H_1\times H_2$ である。これで右向きが示せた。

#### 2.10.2

##### 自前版

$\mathbb{R}$ は可換群なので $\mathbb{Z}$ はその正規部分群となる。

$\phi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$ を自然な写像とする(※)と $\mathrm{Ker}(\phi)=\mathbb{Z}$ である。このとき $\psi(x)=\phi(\frac{x}{a})$ とすると、 $\psi:\mathbb{R}\rightarrow\mathbb{R}/\mathbb{Z}$ で $\psi(x_1+x_2)=\phi(\frac{x_1+x_2}{a})=\lbrace\frac{x_1+x_2}{a}\rbrace+\mathbb{Z}=(\lbrace\frac{x_1}{a}\rbrace+\mathbb{Z})+(\lbrace\frac{x_2}{a}\rbrace+\mathbb{Z})$ (※ここでの加算は $\mathbb{R}/\mathbb{Z}$ のものである) $=\phi(\frac{x_1}{a})+\phi(\frac{x_2}{a})=\psi(x_1)+\psi(x_2)$ となり、 $\psi$ は準同型写像でありまた、明らかに全射である。 $\mathrm{Ker}(\psi)=a\mathbb{Z}$ なので、準同型定理(p.63 定理2.10.1)より、 $\mathbb{R}/a\mathbb{Z}\cong\mathbb{R}/\mathbb{Z}$ である。

※ $\mathbb{R}/\mathbb{Z}$ とは実数の小数展開で整数部の差異を無視して小数部で類にまとめるということを意味する。 $x\in\mathbb{R}$ に対して $x$ の小数部を $\lbrace x\rbrace =x-\lfloor x\rfloor$ と表記することにすると $\phi:\mathbb{R}\ni x\mapsto\lbrace x\rbrace+\mathbb{Z}\in\mathbb{R}/\mathbb{Z}$ になる。↓と同様に単純に準同型であることを使ったほうが明快か。

##### ヒントに基づく別版

$\mathbb{R}$ は可換群なので $a\mathbb{Z}$ はその正規部分群となる(単位元 $0$ を含み、 $\forall n,m\in\mathbb{Z}, na+ma=(n+m)a$ で演算について閉じており、 $\forall n\in\mathbb{Z}, na+(-n)a=0$ で逆元について閉じているため $a\mathbb{Z}$ が $\mathbb{R}$ の部分群となる)。

$\phi:\mathbb{R}\rightarrow\mathbb{R}/a\mathbb{Z}$ を自然な写像とするとp.59 命題2.8.13より $\phi$ は全射準同型写像で $\mathrm{Ker}(\phi)=a\mathbb{Z}$ である。このとき $\psi(x)=\phi(ax)$ と定めると、 $\psi:\mathbb{R}\rightarrow\mathbb{R}/a\mathbb{Z}$ で $\psi(x_1+x_2)=\phi(a(x_1+x_2))=\phi(ax_1+ax_2)=\phi(ax_1)+\phi(ax_2)=\psi(x_1)+\psi(x_2)$ となり、 $\psi$ は準同型写像でありまた、明らかに全射である。 $\mathrm{Ker}(\psi)=\mathbb{Z}$ なので、準同型定理(p.63 定理2.10.1)より、 $\mathbb{R}/a\mathbb{Z}\cong\mathbb{R}/\mathbb{Z}$ である。

※全射を言うなら $ax+a\mathbb{Z}$ に対して $\frac{y}{a}$ を入れれば任意の実数 $y$ にできるので、でよい

#### 2.10.3

演習問題2.8.5(1)より $H$ は $G$ の正規部分群である。

$\forall g \in G$ に対して $g\in\mathrm{GL}_2(\mathbb{R})$ が下三角行列であることから

```math
g = \begin{pmatrix}a &0\\
c & d
\end{pmatrix}
```

と表せて、 $g\in\mathrm{GL}_2(\mathbb{R})$ であることから $\det(g)=ad\ne0$ 。すなわち $a\ne0\land d\ne0$ である。従って、 

```math
\phi:G\ni\begin{pmatrix}a &0\\
c & d
\end{pmatrix}\mapsto\frac{a}{d}\in\mathbb{R}^\times
```

と定義することができる。このとき

```math
\phi\left(\begin{pmatrix}a & 0\\
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
\end{pmatrix}\right)
```

なので $\phi$ は準同型写像で、かつ明らかに全射である。また $\mathrm{Ker}(\phi)=H(\because g\in\mathrm{Ker}(\phi)\Leftrightarrow\frac{a}{d}=1\Leftrightarrow a=d\Leftrightarrow g\in H)$ であることから、準同型定理(p.63 定理2.10.1)より、 $G/H\cong\mathbb{R}^\times$ である。

#### 2.10.4

以下、加法での表記を使用する。

$\phi$ を $G\rightarrow G/H$ の自然な写像とする。p.59 命題2.8.13より $\phi$ は全射準同型写像で $\mathrm{Ker}(\phi)=H$ である。また $G/H$ の位数は $n$ なので有限群であり、p.53 系2.6.21(2)から $\forall f\in G/H$ の位数は $n$ の約数となるため $nf=0$ である。
$\forall k\in nG$ は $g\in G$ によって $k=ng$ と表せる。 $\phi(ng)=n\phi(g)=0(\because \phi(g)\in G/H)$ 。これは $ng=k\in\mathrm{Ker}(\phi)$ ということである。すなわち $nG\subset \mathrm{Ker}(\phi)=H$ 。

※ $G/H$ が群であることを使っているので $G$ が可換だから $H$ が正規部分群であることを言っておく必要あり
※一致しない例としては $G=\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ を考えると $2G=\lbrace1_G \rbrace$
※p.68 例題2.10.12で $n=2$ の場合をやっている

#### 2.10.5

$G$ は可換群なので任意の部分群は正規部分群である。

1. $G$ の指数 $2$ の部分群を $H$ とすると $G/H$ は位数 $2$ の部分群となるため $\mathbb{Z}/2\mathbb{Z}$ と同型である。よって、 $g\in G$ とすると $2g\in H$ 。したがって、 $2G=\lbrace2g\hspace{.3em}|\hspace{.3em}g\in G \rbrace \subset H$ 。p.64 定理2.10.2 準同型定理(部分群の対応)より、 $H$ は指数 $2$ の $G/2G$ の部分群と1対1対応する。 $G=\mathbb{Z}\times\mathbb{Z}$ より $2G=2\mathbb{Z}\times2\mathbb{Z}$ なので、補題1より $G/2G\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ 。すなわち $H$ は $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の指数 $2$ の部分群と1対1対応する。 $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数は $4$ なので指数 $2$ の部分群は位数 $2$ の部分群と同じことである。位数 $2$ の部分群は単位元以外に $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数 $2$ の元を1つだけ持つ。逆に $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の元を $1$ つ定めると位数 $2$ の部分群を生成する。つまり位数 $2$ の元と位数 $2$ の部分群は1対1である。 $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数 $2$ の元は $3$ つあるので位数 $2$ の部分群も $3$ つである。これが $H$ と1対1対応するので $G$ の指数 $2$ の部分群 $H$ の数は $3$ となる。


<table>
<caption>$2\mathbb{Z}\times\mathbb{Z}$ ( $(\bar{0},\bar{1})\in\mathbb{Z}/2\mathbb{Z}$ を選んだ時)</caption>
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
<caption>$\mathbb{Z}\times2\mathbb{Z}$ ( $(\bar{1},\bar{0})\in\mathbb{Z}/2\mathbb{Z}$ を選んだ時)</caption>
<tr style="background: #ff80ff"><td>(0,3)</td><td>(1,3)</td><td>(2,3)</td><td>(3,3)</td></tr>
<tr style="background: #80ffff"><td>(0,2)</td><td>(1,2)</td><td>(2,2)</td><td>(3,2)</td></tr>
<tr style="background: #ff80ff"><td>(0,1)</td><td>(1,1)</td><td>(2,1)</td><td>(3,1)</td></tr>
<tr style="background: #80ffff"><td>(0,0)</td><td>(1,0)</td><td>(2,0)</td><td>(3,0)</td></tr>
</table>

<table>
<caption>$(2\mathbb{Z}\times2\mathbb{Z})\cup((1+2\mathbb{Z})\times(1+2\mathbb{Z}))$ ( $(\bar{1},\bar{1})\in\mathbb{Z}/2\mathbb{Z}$ を選んだ時)</caption>
<tr><td style="background: #ff80ff">(0,3)</td><td style="background: #80ffff">(1,3)</td><td style="background: #ff80ff">(2,3)</td><td style="background: #80ffff">(3,3)</td></tr>
<tr><td style="background: #80ffff">(0,2)</td><td style="background: #ff80ff">(1,2)</td><td style="background: #80ffff">(2,2)</td><td style="background: #ff80ff">(3,2)</td></tr>
<tr><td style="background: #ff80ff">(0,1)</td><td style="background: #80ffff">(1,1)</td><td style="background: #ff80ff">(2,1)</td><td style="background: #80ffff">(3,1)</td></tr>
<tr><td style="background: #80ffff">(0,0)</td><td style="background: #ff80ff">(1,0)</td><td style="background: #80ffff">(2,0)</td><td style="background: #ff80ff">(3,0)</td></tr>
</table>

2. $G$ の指数 $13$ の部分群を $H$ とすると $G/H$ は位数 $13$ の部分群となるため $\mathbb{Z}/13\mathbb{Z}$ と同型である。よって、 $g\in G$ とすると $13g\in H$ 。したがって、 $13G=\lbrace13g\hspace{.3em}|\hspace{.3em}g\in G\rbrace\subset H$ 。p.64 定理2.10.2 準同型定理(部分群の対応)より、 $H$ は指数 $13$ の $G/13G$ の部分群と1対1対応する。 $G=\mathbb{Z}\times\mathbb{Z}$ より $13G=13\mathbb{Z}\times13\mathbb{Z}$ なので、補題1より $G/13G\cong\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$ 。すなわち $H$ は $\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$ の指数 $13$ の部分群と1対1対応する。 $\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$ の位数は $169$ なので指数 $13$ の部分群は位数 $13$ の部分群と同じことである。 $13$ は素数なのでp.53 命題2.6.22より位数 $13$ の部分群は単位元以外の元によって生成される巡回群である。 $g=(\bar{a},\bar{b})$ を $\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$ の元とする。 $\bar{a}=0$ とすると、 $\bar{b}\ne\bar{0}$ の位数は $13$ でどの元 $(\bar{a},\bar{b})$ によっても生成される群は等しい。 $\bar{b}=\bar{0}$ の場合も同様に $\bar{a}\ne\bar{0}$ の位数は $13$ でどの元 $(\bar{a},\bar{b})$ によっても生成される群は等しい。 $\bar{a}\ne\bar{0}$ かつ $\bar{b}\ne\bar{0}$ の場合、その元によって生成される群のなかに $\bar{a}=\bar{1}$ となる元が必ず存在し、かつその元自体も(単位元ではないので命題2.6.22より)生成元となる。この生成元について $\bar{b}=\bar{0}$ とすると $\bar{b}\ne\bar{0}$ な元が生成されないので $\bar{b}\ne\bar{0}$ である。同じ生成元からは同じ群が生成され、 $\bar{b}$ が異なれば異なる群が生成されるので $(\bar{1},\bar{b})(\bar{b}\ne\bar{0})$ の取り方だけ異なる群が存在する。以上により、位数 $13$ の $\mathbb{Z}/13\mathbb{Z}\times\mathbb{Z}/13\mathbb{Z}$ の部分群は $\langle(\bar{0},\bar{1})\rangle,\langle(\bar{1},\bar{b})\rangle(\bar{b}\in\mathbb{Z}/13\mathbb{Z})$ の $14$ 通り存在する。これが $H$ と1対1対応するので $G$ の指数 $13$ の部分群 $H$ の数は $14$ である。

※演習問題2.10.4を使えば $13G\subset H$ が言える
※ 単位元以外( $x^2-1$ )で生成されるが、同一の巡回群を生成する元が $x-1$ 通りあるので $(x^2-1)/(x-1)=x+1$

#### 2.10.6

$G$ の指数 $2$ の部分群を $H$ とすると $G/H$ は位数 $2$ の部分群となるため $\mathbb{Z}/2\mathbb{Z}$ と同型である。よって、 $g\in G$ とすると $2g\in H$ 。したがって、 $2G=\lbrace  2g \; | \; g\in G \rbrace \subset H$ 。p.64 定理2.10.2 準同型定理(部分群の対応)より、 $H$ は指数 $2$ の $G/2G$ の部分群と1対1対応する。 $G=\mathbb{Z}/45\mathbb{Z}\times\mathbb{Z}/24\mathbb{Z}\times\mathbb{Z}/14\mathbb{Z}$ より $2G=\mathbb{Z}/45\mathbb{Z}\times2\mathbb{Z}/24\mathbb{Z}\times2\mathbb{Z}/14\mathbb{Z}$ なので( $\because2$ 倍写像は $\mathbb{Z}/45\mathbb{Z}$ で全単射)、

```math
\begin{align}
G/2G&\cong(\mathbb{Z}/45\mathbb{Z}\times\mathbb{Z}/24\mathbb{Z}\times\mathbb{Z}/14\mathbb{Z})/(\mathbb{Z}/45\mathbb{Z}\times2\mathbb{Z}/24\mathbb{Z}\times2\mathbb{Z}/14\mathbb{Z})\\
&=(\mathbb{Z}/45\mathbb{Z})/(\mathbb{Z}/45\mathbb{Z})\times(\mathbb{Z}/24\mathbb{Z})/(2\mathbb{Z}/24\mathbb{Z})\times(\mathbb{Z}/14\mathbb{Z})/(2\mathbb{Z}/14\mathbb{Z})\quad(\because\text{補題1})\\
&\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z} \quad(\because\text{p.66 命題2.10.4 第三同型定理})
\end{align}
```

p.64 定理2.10.2 準同型定理(部分群の対応)より $H$ は $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の指数 $2$ の部分群と1対1対応する。 $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数は $4$ なので指数 $2$ の部分群は位数 $2$ の部分群と同じことである。位数 $2$ の部分群は単位元以外に $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数 $2$ の元を1つだけ持つ。逆に $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の元を $1$ つ定めると位数 $2$ の部分群を生成する。つまり位数 $2$ の元と位数 $2$ の部分群は1対1である。 $\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ の位数 $2$ の元は $3$ つあるので位数 $2$ の部分群も $3$ つである。これが $H$ と1対1対応するので $G$ の指数 $2$ の部分群 $H$ の数は $3$ となる。

#### 2.10.7

p.67 例2.10.6より巡回群の部分群は巡回群なので各元が生成する群を確認すれば良い。

1. 以下の6個である。
    * $\langle\bar{0}\rangle=\lbrace\bar{0}\rbrace$
    * $\langle\bar{1}\rangle=\langle\bar{5}\rangle=\langle\bar{7}\rangle=\langle\bar{11}\rangle=\mathbb{Z}/12\mathbb{Z}$
    * $\langle\bar{2}\rangle=\langle\bar{10}\rangle=\lbrace\bar{0},\bar{2},\bar{4},\bar{6},\bar{8},\bar{10}\rbrace$
    * $\langle\bar{3}\rangle=\langle\bar{9}\rangle=\lbrace\bar{0},\bar{3},\bar{6},\bar{9}\rbrace$
    * $\langle\bar{4}\rangle=\langle\bar{8}\rangle=\lbrace\bar{0},\bar{4},\bar{8}\rbrace$
    * $\langle\bar{6}\rangle=\lbrace\bar{0},\bar{6}\rbrace$
2. 以下の6個である。
    * $\langle\bar{0}\rangle=\lbrace\bar{0}\rbrace$
    * $\langle\bar{1}\rangle=\langle\bar{5}\rangle=\langle\bar{7}\rangle=\langle\bar{11}\rangle=\langle\bar{13}\rangle=\langle\bar{17}\rangle=\mathbb{Z}/18\mathbb{Z}$
    * $\langle\bar{2}\rangle=\langle\bar{4}\rangle=\langle\bar{8}\rangle=\langle\bar{14}\rangle=\langle\bar{16}\rangle=\lbrace\bar{0},\bar{2},\bar{4},\bar{6},\bar{8},\bar{10},\bar{12},\bar{14},\bar{16}\rbrace$
    * $\langle\bar{3}\rangle=\langle\bar{15}\rangle=\lbrace\bar{0},\bar{3},\bar{6},\bar{9},\bar{12},\bar{15}\rbrace$
    * $\langle\bar{6}\rangle=\langle\bar{12}\rangle=\lbrace\bar{0},\bar{6},\bar{12}\rbrace$
    * $\langle\bar{9}\rangle=\lbrace\bar{0},\bar{9}\rbrace$

※p.67 例2.10.6より $\mathbb{Z}/n\mathbb{Z}$ の部分群は $n$ の約数と1対1対応する。
従って $n=\Pi_{i=1}^N p_i^{n_i}$ と素因数分解できていたとすると部分群の数は $\Pi_{i=1}^N (n_i+1)$

※ $n\mathbb{Z}/12\mathbb{Z} \quad(n\mid 12), n\mathbb{Z}/18\mathbb{Z}\quad(n\mid18)$ と表記できる
※p.67 例2.10.6で $d\mathbb{Z},d\mid n$ から↑は直接的に言えそう

##### ※巡回群の部分群について特定の位数の部分群は $1$ つだけになっているがそうなる条件は？

巡回群の部分群はある位数について高々 $1$ つである(つまり特定の位数の部分群は(存在すれば) $1$ つだけ、は常に成立する)。

p.67 例2.10.6より位数 $n$ の巡回群は $\mathbb{Z}/n\mathbb{Z}$ と同型である。また、 $\mathbb{Z}/n\mathbb{Z}$ の部分群は $\mathbb{Z}$ の $n\mathbb{Z}$ を含む部分群、すなわち $d$ を $n$ の約数としたときの $d\mathbb{Z}$ と1対1対応する。よって $x$ を巡回群の生成元として位数 $n$ の巡回群の部分群は $d\mathbb{Z}/n\mathbb{Z}\cong\langle x^d\rangle$ と1対1対応する。p.70 演習問題2.4.6から $x^d$ の位数は $\frac{n}{\gcd(n,d)}=\frac{n}{d}$ なので、p.40 命題2.4.19から $|\langle x^d\rangle|=\frac{n}{d}$ である。つまり $n$ の約数 $d$ に対して部分群が1対1対応し異なる $d$ に対応する部分群の位数( $=\frac{n}{d}$ )はすべて異なる。よって、巡回群の部分群はある位数について高々 $1$ つである。

なお、榎本直也, 群論, 日評ベーシック・シリーズ, 日本評論社, 2022 p.36 命題3.5が教科書の流れが違うので証明の仕方等が少々異なるが概ね本件の内容(※)にあたる。

#### 2.10.8

※証明と証明につかう定理等を並べるのは良さそう
※3.でp.60 命題2.9.2を使うためには正規部分群であることを言う必要がある
※3. $G$ が $g_2,g_3$ で生成されることを言うには重複してないことを言う必要ある？位数 $6$ であることから？剰余類で重複ないことから？
※4. $g_2=g_2$ の組になることも言っとくべきでは？
※5. そもそも $\rho(g)$ が well-defined かどうかを確認すべき
※5. $gx_ig^{−1}=g^\prime x_ig^{\prime-1}$ は $\rho(g)=\rho(g^\prime)$ と書けば良い
※5. が、そもそもp.44 命題2.5.13を用いて $\mathrm{Ker}(\rho)=\lbrace1_G\rbrace$ から単射性を言えばよい
※5. 準同型定理を使う必要がない、全単射準同型であれば同型である
※5. 論理の区切り方に注意する(「よって」と両辺の矢印のつなぎ方、結合の強さがわからない)

##### 改訂版

1. 背理法で証明する。 $G$ の位数が $6$ なので、p.53 系2.6.21(2)より $G$ の元の位数は $6$ の約数 $1,2,3,6$ のいずれかである。まず位数 $3$ の元が存在しないと仮定する。位数 $1$ の元は単位元のみなので、位数 $2$ か位数 $6$ の元が存在する。
さらに位数 $6$ の元が存在しないと仮定すると、単位元以外は全て位数 $2$ の元である。このとき $\forall g\in G$ について $g^2=1$ となるため(※単位元もこの条件を満たす)、演習問題2.4.8から $G$ は可換群となる。可換群の任意の部分群は正規部分群である。 $G$ の単位元以外の元を $g$ とすると、 $g^2=1_G$なので $H=\langle g\rangle=\lbrace  1_G,g \rbrace$ は $G$ の正規部分群となる。従って、 $G/H$ は剰余群で $|G/H|=|G|/|H|=3$ なのでp.53 系2.6.21(2)より $G/H$ の元の位数は $3$ の約数。一方、自然な写像 $\phi:G\rightarrow G/H$ を考えるとp.59 命題2.8.13よりこれは準同型写像なのでp.71 演習問題2.5.3(1)を用いると、 $G/H$ の元の位数は( $G$ の元の位数である) $1$ あるいは $2$ の約数となる。すなわち $G/H$ の $3$ つの元の位数がすべて $1$ となり単位元が唯一であることに矛盾する。従って、位数 $6$ の元が存在する。
位数 $6$ の元を $g$ とおくと $g^6=(g^2)^3=1_G$ 。p.39 命題2.4.18より $g^2$ の位数は $3$ の約数となり $1$ または $3$ である。 $g^2$ の位数が $1$ とすると $g^2=1_G$ となって $g$ の位数が $6$ であることに矛盾するため $g^2$ の位数は $3$ 。これは位数 $3$ の元が存在しないという仮定に矛盾する。従って位数 $3$ の元が存在する。
2. $x\in G$が位数 $3$ の元なのでp.40 命題2.4.19より $H=\langle x\rangle$ は $\lbrace  1_G,x,x^2 \rbrace$ からなる位数 $3$ の巡回部分群である。p.53 定理2.6.20 ラグランジュの定理より $|G/H|=|G|/|H|=2$ 。p.73 演習問題2.8.2より指数 $2$ の部分群は正規部分群なので $H$ は $G$ の正規部分群となる。よって $\phi:G\rightarrow G/H$ を自然な写像とすると、p.59命題 2.8.13よりこれは準同型写像となり、p.71演習問題2.5.3(1)を用いると、 $G/H$ の元の位数は $G$ の元の位数の約数となる。 $|G/H|=2$ なのでp.53 命題2.6.22より $G/H$ は巡回群。つまり $G/H$ には生成元となる位数 $2$ の元が存在する。従って $G$ の元に $2$ の倍数を位数とする元が存在する。一方、p.53 系2.6.21(2)より $G$ の元の位数は $6$ の約数なので、その位数は $2$ か $6$ である。 $2$ の場合はそれが位数 $2$ の元である。一方、 $6$ の場合、位数 $6$ の元を $g$ とすると $g^6=(g^3)^2=1_G$ 。 $g$ の位数は $6$ なので $g^3\ne1_G$ 。よって、 $g^3$ の位数は $2$ となる。以上によりいずれの場合でも $G$ に位数 $2$ の元が存在する。
3. 1.2.より $G$ には位数 $2$ の元と位数 $3$ の元が存在する。位数 $2$ の元を $g_2$ 、位数 $3$ の元を $g_3$ とする。2.での議論より $H=\langle g_3\rangle=\lbrace1_G,g_3,g_3^2\rbrace$ は $G$ の正規部分群である。 $|G/H|=2, g_2\notin H$ なので、 $H$ ではない方の剰余類は $g_2H=\lbrace g_2,g_2g_3,g_2g_3^2\rbrace$ となる。よって、 $G=H\sqcup g_2H=\lbrace1_G,g_3,g_3^2,g_2,g_2g_3,g_2g_3^2\rbrace$ 。 $g_2,g_3$ が可換なので $\langle g_2,g_3\rangle=\lbrace g_2^i g_3^j \mid i,j\in\mathbb{Z} \rbrace=\lbrace1_G,g_3,g_3^2,g_2,g_2g_3,g_2g_3^2\rbrace=G$ となり、 $\langle g_2\rangle\cap\langle g_3\rangle=\lbrace1_G \rbrace$ かつ $\langle g_2\rangle\langle g_3\rangle=\langle g_2,g_3\rangle$ また $\langle g_2\rangle$ も $G$ が可換群なので正規部分群であるから、

```math
\begin{align}
G&=\langle g_2,g_3\rangle\\
&\cong\langle g_2\rangle\times\langle g_3\rangle(\because\text{p.60 命題2.9.2})\\
&\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}(\because\text{p.53 命題2.6.22})\\
&\cong\mathbb{Z}/6\mathbb{Z}(\because\text{p.60 定理2.9.3 中国式剰余定理})
\end{align}
```

である。

4. 1.2.より $G$ には位数 $2$ の元と位数 $3$ の元が存在する。位数 $2$ の元を $g_2$ 、位数 $3$ の元を $g_3$ とする。2.での議論より $H=\langle g_3\rangle=\lbrace1,g_3,g_3^2\rbrace$ は $G$ の正規部分群である。p.58 補題2.8.10より $g_2H=H g_2\Leftrightarrow\lbrace g_2,g_2g_3,g_2g_3^2\rbrace =\lbrace g_2,g_3g_2,g_3^2g_2\rbrace$ 。 $G$ の任意の元は $g_2^ig_3^j$ の形で表せるので $g_2g_3=g_3g_2$ とすると $G$ が可換群となり前提に矛盾。よって $g_2g_3\ne g_3g_2$ なので $g_2g_3=g_3^2g_2$ かつ $g_2g_3^2=g_3g_2$ である。 $g_2^2=1_G, (g_2g_3)^2=(g_2g_3)(g_3^2g_2)=1_G,(g_2g_3^2)^2=(g_2g_3^2)(g_3g_2)=1_G$ でいずれも単位元ではないので $g_2H$ の $3$ つの元は位数 $2$ である。 $H$ の元の位数は $2$ ではないのでちょうど $3$ つの元が位数 $2$ となる。また、位数 $2$ の元は自分自身が逆元であることを使うと以下のように位数 $2$ の元 $g_2,g_2g_3,g_2g_3^2$ はすべて共役となる。

```math
\begin{align}
&(g_2)(g_2g_3)(g_2)^{-1}&=g_3g_2&=g_2g_3^2 \\
&(g_2g_3)(g_2)(g_2g_3)^{-1}&=g_2g_3^2 \\
&(g_2g_3^2)(g_2)(g_2g_3^2)^{-1}&=g_2g_3
\end{align}
```

5. $I=\lbrace1,2,3\rbrace$ と表記する。 $\rho(g):I\rightarrow I$ が全単射であれば $|I|=3$ なので $\rho(g)\in\mathfrak{S}_3$ である。 $i,j\in I$ として $\rho(g)(i)=\rho(g)(j)\Leftrightarrow gx_ig^{-1}=gx_jg^{-1}\Leftrightarrow x_i=x_j\Leftrightarrow i=j$ なので $\rho(g)$ は単射である。よってp.7 命題1.1.6(3)より $\rho(g)$ は全単射である。従って $\rho(g)\in\mathfrak{S}_3$ 。
今度は $\rho:G\rightarrow\mathfrak{S} _3$ を考えると、 $i\in I,g,g^\prime\in G$ で $\rho(gg^\prime)(i)=(gg^\prime)x_i(gg\prime)^{-1}=g(g^\prime x_i g^{\prime-1})g^{-1}=g x _{\rho(g^\prime)(i)} g^{-1}=\rho(g)(\rho(g^\prime)(i))=\rho(g)\circ\rho(g^\prime)(i) $となるので $\rho$ は準同型写像である。次に $\rho$ が単射であることを示す。4.の表記を用いると、 $\lbrace x_i|i\in I\rbrace =g_2H$ であり、 $1_G=g_2g_2,g_3=g_2(g_2g_3),g_3^2=g_2(g_2g_3^2)$ なので、 $H$ の元は $\lbrace x_i|i\in I\rbrace$ の $2$ 元の積で表せる。 $g,g^\prime\in G, i,j\in I$ として

```math
\begin{align}
&gx_ig^{-1}=g^\prime x_ig^{\prime-1} \\
\Rightarrow&(gx_ig^{-1})(gx_jg^{-1})=(g^\prime x_ig^{\prime-1})(g^\prime x_jg^{\prime-1}) \\
\Rightarrow&g(x_ix_j)g^{-1}=g^\prime(x_ix_j)g^{\prime-1}
\end{align}
```

となるので、 $gx_ig^{-1}=g^\prime x_ig^{\prime-1}$ ならば、 $\forall k\in G$ に対して $gkg^{-1}=g^\prime kg^{\prime-1}\Leftrightarrow k(g^{-1}g^\prime)=(g^{-1}g^\prime)k$ となる。つまり $g^{-1}g^\prime$ は任意の $G$ の元に対して積が可換となる。$x_i,x_j(i\ne j)$ は共役なので、ある $l\in G$ に対して $lx_il^{-1}=x_j\Leftrightarrow lx_i=x_jl\ne x_il(\because x_jl=x_il\Rightarrow x_j=x_i$ で矛盾)となり可換ではないため $g^{-1}g^\prime\notin g_2H$ 。また $g_2g_3g_2^{-1}=g_3^2g_2g_2=g_3^2$ となり $g_3,g_3^2$ も共役なので同様に $g^{-1}g^\prime\notin\lbrace g_3,g_3^2\rbrace$ 。よって $g^{\prime-1}g=1_G\Leftrightarrow g=g^\prime$ 。すなわち $\rho$ は単射となる。 $|G|=|\mathfrak{S}_3|=6$ なのでp.7 命題1.1.6(3)より $\rho$ は全射である。またp.44 命題2.5.13より $\mathrm{Ker}(\rho)=\lbrace1_G\rbrace$ である。以上により準同型定理(p.63 定理2.10.1)から $G\cong G/\mathrm{Ker}(\rho)\cong\mathrm{Im}(\rho)=\mathfrak{S}_3$ である。

##### 初版

1. 背理法で証明する。 $G$ の位数が $6$ なので、p.53 系2.6.21(2)より $G$ の元の位数は $6$ の約数 $1,2,3,6$ のいずれかである。まず位数 $3$ の元が存在しないと仮定する。位数 $1$ の元は単位元のみなので、位数 $2$ か位数 $6$ の元が存在する。
位数 $6$ の元が存在しないと仮定すると、単位元以外は全て位数 $2$ の元である。このとき $\forall g\in G$ について $g^2=1$ となるため(※単位元もこの条件を満たす)、演習問題2.4.8から $G$ は可換群となる。可換群の任意の部分群は正規部分群である。 $G$ の単位元以外の元を $g$ とすると、 $g^2=1_G$ なので $H=\lbrace1_G,g\rbrace$ は $G$ の正規部分群となる。従って、 $G/H$ は剰余群で $|G/H|=|G|/|H|=3$ なので $G/H$ の単位元以外の元の位数は $3$ 。 $G$ の $H$ に含まれない元を $g^\prime$ とすると $g^\prime$ の位数は2で $H$ 以外の剰余類 $g^\prime H$ に属する。 $g^\prime H$ の位数は $3$ なので $(g^\prime H)^3=g^{\prime3}H=g^\prime H(\because g^{\prime2}=1_G)=H$ 。これは $g^\prime\notin H$ に矛盾する。従って、位数 $6$ の元が存在する。
位数 $6$ の元を $g$ とおくと $g^6=(g^2)^3=1_G$ 。p.39 命題2.4.18より $g^2$ の位数は $3$ の約数となり $1$ または $3$ である。 $g^2$ の位数が $1$ とすると $g^2=1_G$ となって $g$ の位数が $6$ であることに矛盾するため $g^2$ の位数は $3$ 。これは位数 $3$ の元が存在しないという仮定に矛盾する。従って位数 $3$ の元が存在する。
2. $x\in G$が位数 $3$ の元なので $H=\langle x\rangle$ は $\lbrace1_G,x,x^2\rbrace$ からなる位数 $3$ の群である。なぜなら $x$ の位数は $3$ なの つ$x^2\ne1_G$ 。 $x=x^2$ と仮定すると $x^{-1}$ を両辺にかけることで $1_G=x$ となり $x$ の位数が $3$ であることに矛盾するため $x\ne x^2$ 。従って、 $1_G,x,x^2$ は相異なる元だからである。p.53 定理2.6.20 ラグランジュの定理より $|G/H|=|G|/|H|=2$ 。 $G$ の $H$ に含まれない元を $y$ とすると $H$ ではない方の剰余類は $yH=\lbrace y,yx,yx^2\rbrace$ となる。ここで $y^2$ を考えると $y^2\notin yH$ である。なぜなら、 $y^2=y$ とすると $y=1_G$ 、 $y^2=yx$ とすると $y=x$ 、 $y^2=y^2x$ とすると $1_G=x$ となりいずれも矛盾となるからである。従って $y^2\in H$ 。このとき、 $y^2=1_G$ 、 $y^2=x$ 、 $y^2=x^2$ の $3$ 通りの可能性があるが以下のようにいずれの場合も位数 $2$ の元が存在する。
    1. $y^2=1$の場合、 $y$ は単位元ではないので $y$ の位数が $2$ となる。
    2. $y^2=x$の場合、 $yH=\lbrace y,y^3,y^5\rbrace$ となる。 $G$ の位数は $6$ なので元の位数は $6$ の約数。従って $G$ の任意の元を $6$ 乗すると必ず $1_G$ となる。よって、 $(y^3)^2=y^6=1_G$ となるため $y^3$ の位数が $2$ となる。
    3. $y^2=x^2$の場合、 $yH\ni yx^2=y^3$ で、 $(y^3)^2=y^6=1_G$ となるため $y^3$ の位数が $2$ となる。
3. 1.2.より $G$ には位数 $2$ の元と位数 $3$ の元が存在する。位数 $2$ の元を $g_2$ 、位数 $3$ の元を $g_3$ とすると、p.32命題2.3.13(1)より $S=\lbrace1_G,g_2,g_3,g_3^2\rbrace \subset\langle g_2,g_3\rangle\subset G$ 。 $(g_2g_3)^i=g_2^i g_3^i=1_G$ となる $i$ を考えることにより $g_2g_3\in\langle g_2,g_3\rangle$ の位数は $6$ であることがわかるので $g_2g_3\notin S$ 。同様に $(g_2g_3^2)^i=g_2^i g_3^{2i}=1_G$ となる $i$ を考えることで、 $g_2g_3^2\in\langle g_2,g_3\rangle$ の位数が $6$ であることがわかるので $g_2g_3^2\notin S$ 。また $g_2g_3\ne g_2g_3^2$ なので( $\because$ 等しい場合 $g_3$ が単位元になって矛盾)、 $S\cup\lbrace g_2g_3,g_2g_3^2\rbrace \subset\langle g_2,g_3\rangle\subset G$ で、 $|S\cup\left\lbrace g_2g_3,g_2g_3^2\right\rbrace |=6=|G|$ なので $S\cup\lbrace g_2g_3,g_2g_3^2\rbrace =G$ である。このとき $G=\langle g_2,g_3\rangle\cong\langle g_2\rangle\times\langle g_3\rangle\cong\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}\cong\mathbb{Z}/6\mathbb{Z}$ である。
4. 1.2.より $G$ には位数 $2$ の元と位数 $3$ の元が存在する。位数 $2$ の元を $g_2$ 、位数 $3$ の元を $g_3$ とすると、p.32命題2.3.13(1)より $S=\lbrace1_G,g_2,g_3,g_3^2\rbrace\subset\langle g_2,g_3\rangle\subset G$ 。ここで $g_2g_3=g_3g_2$ とすると3.と同じ議論が成立し $G$ が可換群となるため、 $g_2g_3\ne g_3g_2$ 。ここで $g_2g_3\notin S$ である。なぜなら $g_2g_3=1_G$ とすると両辺に左から $g_2$ をかけ $g_3=g_2$ となり矛盾。 $g_2g_3=g_2$ とすると両辺に左から $g_2$ をかけ $g_3=1_G$ となり矛盾。 $g_2g_3=g_3$ とすると、両辺に右から $g_3^2$ をかけ $g_2=1_G$ となり矛盾。 $g_2g_3=g_3^2$ とすると、両辺に右から $g_3^2$ をかけると $g_2=g_3$ となり矛盾。従って $g_2g_3\notin S$ である。同様に $g_3g_2\notin S$ 。 $S\cup\lbrace g_2g_3,g_3g_2\rbrace\subset\langle g_2,g_3\rangle\subset G$ で $|S\cup\lbrace g_2g_3,g_3g_2\rbrace|=6$ なので $G=S\cup\lbrace g_2g_3,g_3g_2\rbrace$ 。
位数が $1$ となる元は単位元だけなので、 $g_2g_3$ の位数は $2,3,6$ のいずれかである。
$g_2g_3$ の位数が $3$ であると仮定する。このとき $(g_2g_3)^3=1_G$ となるが、 $g_2^{-1}$ を左から $g_2$ を右から両辺にかけることで $(g_3g_2)^3=1_G$ となり $g_3g_2$ は単位元ではないため $g_3g_2$ の位数も $3$ となる。 $g_2g_3,g_3g_2\notin S$ で位数 $3$ の元であることから $(g_2g_3)^2=g_3g_2$ であり、また $(g_2g_3)^2=(g_2g_3)^{-1}=g_3^{-1}g_2^{-1}$ となる。よって $g_3g_2=g_3^{-1}g_2^{-1}$ となるが、左から $g_3$ 、右から $g_2$ をかけることで $g_3^2=1_G$ となり矛盾する。よって $g_2g_3$ の位数は $3$ ではない。
$g_2g_3$ の位数が $6$ であると仮定する。このとき $|\langle g_2g_3\rangle|=6$ なので $G$ と一致するはずである。以下の表から $g_3g_2$ も位数 $6$ となり、また $(g_2g_3)^5=(g_2g_3)^{-1}=g_3^{-1}g_2^{-1}=g_3g_2$ となるが、左から $g_3$ 、右から $g_2$ をかけることで $1_G=g_3^2$ となり矛盾する。よって $g_2g_3$ の位数は $6$ ではない。
$g_3g_2$ についても同様なので $g_2g_3,g_3g_2$ の位数は $2$ である。従って、 $G$ において $g_2,g_2g_3,g_3g_2$ の $3$ つの元が位数 $2$ となる。
$g_2,g_2g_3,g_3g_2$ の位数は $2$ なので、 $g_2^{-1}=g_2,(g_2g_3)^{-1}=g_2g_3,(g_3g_2)^{-1}=g_3g_2$ である。 $g_2=(g_3g_2)(g_2g_3)(g_3g_2),g_2=(g_2g_3)(g_3g_2)(g_2g_3)$ で、それぞれ左右から $g_3g_2$ 、 $g_2g_3$ をかけることで $(g_3g_2)g_2(g_3g_2)=g_2g_3,(g_2g_3)g_2(g_2g_3)=g_3g_2$ 。また $g_2g_3=g_2(g_3g_2)g_2,g_3g_2=g_2(g_2g_3)g_2$ となるのですべて互いに共役となる。

| |$1_G$|$g_2g_3$|$(g_2g_3)^2$|$(g_2g_3)^3$|$(g_2g_3)^4$|$(g_2g_3)^5$|
|-|-|-|-|-|-|-|
|位数|1|6|3|2|3|6|

5. $x_1=g_2,x_2=g_2g_3,x_3=g_3g_2$とすると以下の表となる。 $x_j x_i x_j^{-1}$ で $i=j$ なら $x_i$ のまま、 $i\ne j$ なら $k\ne i, k\ne j$ である $x_k$ になるので $x_1,x_2,x_3$ をどのように入れ替えても $x_1,x_2,x_3$ の行は変わらず、それ以外( $1_G,g_3,g_3^2$ )は行の入れ替えになるだけである。どの行も $x_1,x_2,x_3$ の並び替えなので $\rho(g)\in\mathfrak{S}_ 3$ である。 $\rho:G\rightarrow\mathfrak{S}_ 3$ を考えると全射で $\mathrm{Ker}(\rho)=\lbrace1_G\rbrace$ である。また $\rho(gg^\prime)(i)=(gg^\prime)x_i(gg\prime)^{-1}=g(g^\prime x_i g^{\prime-1})g^{-1}=g x_ {\rho(g^\prime)(i)} g^{-1}=\rho(g)(\rho(g^\prime)(i))=\rho(g)\circ\rho(g^\prime)(i)$ となるので $\rho$ は準同型写像であるから準同型定理(p.63 定理2.10.1)より $G\cong\mathfrak{S}_3$ である。

|g|$gx_1g^{-1}:\rho(g)(1)$|$gx_2g^{-1}:\rho(g)(2)$|$gx_3g^{-1}:\rho(g)(3)$|
|-|-|-|-|
|$x_1=g_2$|$x_1:1$|$x_3:3$|$x_2:2$|
|$x_2=g_2g_3$|$x_3:3$|$x_2:2$|$x_1:1$|
|$x_3=g_3g_2$|$x_2:2$|$x_1:1$|$x_3:3$|
|$1_G$|$x_1:1$|$x_2:2$|$x_3:3$|
|$g_3$|$x_2:2$|$x_3:3$|$x_1:1$|
|$g_3^2$|$x_3:3$|$x_1:1$|$x_2:2$|
