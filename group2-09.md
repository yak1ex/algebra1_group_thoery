# 代数学1 群論入門

## 2章の演習問題

### 2.9 群の直積

#### 2.9.1

p.60 定理2.9.3より

1. $\mathbb{Z}/15\mathbb{Z}\cong\mathbb{Z}/3\mathbb{Z}\times\mathbb{Z}/5\mathbb{Z}$
2. $\mathbb{Z}/28\mathbb{Z}\cong\mathbb{Z}/2^2\mathbb{Z}\times\mathbb{Z}/7\mathbb{Z}$
3. $\mathbb{Z}/60\mathbb{Z}\cong\mathbb{Z}/2^2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}\times\mathbb{Z}/5\mathbb{Z}$
4. $\mathbb{Z}/1400\mathbb{Z}\cong\mathbb{Z}/2^3\mathbb{Z}\times\mathbb{Z}/5^2\mathbb{Z}\times\mathbb{Z}/7\mathbb{Z}$

#### 2.9.2 担当

##### メモ

わざわざ位数が素という条件があるので、位数関係(特に約数)の定理、命題を使いそう。

* p.53 系2.6.21(2)： $G$ が有限群なら $g \in G$ の位数は$|G|$の約数
* p.71 演習問題2.5.3(1)：$\phi:G\rightarrow H$が群の準同型で $g\in G$ が有限位数の元なら $\phi(g)$ の位数は $g$ の位数の約数
* p.39 命題2.4.18： $G$ が群、 $x\in G$ 、 $x$ の位数は $d\lt\infty$ のとき $n\in\mathbb{Z}$ に対して、 $x^n=1_G\Leftrightarrow n$ は $d$ の倍数

$\phi_1:G_1\rightarrow G_1,\phi_2:G_2\rightarrow G_2$が存在し任意の $(g_1,g_2)\in G_1\times G_2$ について $\phi(g_1,g_2)=\phi_1(g_1)\phi_2(g_2)$ ということは、 $\phi(g_1,g_2)$ の $G_1$ 因子が $g_2$ によって変わらず、 $G_2$ 因子が $g_1$ によって変わらないということ。

##### 解答
###### 補題. $G_1,G_2$が有限群、 $g_1\in G_1, g_2\in G_2$ として、 $(g_1,g_2)\in G_1\times G_2$ の位数は $g_1$ の位数と $g_2$ の位数の最小公倍数である。特に$n_1=|G_1|,n_2=|G_2|$が互いに素である場合は、 $g_1$ の位数、 $g_2$ の位数の積となる

※https://en.wikipedia.org/wiki/Direct_product_of_groups#Elementary_properties にほぼそのままの形で記載があった

証明：定義より、 $(g_1,g_2)$ の位数とは $(g_1,g_2)^n=1_{G_1\times G_2}$ となる最小の正の整数 $n$ である。
$(g_1,g_2)^n=1_{G_1\times G_2} \Leftrightarrow (g_1^n,g_2^n)=(1_{G_1},1_{G_2})$ なので、p.39 命題 2.4.18より $n$ は $g_1$ の位数の倍数かつ $g_2$ の位数の倍数となる。すなわち、 $(g_1,g_2)$ の位数 $n$ は $g_1$ の位数と $g_2$ の位数の最小公倍数となる。

p.53 系2.6.21(2)から $g_1$ の位数は $n_1$ の約数、 $g_2$ の位数は $n_2$ の約数なので、 $n_1,n_2$ が互いに素である場合、 $g_1$ の位数、 $g_2$ の位数も互いに素となる。よって、 $g_1$ の位数、 $g_2$ の位数の最小公倍数とは $g_1$ の位数、 $g_2$ の位数の積となる。※補題の証明終

###### 本体の証明

1. $\phi(g_1,g_2)=\phi_1(g_1)\phi_2(g_2)$と表せること
2. $\phi_1,\phi_2$が準同型であること
3. $\phi_1(g_1)\in G_1, \phi_2(g_2)\in G_2$であること($\Leftrightarrow\phi_1:G_1\rightarrow G_1,\phi_2:G_2\rightarrow G_2$であること)

を順に示すことで証明する。

