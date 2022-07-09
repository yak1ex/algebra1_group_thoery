# 代数学1 群論入門

## 2章の演習問題

### 2.5 準同型と同型

#### 2.5.1

1. $x^{i_1}=x^{i_2} \Leftrightarrow x^{i_1-i_2} = 1_G \Leftrightarrow i_1-i_2$が$m$の倍数(p.39 命題2.4.18)。同様に$y^{i_1}=y^{i_2} \Leftrightarrow y^{i_1-i_2} = 1_H \Leftrightarrow i_1-i_2$が$n$の倍数。従って、
$$\forall i_1,i_2 \in \mathbb{Z}, (x^{i_1}=x^{i_2} \Rightarrow y^{i_1}=y^{i_2}) \\ \Leftrightarrow \forall i_1,i_2 \in \mathbb{Z}, (m \mid (i_1-i_2) \Rightarrow n \mid (i_1-i_2)) \\ \Leftrightarrow \forall i \in \mathbb{Z}, (m \mid i \Rightarrow n \mid i) \\ \Leftrightarrow n \mid m$$
最後の段を証明する。
($\Rightarrow$) $i=m$とすると$m \mid m \Rightarrow n \mid m$なので$n \mid m$。
($\Leftarrow$) $n \mid m$のとき$m = jn (j \in \mathbb{Z})$と表せ、また、$m \mid i$のとき $i = km (k \in \mathbb{Z})$と表せる。よって、$i = kjn$と表せるので$n \mid i$。
以上より、求める必要十分条件は$n \mid m$($m$が$n$の倍数)。
2. 写像 $\phi $ を $\phi(x^{i}) = y^i$ で定める。このとき、1.より $x^{i_1} = x^{i_2} \Rightarrow y^{i_1} = y^{i_2}$ なので $x^{i_1} = x^{i_2} \Rightarrow \phi(x^{i_1}) = y^{i_1} = y^{i_2} = \phi(x^{i_2})$ となりこの定義は well-defined である。また$G$の任意の元は $x^i(i \in \mathbb{Z})$と表せるので、$G$の任意の2元$x^{i_1}, x^{i_2}$について、
$$\phi(x^{i_1} x^{i_2}) = \phi(x^{i_1+i_2}) = y^{i_1+i_2} = y^{i_1} y^{i_2} = \phi(x^{i_1}) \phi(x^{i_2})$$
となり、$\phi$が題意を満たす準同型となる。

#### 2.5.2

$x,y \in G$とする。

$$ \phi_n(xy) = (xy)^n = x^n y^n (\because G は可換群) = \phi_n(x) \phi_n(y)$$

となるため$\phi_n$は準同型である。

#### 2.5.3 担当

1. $g \in G$の位数を$d < \infty$とすると、
$$1_H = \phi(1_G) (\because p.41 命題2.5.3(1))\\ = \phi(g^d) = \phi(g)^d$$
p.39 命題2.4.18より $d$は$\phi(g)$の位数の倍数。つまり$\phi(g)$の位数は$d$($g$の位数)の約数となる。
2. $\phi(g)$の位数を$c$とすると、$\phi(g^d)=1_H=\phi(g)^c=\phi(g^c)$で、 $\phi$が単射なので
$$g^c = g^d\\ \Leftrightarrow g^{c-d} = 1_G$$
よって、p.39 命題2.4.18より、$c-d$は$d$の倍数。つまり$c$が$d$の倍数($\because k \in \mathbb{Z}, c - d = kd \Rightarrow c = (k+1)d $)。位数の定義より$d > 0$ ので$c \ge d$。前問より $d$が$c$の倍数で、位数の定義より$c > 0$でもあるので、$d \ge c$。よって$c = d$。つまり$g$の位数と$\phi(g)$の位数は等しい。

#### 2.5.4 担当

$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ と $\mathbb{Z}/4\mathbb{Z}$の各元の位数は下表の通り。

|$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の元|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|
|-|-|-|-|-|
|元の位数|1|2|2|2|

