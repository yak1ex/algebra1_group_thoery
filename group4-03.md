# 代数学1 群論入門

## 4.3 交換子群と可解群

### メモ

#### p.102 命題4.3.4(1)

* $G_{i+1}\triangleleft G$ なので $h\in G_{i+1},g\in G\Rightarrow ghg^{-1}\in G_{i+1}$ となり $G_i\subset G$ なので $h\in G_{i+1},g\in G_i\Rightarrow ghg^{-1}\in G_{i+1}$ となって $G_{i+1}\triangleleft G_i$

行間を埋めたい

* $N\triangleleft G\land N\supset[G,G]\Rightarrow G/N\text{は可換群}$ ※p.101 命題4.3.2(2)の逆
  * https://okwave.jp/qa/q5072303.html
* $G_{i+1}\subset G_i\land G_{i+1}\triangleleft G\land G_i/G_{i+1}\subset Z(G/G_{i+1})\Rightarrow[G,G_i]\subset G_{i+1}$
  * https://iwai-math-blog.com/chuushinnretsu-central-series/

##### 補題1 $N\triangleleft G\land N\supset[G,G]\Rightarrow G/N\text{は可換群}$

$G/N$ の任意の要素は $a,b\in G$ を用いて $aN,bN$ と書き表せる。また群が逆元で閉じているので $a^{-1},b^{-1}\in G$ だから $a^{-1}b^{-1}ab=a^{-1}b^{-1}(a^{-1})^{-1}(b^{-1})^{-1}\in[G,G]\subset N$ である。このとき、 $(bN)(aN)=baN=(ba(a^{-1}b^{-1}abN))=abN=(aN)(bN)$ となるため $G/N$ は可換群である。

※p.101 命題4.3.2(2) と合わせると、 $N\triangleleft G$ のとき $N\supset[G,G]\Leftrightarrow G/N\text{は可換群}$ 。というか↓で良い。

$$
\begin{array}{ll}
&N\supset[G,G]\\
\Leftrightarrow&aba^{-1}b^{-1}\in N\\
\Leftrightarrow&aba^{-1}b^{-1}N=N\\
\Leftrightarrow&(aN)(bN)(a^{-1}N)(b^{-1}N)=N\\
\Leftrightarrow&(aN)(bN)=(bN)(aN)\\
\Leftrightarrow&G/N\text{は可換群}
\end{array}
$$

##### 補題2 $G_{i+1}\subset G_i\land G_{i+1}\triangleleft G\land G_i/G_{i+1}\subset Z(G/G_{i+1})\Rightarrow[G,G_i]\subset G_{i+1}$

$G_i/G_{i+1}\subset Z(G/G_{i+1})$ のとき、$\forall g\in G, \forall h\in G_{i+1}$ について、

$$
\begin{array}{lll}
ghg^{-1}h^{-1}G_{i+1}&=&(gG_{i+1})(hG_{i+1})(g^{-1}G_{i+1})(h^{-1}G_{i+1})\\
&=&(hG_{i+1})(gG_{i+1})(g^{-1}G_{i+1})(h^{-1}G_{i+1})\\
&=&G_{i+1}
\end{array}
$$

となるため、 $[g,h]=ghg^{-1}h^{-1}\in G_{i+1}$ である。 $[G,G_i]$ の生成元がすべて $G_{i+1}$ に含まれるため、 $[G,G_i]\subset G_{i+1}$

※逆に、 $[G,G_i]\subset G_{i+1}$ とすると、 $\forall g\in G, \forall h\in G_i$ について、 $ghg^{-1}h^{-1}\in G_{i+1}$ なので、

$$
\begin{array}{lll}
G_{i+1}&=&ghg^{-1}h^{-1}G_{i+1}\\
&=&(gG_{i+1})(hG_{i+1})(g^{-1}G_{i+1})(h^{-1}G_{i+1})
\end{array}
$$

右から $(hG_{i+1})(gG_{i+1})$ かけると ( $G_{i+1}$ は単位元なので) $(hG_{i+1})(gG_{i+1})=(gG_{i+1})(hG_{i+1})$
すなわち、 $hG_{i+1}\in G_i/G_{i+1}$ が $G/G_{i+1}$ の任意の元と可換なので、 $G_i/G_{i+1}\subset Z(G/G_{i+1})$
したがって、実際には $G_i/G_{i+1}\subset Z(G/G_{i+1})\Leftrightarrow[G,G_i]\subset G_{i+1}$

