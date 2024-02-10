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

### 演習問題