|$\mathbb{Z}/4\mathbb{Z}$の元|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|
|-|-|-|-|-|
|元の位数|1|4|2|4|

$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ と $\mathbb{Z}/4\mathbb{Z}$が同型だと仮定すると定義より群の同型となる写像$\phi:\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z} \rightarrow \mathbb{Z}/4\mathbb{Z}$が存在するが、このとき$\phi$は準同型かつ単射で各元が有限位数なので、演習問題2.5.3(2)より$\forall g \in \mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$について$g$の位数と$\phi(g)$の位数は等しい。しかし$\phi(g) = \overline{1}$となる位数$4$の$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$の元が存在しないため$\phi$が同型(全単射)であることと矛盾する。よって、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$と$\mathbb{Z}/4\mathbb{Z}$は同型ではない。

#### 2.5.5

以下、式 $(xyx^{-1})^n = xy^nx^{-1}$を(※)と表記する。

$n=0$のとき、$(xyx^{-1})^n = (xyx^{-1})^0 = 1_G$、$xy^nx^{-1} = xy^0x^{-1} = xx^{-1} = 1_G$のため、(※)は成立する。

$n=k$のとき、(※)が成立すると仮定すると、
$$(xyx^{-1})^{k+1} = (xyx^{-1})^k (xyx^{-1}) = xy^kx^{-1} xyx^{-1} = xy^{k+1}x^{-1}$$
のため、$n=k+1$でも(※)は成立する。

以上より、$n\ge 0$で(※)は成立する。

ここで、$n<0$のとき、$n\ge 0$では(※)が成立するため、
$$(xyx^{-1})^{-n} = xy^{-n}x^{-1}\\
\Leftrightarrow (xy^{-n}x^{-1})^{-1} = (xyx^{-1})^n(\because 両辺それぞれの逆元をかける)\\
\Leftrightarrow (x^{-1})^{-1} (y^{-n})^{-1} x^{-1} = (xyx^{-1})^n\\
\Leftrightarrow x y^n x^{-1} = (xyx^{-1})^n$$
すなわち、$n < 0$でも(※)が成立する。

以上により、$n \in \mathbb{Z}$で(※)は成立する。
#### 2.5.6

$$A = \begin{pmatrix}1 & 1 \\ 0 & 1\end{pmatrix}, B = \begin{pmatrix}1 & 0 \\ 1 & 1\end{pmatrix}$$

