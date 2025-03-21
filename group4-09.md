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

#### 4.9.2 (2)が担当

>p.100 命題4.1.12 (置換表現) $\rho:G\rightarrow\mathfrak{S}_n$ は群の準同型である
>p.61 命題2.8.3 $G_1,G_2$ が群で、 $\phi:G_1\rightarrow G_2$ が準同型なら、 $\mathrm{Ker}(\phi)$ は $G_1$ の正規部分群である
>p.115 定義4.3.10 自明でない群 $G$ が正規部分群を持たないなら、 $G$ を単純群という
>※ $G$ が自分自身か自明以外の正規部分群を持たないなら
>p.49 命題2.5.15 $\phi:G_1\rightarrow G_2$ が準同型なら、次の(1)(2)は同値である (1) $\phi$ は単射である (2) $\mathrm{Ker}(\phi)=\lbrace1_{G_1}\rbrace$

1. $A_5$ から $\mathfrak{S}_2,\mathfrak{S}_3,\mathfrak{S}_5$ への置換表現が存在したとすると、命題4.1.12より置換表現 $\rho$ は群の準同型となる。命題2.8.3より $\mathrm{Ker}(\phi)$ は $A_5$ の正規部部群となるが、 $A_5$ が単純群であることから $\mathrm{Ker}(\phi)$ は $\lbrace1\rbrace$ あるいは $A_5$ 自身となる。 $\mathrm{Ker}(\phi)=\lbrace1\rbrace$ とすると命題2.5.15より $\phi$ は単射となるが、 $|A_5|=60,|\mathfrak{S}_2|=2,|\mathfrak{S}_3|=6,|\mathfrak{S}_4|=24$ より $|A_5|>|\mathfrak{S}_2|,|\mathfrak{S}_3|,|\mathfrak{S}_4|$ であるから矛盾する。　$\mathrm{Ker}(\phi)=A_5$ の場合は $\phi$ は自明な作用である。以上により、 $A_5$ は $\mathfrak{S}_2,\mathfrak{S}_3,\mathfrak{S}_5$ への自明でない置換表現を持たない。
2. $A_5$ が位数 $15,20,30$ の部分群 $H$ を持つと仮定し、 $A_5/H$ に対する自然な作用を考えるとそれぞれ $\mathfrak{S}_4,\mathfrak{S}_3,\mathfrak{S}_2$ への置換表現 $\rho$ が存在するはずであるが、(1)より自明な置換表現しか持たない。しかし、元 $x\notin H$ を考えた場合に、$xH\neq H$ となるので自明な表現しか持たないことに矛盾する。よって、 $A_5$ は位数 $15,20,30$ の部分群を持たない。

#### 4.9.3 (1),(5)が担当

