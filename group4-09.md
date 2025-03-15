# 代数学1 群論入門

## 4.9 交代群

### メモ

#### 復習：交代群

>p.47 例2.5.11 $A_n=\mathrm{Ker}(\mathrm{sgn})$ とおき、 $A_n$ のことを $n$ 次交代群という

$\mathfrak{S}_n$ の偶置換集まり

#### 復習：単純群、可解群

>p.115 定義4.3.10 自明でない群 $G$ が正規部分群を持たないなら、 $G$ を単純群という

「自明あるいは自身以外の正規部分群を持たない」あたりが正確？

>第1版 p.104 定義4.3.11 群 $G$ が可換群ではなく、自明でない正規部分群を持たないなら、 $G$ を単純群という

>p.112 定義4.3.3(1) $G$ の部分群の列 $G=G_0\supset G_1\supset\cdots\supset G_n=\lbrace1\rbrace$ があり、 $i=0,\cdots,n-1$ に対し、 $G_{i+1}\triangleleft G_i$ で $G_i/G_{i+1}$ がアーベル群となるとき、 $G$ を可解群という 

>p.115 命題4.3.11 $G$ が非可解単純群なら、可解群ではない

>p.115 命題4.3.12 $G$ が可解単純群なら、素風 $p$ があり、 $G\cong\mathbb{Z}/p\mathbb{Z}$ となる

#### $A_2,A_3,A_4$

$A_2=\lbrace1_{A_2}\rbrace$ なので自分自身＝自明な部分群しか正規部分群を持たない(ただし可換群である)
$A_3=\lbrace1_{A_3},(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2)\rbrace$ なので自分自身と自明な部分群しか正規部分群を持たない(ただし可換群である)
$A_4=\langle\lbrace(1\hspace{5mu}2)(3\hspace{5mu}4),(1\hspace{5mu}2\hspace{5mu}3)\rbrace\rangle$
$A_4$ の正規部分群がクラインの四元群( $\lbrace1_G,(1\hspace{5mu}2)(3\hspace{5mu}4),(1\hspace{5mu}3)(2\hspace{5mu}4),(1\hspace{5mu}4)(2\hspace{5mu}3)\rbrace$ と同型)

#### p.138 補題4.9.1

$\lbrace i,j\rbrace\cap\lbrace k,l\rbrace=\emptyset$ なら、 $(i\hspace{5mu}j)(k\hspace{5mu}l)=(i\hspace{5mu}j\hspace{5mu}k)(j\hspace{5mu}k\hspace{5mu}l)$

$(i\hspace{5mu}j)(k\hspace{5mu}l)=(i\hspace{5mu}j)(j\hspace{5mu}k)(j\hspace{5mu}k)(k\hspace{5mu}l)=(i\hspace{5mu}j\hspace{5mu}k)(j\hspace{5mu}k\hspace{5mu}l)$

長さ $3$ の循環置換の積で表現されることに加えて「逆に偶数個の互換の積は $A_n$ の元である」が重要

#### p.138 定理4.9.3

※正規部部群が自明な部分群以外であれば自分自身となることでもって単純群であることを示す形

$N$ が長さ $3$ の巡回置換を含むことが示せれば、 $N$ はその共役を全て含む
→正規部分群の定義から

$\sigma$ は互換なので、 $a\le n-3$ である → $\sigma\in N\triangleleft A_n$ なので偶置換でなければならない

$\tau\sigma\tau^{-1}\in N$ なので → $N$ は正規部分群なので $\forall \tau\in A_n,
\forall\sigma\in N$ で $\tau\sigma\tau^{-1}\in N$

※ $k\ge5$ で $\sigma(k)\neq k\land\sigma^\prime(k)=k$ の場合もあるかもしれないが $\sigma^\prime$ が固定する元が増える方なので議論は問題ない。

$\sigma^\prime$ により不変な数字の個数は $a$ より大きい
→ $k\ne1,2,3,4,5$ では $\sigma^\prime$ によって不変な数字の個数は少なくとも $\sigma$ によるもの以上である。また、少なくとも $\sigma(1)\ne1,\sigma(2)\ne2,\sigma(3)\ne3,\sigma(4)\ne4$ なので $k=1,2,3,4,5$ だと高々 $1$ つしか $\sigma$ では不変にならないが、 $\sigma^\prime(1)=1,\sigma^\prime(2)=2$ なので $\sigma^\prime$ で不変な個数は $2$ となり $\sigma$ によるものより大きくなる。よって全体でも大きい。

$\sigma^\prime(3)=5\ne3$ なので、 $\sigma^\prime\ne1$ だが、これは矛盾である → $\sigma$ の選び方( $a$ の最大性)に矛盾する

「 $\sigma\neq(i_{11}\hspace{5mu}i_{12}\hspace{5mu}i_{13})$ と仮定して矛盾を導く」は $a\neq n-3$ と考えたほうがわかりやすいかも

「議論は同様なので、 $i_{11}=1,i_{12}=2,i_{13}=3$ とする」あたりは $l_1\ge3$ なので $\sigma$ の先頭部分が $\sigma=(1\hspace{5mu}2\hspace{5mu}3\cdots)\cdots$ と置ける(仮定し直す)形で、「 $\sigma\ne:_q(i_{11}\hspace{5mu}i_{12}\hspace{5mu}i_{13})$ と仮定して」とは別の話になっている