$X = \begin{pmatrix}a & b \\ c & d\end{pmatrix} (a,b,c,d \in \mathbb{C})$として、
$$B=XAX^{-1}\\
\Leftrightarrow BX = XA\\
\Leftrightarrow \begin{pmatrix} a & b \\ a+c & b + d\end{pmatrix} = \begin{pmatrix} a & a+b \\ c & c+d\end{pmatrix}\\
\Leftrightarrow \left\{\begin{matrix} b = a + b \\ a+c = c \\ b+d = c+d \end{matrix}\right.\\
\Leftrightarrow \left\{\begin{matrix} a = 0 \\ b= c \end{matrix}\right.$$

1. $X \in \mathrm{GL}_2(\mathbb{R}) \Leftrightarrow ad - bc \neq 0$なので$X = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix} = X^{-1}$のときに、$B = XAX^{-1}$となり $A,B$は共役。
2. $X \in \mathrm{SL}_2(\mathbb{R}) \Leftrightarrow ad - bc = 1 \Leftrightarrow -b^2 = 1$でこれを満たす$b \in \mathbb{R}$が存在しないため$A,B$は$\mathrm{SL}_2(\mathbb{R})$では共役ではない。
3. $X \in \mathrm{SL}_2(\mathbb{C}) \Leftrightarrow ad - bc = 1 \Leftrightarrow -b^2 = 1$なので$X = \begin{pmatrix}0 & i \\ i & 0\end{pmatrix} = -X^{-1}$のときに、$B = XAX^{-1}$となり$A,B$は共役。

#### 2.5.7

(※) $\mathbb{Z}/n\mathbb{Z}$について自己同型写像の定義域は$\mathbb{Z}/n\mathbb{Z}$、つまり$\overline{1}$を生成元とする巡回群なのでその対応先だけ決めれば写像は決まる(ref p.44 命題2.5.12)。演習問題2.5.3より同型な写像の場合、位数が等しい元に写す必要がある。演習問題2.4.6の結果を使って元の位数が$\overline{1}$(位数は$n$)と等しい元を求めると$n$と素な$m$に対する$\overline{m}$となる。
以下$\overline{1}$を$\overline{m}$に写す写像を$\phi_{\overline{m}}$と表記する(このとき$\phi_{\overline{m}}(\overline{x}) = \phi_{\overline{m}}(\overline{1}^x) = \phi_{\overline{m}}(\overline{1})^x = \overline{m}^x = \overline{1}^{mx} = \overline{x}^m$となり演習問題2.5.2よりwell-definedな準同型写像である)。
上の議論より$\phi$が$\mathbb{Z}/n\mathbb{Z}$の自己同型であれば、$n,m$素な$\phi_{\overline{m}}$として表せることが言える。
一方、$n,m$素な$\phi_{\overline{m}}$を考えると上の議論からこれはwell-definedな準同型写像なので、全単射であることを言えば$\phi_{\overline{m}}$が$\mathbb{Z}/n\mathbb{Z}$の自己同型であることが言える。
これにより$\{ \phi_{\overline{m}} \}$が$\mathbb{Z}/n\mathbb{Z}$の自己同型群と同型であることが言える。
$\phi_{\overline{m}}$が全単射であることを示す。
$$\phi_{\overline{m}}(\overline{x}) = \phi_{\overline{m}}(\overline{y}) \Rightarrow \overline{1}^{mx} = \overline{1}^{my} \Rightarrow \overline{1}^{mx-my} = \overline{0} \Rightarrow \overline{1}^{m(x-y)} = \overline{0}$$
p.39 命題2.4.18より $n \mid m(x-y)$ (※$\overline{1}$の位数は$n$である)。$n,m$素のため、$n \mid x-y$。つまり$\overline{x}=\overline{y}$である。
したがって$\phi_{\overline{m}}$は単射。$\mathbb{Z}/n\mathbb{Z}$の位数は有限なので p.7 命題1.1.6(2)より $\phi_{\overline{m}}$は全単射。
したがって、$\{ \phi_{\overline{m}} \}$が$\mathbb{Z}/n\mathbb{Z}$の自己同型群と同型である。このとき$xy$を$n$で割った余りを$r$とする($xy = nq + r, q \in \mathbb{Z}, r \in \mathbb{Z}, 0 \le r \lt n$)と、
$$(\phi_{\overline{x}} \circ \phi_{\overline{y}}) (\overline{1}) = \phi_{\overline{x}} (\phi_{\overline{y}} (\overline{1})) = \phi_{\overline{x}}(\overline{y}) = \phi_{\overline{x}}(\overline{1}^y) = (\phi_{\overline{x}}(\overline{1}))^y = \overline{x}^y = \overline{1}^{xy} = \overline{r} = \phi_{\overline{r}}(\overline{1})$$
となるため、$(\phi_{\overline{x}} \circ \phi_{\overline{y}}) = \phi_{\overline{r}}$(p.44 命題2.5.12より生成元$\overline{1}$の写像先を定めれば写像全体が決まるため)。 これは$\mathbb{Z}/n\mathbb{Z}$の自己同型群$\{ \phi_{\overline{m}} \}$が$(\mathbb{Z}/n\mathbb{Z})^\times$と同型ということである。

1. $\mathbb{Z}/5\mathbb{Z}$

位数$5$となる元は$\overline{1},\overline{2},\overline{3},\overline{4}$
|$g$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|
|-|-|-|-|-|-|
|$\phi_{\overline{1}}(g)$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|
|$\phi_{\overline{2}}(g)$|$\overline{0}$|$\overline{2}$|$\overline{4}$|$\overline{1}$|$\overline{3}$|
|$\phi_{\overline{3}}(g)$|$\overline{0}$|$\overline{3}$|$\overline{1}$|$\overline{4}$|$\overline{2}$|
|$\phi_{\overline{4}}(g)$|$\overline{0}$|$\overline{4}$|$\overline{3}$|$\overline{2}$|$\overline{1}$|

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|
|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

これは$(\mathbb{Z}/5\mathbb{Z})^\times$と同型である($\phi_{\overline{m}}$の$\overline{m}$部分だけを見た場合)。さらに、以下のように$\mathbb{Z}/4\mathbb{Z}$と同型である。

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|
|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|

||$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|
|-|-|-|-|-|
|$\overline{0}$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|
|$\overline{1}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{0}$|
|$\overline{2}$|$\overline{2}$|$\overline{3}$|$\overline{0}$|$\overline{1}$|
|$\overline{3}$|$\overline{3}$|$\overline{0}$|$\overline{1}$|$\overline{2}$|

2. $\mathbb{Z}/7\mathbb{Z}$

位数$7$となる元は$\overline{1},\overline{2},\overline{3},\overline{4},\overline{5},\overline{6}$
|$g$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|$\overline{5}$|$\overline{6}$|
|-|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}(g)$|$\overline{0}$|$\overline{1}$|$\overline{2}$|$\overline{3}$|$\overline{4}$|$\overline{5}$|$\overline{6}$|
|$\phi_{\overline{2}}(g)$|$\overline{0}$|$\overline{2}$|$\overline{4}$|$\overline{6}$|$\overline{1}$|$\overline{3}$|$\overline{5}$|
|$\phi_{\overline{3}}(g)$|$\overline{0}$|$\overline{3}$|$\overline{6}$|$\overline{2}$|$\overline{5}$|$\overline{1}$|$\overline{4}$|
|$\phi_{\overline{4}}(g)$|$\overline{0}$|$\overline{4}$|$\overline{1}$|$\overline{5}$|$\overline{2}$|$\overline{6}$|$\overline{3}$|
|$\phi_{\overline{5}}(g)$|$\overline{0}$|$\overline{5}$|$\overline{3}$|$\overline{1}$|$\overline{6}$|$\overline{4}$|$\overline{2}$|
|$\phi_{\overline{6}}(g)$|$\overline{0}$|$\overline{6}$|$\overline{5}$|$\overline{4}$|$\overline{3}$|$\overline{2}$|$\overline{1}$|

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{6}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{6}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{6}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|$\phi_{\overline{2}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{6}}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|$\phi_{\overline{4}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

これは$(\mathbb{Z}/7\mathbb{Z})^\times$と同型である($\phi_{\overline{m}}$の$\overline{m}$部分だけを見た場合)。さらに以下のように、$\mathbb{Z}/6\mathbb{Z}$、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$と同型である。

行・列並び替え
||$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{6}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{2}}$|$\phi_{\overline{6}}$|$\phi_{\overline{4}}$|