>p.81 演習問題2.8.2 $H$ を群 $G$ の指数 $2$ の部分群とする。このとき、 $H$ は $G$ の正規部分群であることを証明せよ
>p.138 定理4.9.3 交代群 $A_n$ は $n\ge5$ なら単純群である
>p.72 定理2.10.3(第二同型定理) $H,N$ を群 $G$ の部分群で $N\triangleleft G$ とする。 (2) $H\cap N\triangleleft H, HN/N\cong H/H\cap N$ である
>p.49 命題2.5.15 $\phi:G_1\rightarrow G_2$ が準同型なら、次の(1)(2)は同値である (1) $\phi$ は単射である (2) $\mathrm{Ker}(\phi)=\lbrace1_{G_1}\rbrace$
>p.45 命題2.5.4 $\phi:G_1\rightarrow G_2$ を群の準同型とするとき、次が成り立つ (4) $\mathrm{Ker}(\phi),\mathrm{Im}(\phi)$ はそれぞれ $G_1,G_2$ の部分群である。
>p.104 定義4.1.27 (1) $N_G(H)=\lbrace g\in G\mid gHg^{-1}=H\rbrace$
>p.109 補題4.2.2 $(i_1\hspace{5mu}\cdots\hspace{5mu}i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$
>p.119 定理4.5.7(シローの定理) (4) シロー $p$ 部分群の数 $s$ は $s\equiv|G|/|N_G(H)|\mod p$ という条件を満たす。

$G$ が位数 $60$ の単純群なら $G\cong A_5$ を証明せよ

|$\mathfrak{S}_3$ の共役類の型|要素数|
|-|-|
|$(1,1,1)$|$1$|
|$(2,1)$|$3$|
|$(3)$|$2$|
|計|$6$|

|$\mathfrak{S}_4$ の共役類の型|要素数|
|-|-|
|$(1,1,1,1)$|$1$|
|$(2,1,1)$|$6$|
|$(2,2)$|$3$|
|$(3,1)$|$8$|
|$(4)$|$6$|
|計|$24$|

1. $n\ge3$ なら $\mathfrak{S}_n$ の指数 $2$ の部分群は $A_n$ のみであることを証明せよ
   演習問題2.8.2より指数 $2$ の部分群は正規部分群である。以下、いずれの場合も $A_n$ 以外に指数 $2$ の部分群を持たない。
   1. $n=3$ のとき、 $\mathfrak{S}_3$ の共役類は型で分けると上表となる。指数 $2$ の部分群は正規部部群なので各共役類全体を含むか含まないかだが、 $(1,1,1)$ 型は単位元なので選ぶ必要があり、指数 $2$ の部分群の位数は $3$ なので後は $(3)$ 型を選ぶ選び方しかないが、これは $A_3$ である。よって指数 $2$ の部分群は $A_3$ のみである。
   2. $n=4$ のとき、 $\mathfrak{S}_4$ の共役類は型で分けると上表となる。指数 $2$ の部分群は正規部分群なので各共役類全体を含むか含まないかだが、 $(1,1,1,1)$ 型は単位元なので選ぶ必要があり、指数 $2$ の部分群の位数は $12$ で偶数で他の共役類の要素数は偶数だから要素数が奇数の $(2,2)$ 型も選ぶ必要がある。全体で位数 $12$ とするには後は $(3,1)$ 型を選ぶ選び方しかないが、これは $A_4$ である。よって指数 $2$ の部分群は $A_4$ のみである。
   3. $n\ge5$ のとき、定理4.9.3より $A_n$ は単純群である。また $A_n$ は $\mathfrak{S}_n$ の指数 $2$ の部分群なので $A_n\triangleleft\mathfrak{S}_n$ である。 $A_n$ 以外に指数 $2$ の部分群 $H$ があったと仮定すると、同様に $H\triangleleft\mathfrak{S}_n$ である。このとき、定理2.10.3(第二同型定理)より、 $A_n\cap H\triangleleft A_n$ となるが、 $A_n$ は単純群なので正規部分群は自分自身か自明なものしか持たない。 $A_n\cap H=A_n$ の場合、 $|A_n|=|H|$ なので $H=A_n$ となり $H$ の選び方に矛盾する。よって、 $A_n\cap H=\lbrace1\rbrace$ となる。しかし正規部分群の性質から $\mathfrak{S}_n$ の共役類についてそれぞれの共役類の要素全体を含むか含まないかのいずれかになるが、 $|\mathfrak{S}_n\setminus(A_n\cup H)|=|\mathfrak{S}_n|-|A_n\cup H|=|\mathfrak{S}_n|-(|A_n|+|H|-|A_n\cap H|)=1$ となり、 $\mathfrak{S}_n$ の共役類で要素数が $1$ となるものは $\lbrace1\rbrace$ のみなので $A_n\cup H\ni1$ に矛盾する。よって、 $A_n$ 以外に指数 $2$ の部分群を持たない。
2. $G$ が $|S|=5$ に自明でない作用を持てば $G\cong A_5$ であることを証明せよ
$G$ が $|S|=5$ に自明でない作用をもつとすると、 $\mathfrak{S}_5$ への自明でない置換表現 $\rho:G\rightarrow\mathfrak{S}_5$ が存在する。命題4.1.12より $\rho$ は群の準同型となるので、命題2.8.3より $\mathrm{Ker}(\rho)$ は $G$ の正規部部群となる。 仮定より $G$ は単純群なので $\mathrm{Ker}(\rho)$ は $G$ か $\lbrace1\rbrace$ である。 $\mathrm{Ker}(\rho)=G$ とすると $\rho$ は自明な作用となるので仮定に矛盾する。よって、 $\mathrm{Ker}(\rho)=\lbrace1\rbrace$ であるだが、このとき、命題2.9.15より $\rho$ は単射となる。したがって、 $|G|=|\mathrm{Im}(\rho)|=60$ である。命題2.5.4から $\mathrm{Im}(\phi)$ は $\mathfrak{S}_5$ の部分群となるので、これは指数 $2$ の部分群となり(1)から $\mathrm{Im}(\phi)=A_5$ である。ここで定理2.10.1 準同型定理(第一同型定理)を用いれば、 $G\cong G/\lbrace1\rbrace = G/\mathrm{Ker}(\phi) \cong\mathrm{Im}(\phi)=A_5$ となるので、 $G\cong A_5$ である。
3. $G$ のシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ であることを証明せよ
シロー $3$ 部分群、シロー $5$ 部分群からそれぞれ $1$ つ選んで $H,K$ とし、それぞれのシロー部分群の数を $s,t$ とする。 $60=2^2\cdot3\cdot5$ なので、 $|H|=3,|K|=5$ である。定理4.5.7(シローの定理) (4) を用いると $s\equiv1\mod 3,t\equiv1\mod 5$ である。$H\subset N_G(H),K\subset N_G(K)$  なので、 $s$ は $|(G:H)|=20$ の約数、 $t$ は $|(G:K)|=12$ の約数になる。 $G=A_5$ は単純群なので自分自身か自明なものしか正規部分群を持たないから、 $s\ne1,t\ne1$ であることを踏まえると $s=4,10$ 、 $t=6$ が候補である。 $\mathfrak{S}_5$ の要素の型を考えると $H$ の要素は長さ $3$ の巡回置換にあたる。ある要素 $h\in H$ を $(1\hspace{5mu}2\hspace{5mu}3)$ としても一般性を失わない。このとき、 $(4\hspace{5mu}5)$ は $h$ を変えないので $g=(1\hspace{5mu}2)(4\hspace{5mu}5)\in A_5$ を考えると(補題4.2.2から) $ghg^{-1}=(2\hspace{5mu}1\hspace{5mu}3)=h^2\in H, gh^2g^{-1}=h\in H$ なので $g\in N_G(H)$ である。 $H^\prime=\langle(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2)(4\hspace{5mu}5)\rangle$ とすると、 $H^\prime\subset N_G(H)$ でかつ $|H^\prime|=6$ なので、 $s$ は $|(G:H^\prime)|=10$ の約数となり、候補は $10$ のみとなる。よって、 $s=10,t=6$ となり、 $G$ のシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ である。
4. $G$ の元で位数が 3,5 でないものの個数はいくつか？
位数 $3$ の元は位数 $3$ の巡回群の生成元であり、位数 $5$ の元は位数 $5$ の巡回群の生成元であるため、いずれかのシロー $3$ 部分群、シロー $5$ 部分群の元として含まれる。また異なる部分群は単位元のみが共通している(さもなくば巡回群なので部分群全体が一致するため)。(3)からシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ なので、位数 $3,5$ の元はそれぞれ $(3-1)\times10=20,(5-1)\times6=24$ である。よって、位数が $3,5$ でないものの個数は $60-20-24=16$ である。
5. $G$ が位数 $10$ の元を持てば、 $G$ には位数 $10$ の元が少なくとも $12$ 個あることを示し矛盾を導け
シロー $2$ 部分群 $L$ $|L|=4$ $|(G:L)|=15$ $u\equiv1\mod 2$ $u\ge3$
6. $x\in G$ の位数が $2$ なら $|Z_G(x)|=4$  であることを証明せよ
7. $H_1\ne H_2$ が $G$ のシロー $2$ 部分群なら $H_1\cap H_2=\lbrace1\rbrace$ であることを証明せよ
8. $G$ のシロー $2$ 部分群の数は $5$ であることを証明せよ → $G\cong A_5$

※

#### 4.9.4 (2)が担当

$n\ge3, n\ne6$ 、 $\phi$ は $A_n$ の自己同型

1. $A_n=\langle\lbrace(1 i j)\mid i,j\ne1,i\ne j\rbrace\rangle$ を証明せよ
2. $\sigma\in A_n$ が長さ $3$ の巡回置換なら $\phi(\sigma)$ も長さ $3$ の巡回置換であることを証明せよ
3. $3\le i\ne j\le n$ なら、 $\phi((1 2 i)),\phi((1 2 j))$ は最初の2つの数字が同じ長さ $3$ の巡回置換であることを証明せよ
4. $a_1,\cdots,a_n\in\lbrace1,\cdots,n\rbrace$ が存在し、 $\phi((1 2 i))=(a_1 a_2 a_i)(i=3,\cdots,n)$ となることを証明せよ
5. $\sigma\in\mathfrak{S}_n$ が存在して、 $\phi$ は $\sigma$ による内部自己同型の $A_n$ への制限であることを証明せよ