$\tau\sigma\tau^{-1}=(1\hspace{5mu}2\hspace{5mu}4\cdots)\cdots$ となるので、
$\sigma^{-1}(3)=2,\tau\sigma\tau^{-1}(2)=4$ だから $\sigma^\prime(3)=4$
また、 $\sigma^{-1}(2)=1,\tau\sigma\tau^{-1}(1)=2$ だから $\sigma^\prime(2)=2$

##### 証明の流れ

* 長さ3の巡回置換を1つでも含めばその共役(長さ3の巡回置換)全てを含むので補題4.9.1, 4.9.2より $N=A_n$
  * 長さ3の巡回置換を1つでも持つことを言う
    * $a=n-2$ だと $\sigma$ が互換になるので矛盾
    * ※「 $a=n-3$ であることを示す」 ＝ 後段での「 $\sigma\neq$ $(i_{11}\hspace{5mu}i_{12}\hspace{5mu}i_{13})$ と仮定して矛盾を導く」と同じ 以下より $a=n-3$ のケースしか存在しない
      * $l_1=\cdots=l_t=2$ 互換の積となる場合は矛盾
      * $l_1\ge3$
        * $a=n-4\Leftrightarrow l_1=4\Leftrightarrow\sigma=(i_{11}\hspace{5mu}i_{12}\hspace{5mu}i_{13}\hspace{5mu}i_{14})$ が矛盾
        * $a\le n-5$ の場合も矛盾

##### メモ

$\sigma^\prime=\tau\sigma\tau^{-1}\sigma^{-1}$ は交換子

#### p.139 系4.9.4

>p.114 命題4.3.9(1) $G$ が可解群であることと $D_n(G)=\lbrace1\rbrace$ となる $n\gt0$ があることは同値である

>p.111 定義4.3.1 $G$ を群とする。 (1) $a,b\in G$ に対し、 $[a,b]=aba^{-1}b^{-1}$ とおき、 $a,b$ の交換子という (2) $H,K\subset G$ が部分群なら $\lbrace[a,b]\mid a\in H,b\in K\rbrace$ で生成される $G$ の部分群を $[H,K]$ と書く

定義から $G\supset H$ ならば $[G,G]\supset[H,H]$ である

>p.112 命題4.3.2(1) $H,K\triangleleft G$ なら、 $[H,K]\triangleleft G$ 。特に $[G,G]\triangleleft G$ である

>p.114 $D_1(G)=[G,G], D_{i+1}(G)=[D_i(G),D_i(G)](i=1,2,\cdots)$ と定義すると $G\supset D_1(G)\supset D_2(G)\supset\cdots$ である。これを交換子列という

「帰納法により」： $G\supset H$ を前提として $D_1(G)=[G,G]\supset H$ を言ったので同様の論法で $D_i(G)\supset H$ から $D_{i+1}(G)=[D_i(G),D_i(G)]\supset H$ が言える。
※帰納法において $H$ は固定されている。

### 演習問題

#### 4.9.1

$(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4\hspace{5mu}5)=(1\hspace{5mu}4\hspace{5mu}5)(1\hspace{5mu}2\hspace{5mu}3)$

#### 4.9.2

1. $A_5$ から $\mathfrak{S}_2,\mathfrak{S}_3,\mathfrak{S}_5$ への置換表現が存在したとする...
2. $A_5$ が位数 $15,20,30$ の部分群が持たないことを証明せよ

#### 4.9.3

$G$ が位数 $60$ の単純群なら $G\cong A_5$ を証明せよ

1. $n\ge3$ なら $\mathfrak{S}_n$ の指数 $2$ の部分群は $A_n$ のみであることを証明せよ
2. $G$ が $|S|\gt5$ に自明でない作用を持てば $G\cong A_5$ であることを証明せよ
3. $G$ のシロー3部分群、シロー5部分群の数は 10,6 であることを証明せよ
4. $G$ の元で位数が 3,5 でないものの個数はいくつか？
5. $G$ が位数 $10$ の元を持てば、 $G$ には位数 $10$ の元が少なくとも $12$ 個あることを示し矛盾を導け
6. $x\in G$ の位数が $2$ なら $|Z_G(x)|=4$  であることを証明せよ
7. $H_1\ne H_2$ が $G$ のシロー $2$ 部分群なら $H_1\cap H_2=\lbrace1\rbrace$ であることを証明せよ
8. $G$ のシロー $2$ 部分群の数は $5$ であることを証明せよ → $G\cong A_5$

#### 4.9.4

$n\ge3, n\ne6$ 、 $\phi$ は $A_n$ の自己同型

1. $A_n=\langle\lbrace(1 i j)\mid i,j\ne1,i\ne j\rbrace\rangle$ を証明せよ
2. $\sigma\in A_n$ が長さ $3$ の巡回置換なら $\phi(\sigma)$ も長さ $3$ の巡回置換であることを証明せよ
3. $3\le i\ne j\le n$ なら、 $\phi((1 2 i)),\phi((1 2 j))$ は最初の2つの数字が同じ長さ $3$ の巡回置換であることを証明せよ
4. $a_1,\cdots,a_n\in\lbrace1,\cdots,n\rbrace$ が存在し、 $\phi((1 2 i))=(a_1 a_2 a_i)(i=3,\cdots,n)$ となることを証明せよ
5. $\sigma\in\mathfrak{S}_n$ が存在して、 $\phi$ は $\sigma$ による内部自己同型の $A_n$ への制限であることを証明せよ