行・列並び替え、マイナス表記はイメージ
||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{6}}\mapsto\overline{-1}$|$\phi_{\overline{5}}\mapsto\overline{-2}$|$\phi_{\overline{3}}\mapsto\overline{-4}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{6}}\mapsto\overline{-1}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{5}}\mapsto\overline{-2}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{3}}\mapsto\overline{-4}$|$\phi_{\overline{3}}$|$\phi_{\overline{6}}$|$\phi_{\overline{5}}$|$\phi_{\overline{4}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|

$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$
||$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{2})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{2})$|
|-|-|-|-|-|-|-|
|$(\overline{0},\overline{0})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{2})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{2})$|
|$(\overline{0},\overline{1})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{2})$|$(\overline{0},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{2})$|$(\overline{1},\overline{0})$|
|$(\overline{0},\overline{2})$|$(\overline{0},\overline{2})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{1},\overline{2})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|
|$(\overline{1},\overline{0})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{2})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{2})$|
|$(\overline{1},\overline{1})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{2})$|$(\overline{1},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{2})$|$(\overline{0},\overline{0})$|
|$(\overline{1},\overline{2})$|$(\overline{1},\overline{2})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{0},\overline{2})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|

3. $\mathbb{Z}/8\mathbb{Z}$

(※)より$(\mathbb{Z}/8\mathbb{Z})^\times$と同型

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|
|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|
|$\phi_{\overline{3}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{3}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{3}}$|$\phi_{\overline{1}}$|

