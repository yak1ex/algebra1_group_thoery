# 代数学1 群論入門

## 4.7 位数12の群の分類

### メモ

#### $D_6(\cong\mathfrak{S}_3\times\mathbb{Z}/2\mathbb{Z})$

はどこかで言われている？
対角線3本の対応と半転分と考えることはできるかも

$\tau^2=1,\rho^6=1,\rho\tau\rho=\tau^{-1}$

#### (3)(4)(5)はアーベル群ではない

(3) $((1\hspace{5mu}2)(2\hspace{5mu}3))((2\hspace{5mu}3)(1\hspace{5mu}2))=1_{A_4}\neq(((2\hspace{5mu}3)(1\hspace{5mu}2))(1\hspace{5mu}2)(2\hspace{5mu}3))$
(4) $r^2=1\land rtr=t^{-1}\Rightarrow rt=t^{-1}r$ より。また直積の要素 $\mathfrak{S}_3$ がアーベル群ではない
(5) $xy=y^2x$ で $y=y^2$ だと位数 $12$ の群にならない

#### 命題4.1.10より、 $D_6$ の元の位数は $6$ の約数である

命題4.1.10(3) $rt^i$ の位数は $2$ 、 $t^i$ は位数 $6$ の巡回群の元なので位数は $6$ の約数

#### (5)には位数 $4$ の元がある

第2版 p.125 例題4.6.7で全ての元が $y^ix^j$ で書き表されている
よって $x^j(j=1,2,3)$ はすべて異なるから $x$ の位数は $4$
続く $\mathfrak{S}_{12}$ での具体的な実現の $\sigma$ は位数 $4$

#### ※可換性、位数 $4$ の元、位数 $6$ の元で分類できている

可換だったら位数 $6$ の元は必ずある
位数 $4$ の元も位数 $6$ の元も持たない場合は存在しない

#### $H$ が位数 $4$ の元を持てば、 $H\cong\mathbb{Z}/4\mathbb{Z}$ である

第2版 p.43 命題2.4.20より位数 $4$ の元を $x$ とすると $|\langle x\rangle|=4=|H|$ なので $H=\langle x\rangle$ である。
第2版 p.73 例2.10.6より $\langle x\rangle\cong\mathbb{Z}/4\mathbb{Z}$ なので $H\cong\mathbb{Z}/4\mathbb{Z}$ である。

#### $H$ はアーベル群なので、 $H_1,H_2$ は $H$ の正規部分群である

第2版 p.60 例2.8.2よりアーベル群の部分群は正規部分群である

#### $H\cong H_1\times H_2$

第2版 p.66 命題2.9.2より

#### $12/3=4$ なので、 $K$ の共役の個数は 1,2 または 4 である

$|G|=12,|K|=3$
第2版 p.119 命題4.5.6より $K$ と共役な部分群の数は $|G/N_G(K)|$
第2版 p.104 定義4.1.27 $N_G(H)=\lbrace g\in G\mid gHg^{-1}=H\rbrace$ より $N_G(K)\supset K$
※ $N_G(H)$ は $H$ を正規部分群として含む最大の $G$ の部分群

#### $i\neq j$ なら、 $K_i\cap K_j\varsubsetneqq K_i$ だが、

$K_i\cap K_j\subset K_i$ は明らか
$K_i\cap K_j=K_i\Rightarrow K_i\varsubsetneqq K_j\Rightarrow|K_i|\lt|K_j|$ となって共役であることに矛盾する

#### $|K_i|=3$ は素数なので、 $K_i\cap K_j=\lbrace1\rbrace$

$|K_i|=3$ は素数なので $K_i\cong\mathbb{Z}/3\mathbb{Z}$
$1$ 以外に共通の元があるとすると位数 $3$ の元で生成元となるので $K_i=K_j$ になってしまう

あるいは $K_i\cap K_j$ が $K_i$ の部分群なので位数は $1$ か $3$ 、位数 $3$ は $K_i=K_j$ となるので矛盾

$K_i\cap K_j$ が $K_i$ の部分群であることは、単位元、逆元、演算が閉じていることからわかる

#### 位数が $2,4$ の元は $G\backslash(S\cup\lbrace1\rbrace)$ の元になるが、 $|G\backslash(S\cup\lbrace1\rbrace)|=3$ なので、 $H$ の共役の可能性としては $G\backslash S$ 以外ありえない

$H$ の元の位数は $H$ の位数である $4$ の約数、
($H$ が位数 $4$ の元を持てば、 $H\cong\mathbb{Z}/4\mathbb{Z}$ である。このとき元の位数は $1,2,4$
$H$ が位数 $4$ の元を持たなければ、単位元以外の元の位数は $2$ である。このとき元の位数は $1,2$ ※ このとき $H=\mathbb{Z}/2\mathbb{Z}\times\mathbb{Z}/2\mathbb{Z}$ であることも言っている)
なので $H$ (および $H$ の共役＝内部自己同型で写った先)の元の位数は $1,2,4$ の可能性しかない。

#### $H,K$ のどちらかは正規部分群なので、 $HK\subset G$ は部分群である