##### メモ

※交換子群が単位元からなる群となることと元の群が可換であることは同値
$ghg^{-1}h^{-1}=1\Leftrightarrow gh=hg$

#### p.102 命題4.3.4(2)

$G_i=\lbrace1\rbrace\supset G_{i+1}=\lbrace1\rbrace\supset\cdots\supset G_n=\lbrace1\rbrace$

とできるので、 $G_{n-1}\neq\lbrace1\rbrace$ となりうるから「 $G_i\neq\lbrace1\rbrace$ となる最大の $i$ 」という表現になる。

#### 例4.3.5

$G=G_0\supset G_1=\lbrace1\rbrace$ で $G/\lbrace1\rbrace\cong G$ が可換群

#### 例4.3.6

* p.73 演習問題2.8.2 から指数が2の部分群は正規部分群
* p.53 命題2.6.22 位数が素数の群なら巡回群
* p.67 例2.10.6 位数 $n$ の巡回群は $\mathbb{Z}/n\mathbb{Z}$ と同型
* p.34 命題2.3.19 巡回群は可換群である

#### 例4.3.7

第2版命題4.3.4(3)参照
$N$ ：クラインの四元群は可換なので可解群

#### 例4.3.8

$G_1$ が群演算で閉じていることは明らか。

$G_1\subset Z(G)$ なので $\forall g\in G, \forall h\in G_1$ に対して $g h g^{-1}=h g g^{-1} = h\in G_1$ であるから $G_1\triangleleft G$

$G_1/G$ の各類の元は $(1,3)$ 成分だけ異なる

$*$ は $G/G_1$ について語る際には $(1,3)$ 成分は不問なのでこの表記。

#### 命題4.3.9

p.101 命題4.3.2(2)より $D(G_i)=[G_i,G_i]\subset G_{i+1}$

帰納的に、とは
1. $G_1\triangleleft G_0=G$ かつ $G_1/G_0=G_1/G$ が可換群なので p.101 命題4.3.2(2)より $D_1(G)=[G,G]\subset G_1$
2. $D_i(G)\subset G_i$ と仮定すると、 $D_{i+1}(G)=[D_i(G),D_i(G)]=D(D_i(G))\subset D(G_i)\subset G_{i+1}$

$D_n(G)\subset G_n=\lbrace1\rbrace$ で $D_n(G)\neq\emptyset$ なので $D_n(G)=\lbrace1\rbrace$

逆は p.101 命題4.3.2(1)から

※この命題から可解群を構成するなら交換子列を作ればいいし、p.101 命題4.3.2(2)から $[G,G]$ が剰余群が可換群となる最小の正規部分群であることが言えるので最短になるはず

#### 命題4.3.10

第2版では証明あり、命題4.3.9と同様

#### 定義4.3.11

第1版と第2版で単純群の定義が異なる
第1版：群 $G$ が可換群でなく、自明でない正規部分群を持たないなら $G$ を単純群という
第2版(p.115 定義4.3.10)：自明でない群 $G$ が正規部分群を持たないなら $G$ を単純群という
この記載の変更によって演習問題4.5.9を「単純群」から「非可換単純群」に修正する必要がある(正誤表あり)

#### 命題4.3.12

$G$ が単純群だとするとその正規部分群は $\lbrace1\rbrace$ しかないが $G/\lbrace1\rbrace\cong G$ が可換群ではないので可解群にならない。

### 演習問題

#### 4.3.1

1. $\sigma=(1\hspace{5mu}2\hspace{5mu}3), \tau=(2\hspace{5mu}3)$ のとき、 $[\sigma,\tau]=\sigma\tau\sigma^{-1}\tau^{-1}=(1\hspace{5mu}2\hspace{5mu}3)(2\hspace{5mu}3)(1\hspace{5mu}3\hspace{5mu}2)(2\hspace{5mu}3)=(1\hspace{5mu}3\hspace{5mu}2)$
2. $[i,j]=iji^{-1}j^{-1}=ij(-i)(-j)=kk=-1$

※ $D(\mathfrak{S}_3)=[\mathfrak{S}_3,\mathfrak{S}_3]=\langle(1\hspace{5mu}2\hspace{5mu}3)\rangle$ で $\mathfrak{S}_3\supset D(\mathfrak{S}_3)=\langle(1\hspace{5mu}2\hspace{5mu}3)\rangle\supset\lbrace1\rbrace$ という交換子列になる