1. $\phi(g_1,g_2)=\phi_1(g_1)\phi_2(g_2)$と表せること：
$\phi_1(g_1)=\phi(g_1,1_{G_2}),\phi_2(g_2)=\phi(1_{G_1},g_2)$ と置くと、
$\phi(g_1,g_2)=\phi((g_1,1_{G_2})(1_{G_1},g_2))=\phi(g_1,1_{G_2})\phi(1_{G_1},g_2)=\phi_1(g_1)\phi_2(g_2)$
2. $\phi_1,\phi_2$が準同型であること：※この時点では$\phi_1:G_1\rightarrow G_1\times G_2, \phi_2:G_2\rightarrow G_1\times G_2$
$\phi_1(g_1 g_1^\prime)=\phi(g_1 g_1^\prime,1_{G_2})=\phi((g_1,1_{G_2})(g_1^\prime,1_{G_2}))=\phi(g_1,1_{G_2})\phi(g_1^\prime,1_{G_2})=\phi_1(g_1)\phi_1(g_1^\prime)$
定義より $\phi_1$ は準同型である。 $\phi_2$ についても同様である。
3. $\phi_1(g_1)\in G_1, \phi_2(g_2)\in G_2$であること：
$\phi_1(g_1)=\phi(g_1,1_{G_2})\in G_1\times G_2$ なので $g_1^\prime\in G_1,g_2^\prime \in G_2$ を用いて $\phi_1(g_1)=(g_1^\prime,g_2^\prime)$ と表せる。
補題より $(g_1^\prime,g_2^\prime)$ の位数は $g_1^\prime$ の位数と $g_2^\prime$ の位数の積である。
また、 $(g_1,1_{G_2})$ の位数は $g_1$ の位数と等しいので、p.53 系2.6.21(2)より $n_1$ の約数となる。
$\phi$ は準同型(でかつ有限群上での議論なので元の位数も有限)だからp.71 演習問題2.5.3(1)より $(g_1^\prime,g_2^\prime)=\phi(g_1,1_{G_2})$ の位数は $(g_1,1_{G_2})$ の位数の約数。つまり $n_1$ の約数の約数となるので $n_1$ の約数である。
以上より $g_1^\prime$ の位数と $g_2^\prime$ の位数の積が $n_1$ の約数となるが、 $g_2^\prime$ の位数はp.53 系2.6.21(2)から $n_2$ の約数であり、 $n_1$ の約数とは互いに素( $\because n_1,n_2$ が互いに素)であるから $g_2^\prime$ の位数は1でなくてはならない。すなわち $g_2^\prime=1_{G_2}$ となるので、 $\phi_1(g_1)=(g_1^\prime,1_{G_2})\in G_1$ 。
$\phi_2(g_2)\in G_2$ についても同様である。

以上により題意は証明された。

※補題として $\mathrm{ord}(g_2)\mid\mathrm{ord}((g_1,g_2))$ を言って、 $g_2$ の位数も $n_1$ の約数となるので $g_2$ の位数は $1$ 、とした方が分かりやすい

##### ボツ解答

先に $\phi$ を $G_1,G_2$ 因子( $\phi_1,\phi_2$ )に分けると準同型であることは示せたが $\phi_1$ が $g_2$ に依存せず、 $\phi_2$ が $g_1$ に依存しないことを示せなかった。

###### 証明できず

$g_1\in G_1,g_2\in G_2$ で、 $\phi(g_1,g_2)=(\phi_1(g_1,g_2),\phi_2(g_1,g_2))$ とする( $\phi_1(g_1,g_2)\in G_1,\phi_2(g_1,g_2)\in G_2$ 、 $\phi$ が写像なので $\phi_1,\phi_2$ も写像になる)。
$\phi$ は準同型なので、任意の $g_1,g_1^\prime\in G_1$ 、 $g_2,g_2^\prime\in G_2$ に対して

```math
\begin{align}
&\phi((g_1,g_2)(g_1^\prime,g_2^\prime))\\
=&\phi(g_1,g_2)\phi(g_1^\prime,g_2^\prime)\\
=&(\phi_1(g_1,g_2),\phi_2(g_1,g_2))(\phi_1(g_1^\prime,g_2^\prime),\phi_2(g_1^\prime,g_2^\prime))\\
=&(\phi_1(g_1,g_2)\phi_1(g_1^\prime,g_2^\prime),\phi_2(g_1,g_2)\phi_2(g_1^\prime,g_2^\prime))
\end{align}
```

また、

```math
\begin{align}
&\phi((g_1,g_2)(g_1^\prime,g_2^\prime))\\
=&(\phi_1((g_1,g_2)(g_1^\prime,g_2^\prime)),\phi_2((g_1,g_2)(g_1^\prime,g_2^\prime)))
\end{align}
```

なので、 $\phi_i((g_1,g_2)(g_1^\prime,g_2^\prime))=\phi_i(g_1,g_2)\phi_i(g_1^\prime,g_2^\prime) (i=1,2)$ 。すなわち $\phi_1,\phi_2$ は準同型である。

あとは、 $\phi_1(g_1,g_2)$ が $g_2$ に依存せず、 $\phi_2(g_1,g_2)$ が $g_1$ に依存しない、すなわち $\phi_1(g_1,g_2)=\phi_1(g_1,1_{G_2})$ 、 $\phi_2(g_1,g_2)=\phi_2(1_{G_1},g_2)$ が言えればよい。

$\phi_1$ は準同型であり、 $G_1,G_2$ が有限位数なので $G_1\times G_2$ も有限位数だから、p.71 演習問題2.5.3(1)より $\phi_i(g_1,g_2)(i=1,2)$ の位数は $(g_1,g_2)$ の位数の約数である。補題と$n_1=|G_1|,n_2=|G_2|$が互いに素であることから、 $(g_1,g_2)$ の位数の約数であることは $n_1 n_2$ の約数であることと同値。一方、 $\phi_i(g_1,g_2)\in G_i$ なのでp.53 系2.6.21(2)から、 $\phi_i(g_1,g_2)$ の位数は$n_i=|G_i|$の約数である(i=1,2)。 $n_1,n_2$ は互いに素だったから、 $\phi_i(g_1,g_2)$ の位数も互いに素である。...

#### 2.9.3

1. $2\times8-1\times15=1$なので、 $x\equiv5\mod8\land x\equiv2\mod15$ を$x\equiv2\times2\times8-5\times1\times15=-43\mod120$は満たす。例えば $x=77$ 。
2. $35-24=11,24-2\times11=2,11-5\times2=1$なので、$1=11-5\times(24-2\times11)=11\times11-5\times24=11\times(35-24)-5\times24=11\times35-16\times24$。従って、 $x\equiv4\mod35\land x\equiv5\mod24$ を$x\equiv5\times11\times35-4\times16\times24=389\mod840$は満たす。例えば $x=389$ 。