第2版 p.72 定理2.10.3(第二同型定理)(1)より

#### $g\in\bigcap^4_{i=1}N_G(K_i)$

$gK_ig^{-1}=K_i$ と $N_G(H)$ の定義から $g\in N_G(K_i)$

#### $\bigcap^4_{i=1} K_i=\lbrace1\rbrace$ となる

同じページの上の議論で $i\ne j$ なら、 $K_i\cap K_j=\lbrace1\rbrace$ を言っている

#### したがって、 $\phi$ は単射である

第2版 p.49 命題2.5.15より

#### $\phi$ が単射なので、 $g\in G$ が位数 $3$ の元なら、 $\phi(g)$ も位数 $3$ の元である

第2版 p.100 命題4.1.12より置換表現 $\phi$ は群の準同型である
第2版 p.78 演習問題2.5.3(2) より準同型 $\phi$ が単射なら(有限位数の元) $g$ の位数と $\phi(g)$ の位数は等しい

#### $\psi\in\mathrm{Aut}K$ なら、 $\psi(\bar{1})\in K$ は位数 $3$ の元である

内部自己同型は当然単射準同型なので↑と同じ議論

#### $\psi(\bar{1})=\bar{1},\bar{2}$ である

の可能性がある、くらいが正しいと思う。
$\psi(\bar{1})=\bar{1}$ は恒等写像のケースなので存在することは自明、
$\psi(\bar{1})=\bar{2}$ の場合が存在することの議論が続いているはず。

#### 余談：積と自己同型射像

#### $f\circ f$ が恒等写像なので、 $f$ は同型である

第2版 p.20 演習問題1.1.6(3) $g\circ f$ が全射なら $g$ も全射
第2版 p.20 演習問題1.1.6(4) $g\circ f$ が単射なら $f$ も単射
なので $f$ は全単射
$f$ は準同型だったので同型になる

#### $\phi(H)\subset\mathrm{Aut}K$ が自明なら

$\phi(H)\subset\mathrm{Aut}K$ が単位元のみならば(自明な同型写像＝恒等写像のみならば)5
ここで「自明」という用語を使うのは紛らわしいと思う

#### 上の考察により、 $ab\neq ba$ である

$ab=ba$ とすると $aba^{-1}=b$ 、これは $\phi(a)(\bar{1})=\bar{1}$ になって $\phi(H)=\lbrace1\rbrace$ となる場合なので $H$ が正規部分群となり矛盾

より簡潔には $G$ の任意の元は $a^ib^j$ の形にかけて $a,b$ が可換になるので
任意の元 $g=a^ib^j\in G, h=a^k\in H$ について $ghg^{-1}=(a^ib^j) a^k (a^ib^j)^{-1}=a^k=h$ となって $H\triangleleft G$ となるため矛盾

#### $|\mathrm{Aut}K|=2$ なので、 $\mathrm{Ker}(\phi)\neq\lbrace1\rbrace$ である

$\phi:H\rightarrow\mathrm{Aut}K$ は準同型
準同型定理より $H/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=\mathrm{Aut}K$ なので
ラグランジュの定理より $|\mathrm{Ker}(\phi)|=|H|/|\mathrm{Aut}K|=2$

### 演習問題

### 4.7.1

p.98 命題4.1.10より、二面体群 $D_p$ は $t^p=1,r^2=1,rtr=t^{-1}$ を満たす $t,r$ で生成され、位数は $2p$ である。

$2$ と $p$ はともに素数なので、シロー $2$ 部分群 $H$ とシロー $p$ 部分群 $K$ が存在し、 $|H|=2,|K|=p$ 、また、 $H,K$ は巡回群となるのでそれぞれ生成元 $a,b(\neq1)$ をとると $H=\langle a\rangle,K=\langle b\rangle$ となる。

$|K|=p$ なので指数は $2$ だから、p.81 演習問題2.8.2より $K\triangleleft G$ であり、 $aba^{-1}=aba\in K$ 。
また $a$ の位数は $2$ なので $a\notin K$ であるから $G=K\cup aK$ である。すなわち $G$ は $a,b$ で生成される。

$aba\in K$ なので $aba=b^n(n=0,\cdots,p-1)$ と置くことができる。
$n=0$ の場合、 $aba=1_G$ から $b=1_G$ となるため $b$ が生成元であることに矛盾する。
$n=1$ の場合、 $ab=ba$ となり $G$ が非アーベル群であることと矛盾する。
$n=2,\cdots,p-2$ の場合、
$n=p-1$ の場合、 $aba=b^{p-1}=b^{-1}$ となり $a,b$ が関係式 $b^p=1,a^2=1,aba=b^{-1}$ を満たす。

### 4.7.2

#### メモ

シロー $p$ 部分群と共役な部分群は位数が一致しているので(共役は $G$ の内部自己同型で対応しているため)同様にシロー $p$ 部分群となる。よって p.119 定理4.5.7 (3) 「$G$ のすべてのシロー $p$ 部分群は共役である」ことから、シロー $p$ 部分群が $1$ つしかなければ共役な部分群が $1$ つしかないことも言える。

### 4.7.3

### 4.7.4

### 4.7.5