これは以下のように、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$と同型である。

||$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|
|-|-|-|-|-|
|$(\overline{0},\overline{0})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|
|$(\overline{0},\overline{1})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{0})$|
|$(\overline{1},\overline{0})$|$(\overline{1},\overline{0})$|$(\overline{1},\overline{1})$|$(\overline{0},\overline{0})$|$(\overline{0},\overline{1})$|
|$(\overline{1},\overline{1})$|$(\overline{1},\overline{1})$|$(\overline{1},\overline{0})$|$(\overline{0},\overline{1})$|$(\overline{0},\overline{0})$|

4. $\mathbb{Z}/9\mathbb{Z}$

(※)より$(\mathbb{Z}/9\mathbb{Z})^\times$と同型。また、$\mathbb{Z}/6\mathbb{Z}$、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/3\mathbb{Z}$とも同型。

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{8}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{8}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

行・列並び替え
||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{8}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|

行・列並び替え
||$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|
|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|$\phi_{\overline{8}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|$\phi_{\overline{8}}$|$\phi_{\overline{5}}$|
|$\phi_{\overline{8}}$|$\phi_{\overline{8}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|
|$\phi_{\overline{5}}$|$\phi_{\overline{5}}$|$\phi_{\overline{2}}$|$\phi_{\overline{8}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{8}}$|$\phi_{\overline{5}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{4}}$|

5. $\mathbb{Z}/15\mathbb{Z}$

(※)より$(\mathbb{Z}/15\mathbb{Z})^\times$と同型。これはまた、$\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/4\mathbb{Z}$と同型。

行$\circ$列で列が先

||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|$\phi_{\overline{11}}$|$\phi_{\overline{13}}$|$\phi_{\overline{14}}$|
|-|-|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{8}}$|$\phi_{\overline{11}}$|$\phi_{\overline{13}}$|$\phi_{\overline{14}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{14}}$|$\phi_{\overline{1}}$|$\phi_{\overline{7}}$|$\phi_{\overline{11}}$|$\phi_{\overline{13}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{13}}$|$\phi_{\overline{2}}$|$\phi_{\overline{14}}$|$\phi_{\overline{7}}$|$\phi_{\overline{11}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{4}}$|$\phi_{\overline{11}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|$\phi_{\overline{8}}$|
|$\phi_{\overline{8}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{11}}$|$\phi_{\overline{4}}$|$\phi_{\overline{13}}$|$\phi_{\overline{14}}$|$\phi_{\overline{7}}$|
|$\phi_{\overline{11}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{2}}$|$\phi_{\overline{13}}$|$\phi_{\overline{1}}$|$\phi_{\overline{8}}$|$\phi_{\overline{4}}$|
|$\phi_{\overline{13}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{14}}$|$\phi_{\overline{8}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{14}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{8}}$|$\phi_{\overline{7}}$|$\phi_{\overline{4}}$|$\phi_{\overline{2}}$|$\phi_{\overline{1}}$|

行・列並び替え
||$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|
|-|-|-|-|-|-|-|-|-|
|$\phi_{\overline{1}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|
|$\phi_{\overline{2}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|
|$\phi_{\overline{4}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|
|$\phi_{\overline{8}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|
|$\phi_{\overline{14}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|
|$\phi_{\overline{13}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|
|$\phi_{\overline{11}}$|$\phi_{\overline{11}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{4}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|
|$\phi_{\overline{7}}$|$\phi_{\overline{7}}$|$\phi_{\overline{14}}$|$\phi_{\overline{13}}$|$\phi_{\overline{11}}$|$\phi_{\overline{8}}$|$\phi_{\overline{1}}$|$\phi_{\overline{2}}$|$\phi_{\overline{4}}$|

#### 2.5.8

1. $a^{-1},b \in G$で、$i_{b}(ab)=b(ab)b^{-1}=ba$となるため、$ab,ba$は共役である。
2. $n \in Z, 1 \le n$として、
$$(ab)^n=1_G \\ \Leftrightarrow a(ba)^{n-1}b = 1_G (\because 結合則) \\ \Leftrightarrow (ba)^{n-1} = a^{-1} b^{-1} \\ \Leftrightarrow (ba)^{n-1} = (ba)^{-1} \\ \Leftrightarrow (ba)^n = 1_G $$
よって、$(ab)^n=1_G$となる$n$ の集合と、 $(ba)^n=1_G$となる$n$の集合は一致するため、$ab$と$ba$の位数は等しい。

#### 2.5.9

$g \in \mathrm{Ker}(\phi)$とすると$\phi(g)$が恒等写像になるため、$\forall x \in G$に対して
$$\phi(g)(x)=i_g(x)=gxg^{-1} = x\\ \Leftrightarrow gx = xg$$

$\mathfrak{S}_3$の乗積表は下表となり、
$$(1\;2)(1\;3) \neq (1\;3)(1\;2) \land (1\;2\;3)(2\;3) \neq (2\;3)(1\;2\;3) \land (1\;3\;2)(2\;3) \neq (2\;3)(1\;2\;3)$$
となるため、$\forall x \in G$に対して$gx=xg$となる$g \in G$は$1_G$のみ。
したがって、$\mathrm{Ker}(\phi)=\{1_G\}$となるため、p.44 命題1.5.3より$\phi$は単射。

以下の乗積表より、$\mathfrak{S}_3$の位数$2$の元の集合$S = \{ (1\;2),(2\;3),(1\;3) \}$でかつ$\mathfrak{S}_3 = \langle S \rangle$である。
p.44 命題2.5.12 より$x \in S$に対して$\psi(x)$を定めれば写像$\psi \in \mathrm{Aut}G$は一意に定まる。
$\psi$は自己同型なので準同型かつ単射、また$x \in S$の位数は$2$で有限なので、演習問題2.5.3(2)より$\psi(x)$の位数は$x$の位数と等しく $2$。
したがって、$\forall x \in S$に対して$\psi(x) \in S$となり$\psi$は元々全単射なので$\psi$の$S$への制限も全単射。
元の数が$3$の全単射なのでこれは$\mathfrak{S}_3$と同型であり位数は$6$。
これは$\psi$の決め方が$6$通りということである。

これに基づいて$\psi$の表として書き下すと対応する$g \in G$の$i_g$が存在する。
よって、$\psi \in \mathrm{Aut}G \Rightarrow \psi \in \{ i_g | g \in G \}$なので、 $\mathrm{Aut}G \subset \{ i_g | g \in G \}$。
また　p.45 (2.5.17) より$i_g \in \mathrm{Aut}G$なので、$\{ i_g | g \in G \} \subset \mathrm{Aut}G$。
従って、$\mathrm{Aut}G = \{ i_g | g \in G \}$となるため、 $\phi$は全射である。

以上により、$\phi$は全単射な準同型のため同型である。

乗積表 行$\circ$列
||$1_G$|$(1\;2)$|$(1\;3)$|$(2\;3)$|$(1\;2\;3)$|$(1\;3\;2)$|
|-|-|-|-|-|-|-|
|$1_G$|$1_G$|$(1\;2)$|$(1\;3)$|$(2\;3)$|$(1\;2\;3)$|$(1\;3\;2)$|
|$(1\;2)$|$(1\;2)$|$1_G$|$(1\;3\;2)$|$(1\;2\;3)$|$(2\;3)$|$(1\;3)$|
|$(1\;3)$|$(1\;3)$|$(1\;2\;3)$|$1_G$|$(1\;3\;2)$|$(1\;2)$|$(2\;3)$|
|$(2\;3)$|$(2\;3)$|$(1\;3\;2)$|$(1\;2\;3)$|$1_G$|$(1\;3)$|$(1\;2)$|
|$(1\;2\;3)$|$(1\;2\;3)$|$(1\;3)$|$(2\;3)$|$(1\;2)$|$(1\;3\;2)$|$1_G$|
|$(1\;3\;2)$|$(1\;3\;2)$|$(2\;3)$|$(1\;2)$|$(1\;3)$|$1_G$|$(1\;2\;3)$|

$\psi$の割当表 各行が$\psi$の割り当て方 先頭列は対応する$\mathfrak{S}_3$の元

||$1_G$|$(1\;2)$|$(1\;3)$|$(2\;3)$|$(1\;2\;3)$|$(1\;3\;2)$|$i_g$|
|-|-|-|-|-|-|-|-|
|$1_G$|$1_G$|$(1\;2)$|$(1\;3)$|$(2\;3)$|$(1\;2\;3)$|$(1\;3\;2)$|$i_{1_G}$|
|$(2\;3)$|$1_G$|$(1\;2)=(1\;2)(1\;2)(1\;2)^{-1}$|$(2\;3)=(1\;2)(1\;3)(1\;2)^{-1}$|$(1\;3)=(1\;2)(2\;3)(1\;2)^{-1}$|$(1\;3\;2)=(1\;2)(1\;2\;3)(1\;2)^{-1}$|$(1\;2\;3)=(1\;2)(1\;3\;2)(1\;2)^{-1}$|$i_{(1\;2)}$|
|$(1\;3\;2)$|$1_G$|$(1\;3)=(1\;3\;2)(1\;2)(1\;3\;2)^{-1}$|$(2\;3)=(1\;3\;2)(1\;3)(1\;3\;2)^{-1}$|$(1\;2)=(1\;3\;2)(2\;3)(1\;3\;2)^{-1}$|$(1\;2\;3)=(1\;3\;2)(1\;2\;3)(1\;3\;2)^{-1}$|$(1\;3\;2)=(1\;3\;2)(1\;3\;2)(1\;3\;2)^{-1}$|$i_{(1\;3\;2)}$|
|$(1\;2)$|$1_G$|$(1\;3)=(2\;3)(1\;2)(2\;3)^{-1}$|$(1\;2)=(2\;3)(1\;3)(2\;3)^{-1}$|$(2\;3)=(2\;3)(2\;3)(2\;3)^{-1}$|$(1\;3\;2)=(2\;3)(1\;2\;3)(2\;3)^{-1}$|$(1\;2\;3)=(2\;3)(1\;3\;2)(2\;3)^{-1}$|$i_{(2\;3)}$|
|$(1\;2\;3)$|$1_G$|$(2\;3)=(1\;2\;3)(1\;2)(1\;2\;3)^{-1}$|$(1\;2)=(1\;2\;3)(1\;3)(1\;2\;3)^{-1}$|$(1\;3)=(1\;2\;3)(2\;3)(1\;2\;3)^{-1}$|$(1\;2\;3)=(1\;2\;3)(1\;2\;3)(1\;2\;3)^{-1}$|$(1\;3\;2)=(1\;2\;3)(1\;3\;2)(1\;2\;3)^{-1}$|$i_{(1\;2\;3)}$|
|$(1\;3)$|$1_G$|$(2\;3)=(1\;3)(1\;2)(1\;3)^{-1}$|$(1\;3)=(1\;3)(1\;3)(1\;3)^{-1}$|$(1\;2)=(1\;3)(2\;3)(1\;3)^{-1}$|$(1\;3\;2)=(1\;3)(1\;2\;3)(1\;3)^{-1}$|$(1\;2\;3)=(1\;3)(1\;3\;2)(1\;3)^{-1}$|$i_{(1\;3)}$|