#### 4.3.2

$X\in N_i$ であることと以下の条件( $\ast$ )は同値である。

$$
X_{uv}=
\begin{cases}
0 & (u\gt v) \\
1 & (u = v) \\
0 & (u\lt v\le u+i-1)
\end{cases}
$$

1. $N_i$ が単位元を含むことは自明。↓から積、逆元について閉じているため $N_i$ は $\mathrm{GL}_n(\mathbb{C})$ の部分群である。
2. 
3. 明らかに $N_i\subset N_1$ なので $[N_i,N_i]\subset[N_1,N_i]\subset N_{i+1}$

##### $N_i$ が積について閉じている

$X,Y\in N_i$ として $(XY)_{uv}=\sum_{w=1}^n X_{uw}Y_{wv}$
a) $u\gt v$ のとき
$w\gt v$ のとき $Y_{wv}=0$ 、 $u\gt w$ のとき $X_{uw}=0$ で、 $w\gt v$ か $u\gt w$ のいずれかは成立するため $(XY)_{uv}=\sum_{w=1}^n X_{uw}Y_{wv}=0$ である。
b) $u=v$ のとき
$u=v\gt w$ のとき $X_{uw}=0$ 、 $v\gt u=v$ のとき $Y_{wv}=0$ 、 $u=v=w$ のとき $X_{uw}=Y_{wv}=1$ なので、 $(XY)_{uv}=\sum_{w=1}^n X_{uw}Y_{wv}=1$ である。
c) $u\lt v\le u+i-1$ のとき 
$u\gt w$ のとき $X_{uw}=0$ 、
$u=w$ のとき $w\lt v\le w+i-1$ だから $Y_{wv}=0$ 、
$u\lt w\le v$ のとき $u\lt w\le v \le u+i-1$ なので $X_{uw}=0$ 、
$w\gt v$ のとき $Y_{wv}=0$
なので $(XY)_{uv}=\sum_{w=1}^n X_{uw}Y_{wv}=0$ である。
a),b),c)より( $\ast$ )の条件を満たすため、 $XY\in N_i$

##### $N_i$ が逆元(逆行列)について閉じている

成分表示が

$$
(R_{s,t,c})_{uv}=
\begin{cases}
1 & (u=v) \\
c & (u=s, v=t) \\
0 & \text{otherwise}
\end{cases}
$$

となる行列 $R_{s,t,c}$ を考えると左からかけると $i$ 行に $j$ 行の $c$ 倍を加える変形、右からかけると $j$ 列に $i$ 行の $c$ 倍を加える変形となる。
また、 $t-s\ge n-i$ であれば $R_{s,t,c}\in N_i$
$X\in N_i$ について右上の $\ast$ 領域の要素 $X_{uv}(v-u\ge n-i)$ を考えると $v$ 行で $0$ 以外の要素は $X_{vv}=1$ だけなので $R_{u,v,-X_{uv}}$ を左からかけることで $X_{uv}$ のみ変化して $0$ にできる。このとき $u-v\ge n-i$ なので $R_{u,v,-X_{uv}}\in N_i$ である。 これを繰り返して $\ast$ 領域すべての要素を $0$ にできるので $R_1\cdots R_mX=I_n$ 。また、 $u$ 列で $0$ 以外の要素は $X_{uu}=1$ だけなので $R_{u,v,-X_{uv}}$ を右からかけることで $X_{uv}$ のみ変化して $0$ にできる。これを繰り返して $\ast$ 領域すべての要素を $0$ にでき、またこれらの操作の順番は問わないので $XR_1\cdots R_m=I_n$ とできる。よって、 $R_1\cdots R_m\in N_i$ が $X$ の逆行列となり $N_i$ が積について閉じているため $R_1\cdots R_m\in N_i$ となるから $N_i$ は逆行列について閉じている。

※「またこれらの操作の順番は問わないので」←間違い、上の行、左の列から並べていけば、左からかえた場合と右からかけた場合で逆行列にできることは言えるはず

##### メモ

※1.ブロック的に表現して帰納的に証明？
※2. $[N_1,N_i]\subset N_{i+1}\Leftrightarrow\forall x\in N_1,\forall y\in N_i, xyN_{i+1}=yxN_{i+1}$ ref. 命題4.3.4の議論
