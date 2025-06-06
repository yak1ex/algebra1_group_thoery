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
2. $A_5$ が位数 $15,20,30$ の部分群 $H$ を持つと仮定し、(左)剰余類 $A_5/H$ に対する自然な作用(p.101)を考えるとそれぞれ $\mathfrak{S}_4,\mathfrak{S}_3,\mathfrak{S}_2$ への置換表現 $\rho$ が存在するはずであるが、(1)より自明な置換表現しか持たない。しかし、元 $x\notin H$ を考えた場合に、$xH\neq H$ となるので自明な表現しか持たないことに矛盾する。よって、 $A_5$ は位数 $15,20,30$ の部分群を持たない。

#### 4.9.3 (1),(5)が担当

>p.81 演習問題2.8.2 $H$ を群 $G$ の指数 $2$ の部分群とする。このとき、 $H$ は $G$ の正規部分群であることを証明せよ
>p.138 定理4.9.3 交代群 $A_n$ は $n\ge5$ なら単純群である
>p.72 定理2.10.3(第二同型定理) $H,N$ を群 $G$ の部分群で $N\triangleleft G$ とする。 (2) $H\cap N\triangleleft H, HN/N\cong H/H\cap N$ である
>p.49 命題2.5.15 $\phi:G_1\rightarrow G_2$ が準同型なら、次の(1)(2)は同値である (1) $\phi$ は単射である (2) $\mathrm{Ker}(\phi)=\lbrace1_{G_1}\rbrace$
>p.45 命題2.5.4 $\phi:G_1\rightarrow G_2$ を群の準同型とするとき、次が成り立つ (4) $\mathrm{Ker}(\phi),\mathrm{Im}(\phi)$ はそれぞれ $G_1,G_2$ の部分群である。
>p.104 定義4.1.27 (1) $N_G(H)=\lbrace g\in G\mid gHg^{-1}=H\rbrace$
>p.109 補題4.2.2 $(i_1\hspace{5mu}\cdots\hspace{5mu}i_l)\in\mathfrak{S}_n$ を巡回置換、 $\sigma\in\mathfrak{S}_n$ とすると、 $\sigma(i_1\cdots i_l)\sigma^{-1}=(\sigma(i_1)\cdots\sigma(i_l))$
>p.119 定理4.5.7(シローの定理) (4) シロー $p$ 部分群の数 $s$ は $s\equiv|G|/|N_G(H)|\mod p$ という条件を満たす。
>p.67 定理2.9.3(中国式剰余定理) $m,n\ne0$ が互いに素な整数なら、 $\mathbb{Z}/mn\mathbb{Z}$ は $\mathbb{Z}/m\mathbb{Z}\times\mathbb{Z}/n\mathbb{Z}$ と同型である
>p.119 命題4.5.6 $H$ を群 $G$ の部分群とするとき、 $H$ と共役な部分群の個数は $|G/N_G(H)|$ 。さらに $|G|\lt\infty$ なら、これは $|G|/|N_G(H)|$ に等しい。

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
   3. $n\ge5$ のとき、定理4.9.3より $A_n$ は単純群である。また $A_n$ は $\mathfrak{S}_n$ の指数 $2$ の部分群なので $A_n\triangleleft\mathfrak{S}_n$ である。 $A_n$ 以外に指数 $2$ の部分群 $H$ があったと仮定すると、同様に $H\triangleleft\mathfrak{S}_n$ である。このとき、定理2.10.3(第二同型定理)より、 $A_n\cap H\triangleleft A_n$ となるが、 $A_n$ は単純群なので正規部分群は自分自身か自明なものしか持たない。 $A_n\cap H=A_n$ の場合、 $|A_n|=|H|$ なので $H=A_n$ となり $H$ の選び方に矛盾する。よって、 $A_n\cap H=\lbrace1\rbrace$ となる。しかし正規部分群の性質から $\mathfrak{S}_n$ の共役類についてそれぞれの共役類の要素全体を含むか含まないかのいずれかになるが、 $|\mathfrak{S}_n\setminus(A_n\cup H)|=|\mathfrak{S}_n|-|A_n\cup H|=|\mathfrak{S}_n|-(|A_n|+|H|-|A_n\cap H|)=1$ となり、 $\mathfrak{S}_n$ の共役類で要素数が $1$ となるものは置換の型を考えれば $\lbrace1\rbrace$ のみなので $A_n\cup H\ni1$ に矛盾する。よって、 $A_n$ 以外に指数 $2$ の部分群を持たない。
   ※ $A_n\cap H=\lbrace1\rbrace$ で偶置換は全て $A_n$ に入ってるので $H$ の単位元以外は奇置換。奇置換 $2$ 以上あると閉じてないので矛盾、という流れもあり
   ※系4.9.4の証明より $[\mathfrak{S}_n,\mathfrak{S}_n]\supset A_n$ 命題4.3.2(2)より $[\mathfrak{S}_n,\mathfrak{S}_n]\subset H$ から $[\mathfrak{S}_n,\mathfrak{S}_n]=A_n$ で、かつ $|A_n|=|H|$ だから $A_n=H$
2. $G$ が $|S|=5$ に自明でない作用を持てば $G\cong A_5$ であることを証明せよ
※これにより3.以降では $G$ が位数 $12$ の部分群を持たないことを仮定してよくなる
$G$ が $|S|=5$ に自明でない作用をもつとすると、 $\mathfrak{S}_5$ への自明でない置換表現 $\rho:G\rightarrow\mathfrak{S}_5$ が存在する。命題4.1.12より $\rho$ は群の準同型となるので、命題2.8.3より $\mathrm{Ker}(\rho)$ は $G$ の正規部部群となる。 仮定より $G$ は単純群なので $\mathrm{Ker}(\rho)$ は $G$ か $\lbrace1\rbrace$ である。 $\mathrm{Ker}(\rho)=G$ とすると $\rho$ は自明な作用となるので仮定に矛盾する。よって、 $\mathrm{Ker}(\rho)=\lbrace1\rbrace$ だが、このとき、命題2.9.15より $\rho$ は単射となる。したがって、 $|G|=|\mathrm{Im}(\rho)|=60$ である。命題2.5.4から $\mathrm{Im}(\rho)$ は $\mathfrak{S}_5$ の部分群となるので、これは指数 $2$ の部分群となり(1)から $\mathrm{Im}(\phi)=A_5$ である。ここで定理2.10.1 準同型定理(第一同型定理)を用いれば、 $G\cong G/\lbrace1\rbrace = G/\mathrm{Ker}(\rho) \cong\mathrm{Im}(\rho)=A_5$ となるので、 $G\cong A_5$ である。
3. $G$ のシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ であることを証明せよ
シロー $3$ 部分群、シロー $5$ 部分群からそれぞれ $1$ つ選んで $H,K$ とし、それぞれのシロー部分群の数を $s,t$ とする。 $60=2^2\cdot3\cdot5$ なので、 $|H|=3,|K|=5$ である。定理4.5.7(シローの定理) (4) を用いると $s\equiv1\mod 3,t\equiv1\mod 5$ である。$H\subset N_G(H),K\subset N_G(K)$  なので、 $s$ は $|(G:H)|=20$ の約数、 $t$ は $|(G:K)|=12$ の約数になる。 $G$ は単純群なので自分自身か自明なものしか正規部分群を持たないから、 $s\ne1,t\ne1$ であることを踏まえると $s=4,10$ 、 $t=6$ が候補である。
$s=4$ と仮定すると、$H$ と共役な $H_1,H_2,H_3,H_4$ をとれる。 $G$ は共役により $\lbrace H_i\mid i=1,2,3,4\rbrace$ に作用する。定理4.5.7(シローの定理)(3)よりこの作用は推移的な作用である(自明な作用ではない)。この作用の置換表現 $\rho:G\rightarrow\mathfrak{S}_4$ を考えると命題4.1.12より準同型なので命題2.8.3から $\mathrm{Ker}(\rho)\triangleleft G$ となるが、 $G$ は単純群であるため $G$ 自身か自明なものしか正規部分群を持たない。 $\mathrm{Ker}(\rho)=G$ は自明な作用の場合となるため、 $\mathrm{Ker}(\rho)=\lbrace1\rbrace$ である。よって命題2.9.15より $\rho$ は単射となるが、 $|G|\gt|\mathfrak{S}_4|$ のため矛盾である。よって、 $s\ne4$ である。
以上により、$s=10,t=6$ となり、 $G$ のシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ である。
※ $s=4$ の場合は演習問題4.9.2(1)
4. $G$ の元で位数が 3,5 でないものの個数はいくつか？
位数 $3$ の元は位数 $3$ の巡回群の生成元であり、位数 $5$ の元は位数 $5$ の巡回群の生成元であるため、いずれかのシロー $3$ 部分群、シロー $5$ 部分群の元として含まれる。また単位元以外のシロー $3$ 部分群、シロー $5$ 部分群の位数は $3,5$ である。また異なるシロー $3$ 部分群、シロー $5$ 部分群では単位元のみが共通している(さもなくば巡回群なので部分群全体が一致するため)。(3)からシロー $3$ 部分群、シロー $5$ 部分群の数はそれぞれ $10,6$ なので、位数 $3,5$ の元はそれぞれ $(3-1)\times10=20,(5-1)\times6=24$ である。よって、位数が $3,5$ でないものの個数は $60-20-24=16$ である。
5. $G$ が位数 $10$ の元を持てば、 $G$ には位数 $10$ の元が少なくとも $12$ 個あることを示し矛盾を導け
位数 $10$ の元 $j$ があるとき、その元による生成群 $J=\langle j\rangle$ を考えると $|J|=10$ である。
命題4.5.6より $J$ と共役な部分群の数は $|G|/|N_G(J)|$ である。
定義より $N_G(J)\supset J$ なので $|N_G(J)|\ge|J|=10$ 。
一方 $N_G(J)$ は $G$ の部分群なので位数は $G$ の位数 $60$ の約数となるが、演習問題4.9.2および(2)から $G$ は位数 $12,15,20,30$ の部分群は持たないとしてよい。 $|N_G(J)|=60$ の場合は $N_G(J)=G$ すなわち $J$ が $G$ の正規部分群の場合となり $G$ が単純群であることに反するのでこれも候補とならない。よって、 $|N_G(J)|=10$ となり $J$ と共役な部分群の数は $|G|/|N_G(J)|=60/10=6$ である。
$J$ と共役な部分群それぞれについて少なくとも生成元とその逆元は位数 $10$ の元であり、しかも部分群ごとに異なる(さもなくば巡回群なので部分群全体が一致する)。よって、 $G$ が位数 $10$ の元を持つなら位数 $10$ の元は少なくとも $6\times2=12$ 個存在する。
※位数 $10$ の巡回群に位数 $10$ の元は $4$ つある(生成元の $1$ つを $g$ とすると、 $g,g^3,g^7,g^9$ )のでもっと多くあることも言えるはず
次に、シロー $2$ 部分群から $1$ つ選んで $L$ とする。 $|L|=4$ である。定理4.5.7(シローの定理)(4)を用いると、シロー $2$ 部分群の数 $u$ は$u\equiv1\mod 2$ を満たす。 $G$ は単純群なので $G$ 自身か自明なものしか正規部分群を持たないから $u\ne1$ 。 すると $u\ge3$ である。よって少なくとも $3$ つの異なるシロー $2$ 部分群 $L_1,L_2,L_3$ を選ぶことができる。$|L_i|=4$ で、 $3,5,10$ を約数に持たないから $L_i$ の元の位数は $3,5,10$ ではない。 $L_i,L_j(i\ne j)$ を考えると少なくとも $1$ つの元は異なる。よって、位数が $3,5,10$ ではない元として少なくとも $L_1$ の $4$ 個と $L_2,L_3$ からそれぞれ $1$ 個の $6$ 個の元を選ぶことができる。(4)より $G$ の元で $3,5$ ではないものの個数は $16$ 個だが、位数 $10$ の元があるとすると少なくとも $12$ 個あり、これに加えて位数が $3,5,10$ ではない元が少なくとも $6$ 個あるから $12+6\gt16$ となって矛盾する。
(よって、 $G$ は位数 $10$ の元を持たない)
※(3)(4)から残り $4$ 個の元でシロー $2$ 部分群を構成するしかないがそうするとシロー $2$ 部分群が $1$ つだけとなりすなわち正規部分群となる。これは $G$ が単純群であることに矛盾する。
6. $x\in G$ の位数が $2$ なら $|Z_G(x)|=4$  であることを証明せよ **まだ**
7. $H_1\ne H_2$ が $G$ のシロー $2$ 部分群なら $H_1\cap H_2=\lbrace1\rbrace$ であることを証明せよ **まだ**
8. $G$ のシロー $2$ 部分群の数は $5$ であることを証明せよ
   シロー $2$ 部分群の数を $v$ とする。 $v=1$ とすると、シロー $2$ 部分群が正規部分群となるため、 $G$ が単純群であることに反するため $v\ne1$ 。
   シロー $2$ 部分群の位数は $4$ なので位数$3,5$以外の元しかない。(7)からシロー $2$ 部分群で共通の要素は単位元のみである。(4)から $G$ の位数が $3,5$ 以外の元の数は $16$ 個なので $(4-1)v+1\le16$ となり、 $v\le5$ である。
   一方、シロー $2$ 部分群に対する共役による作用を考えると、 $\mathfrak{S}_v$ に対する置換表現を考えることができ、演習問題4.9.2(1)から $v\ne2,3,4$ である。
   以上より $v=5$ 、すなわち $G$ のシロー $2$ 部分群の数は $5$ である。
   (よって、(2)より後で $G$ が $|S|=5$ には自明な作用しか持たない(位数 $12$ の部分群を持たない)とした仮定に矛盾するので $G\cong A_5$ となる)

※2. これにより、以下 $G$ は位数 $12$ の部分群を持たないと仮定して良い、というのは位数 $12$ の部分群を持つならその剰余類 $5$ 個に対する作用を考えることができるから？→Yes

#### 4.9.4 (2)が担当

>p.138 補題4.9.1 $n\ge3$ なら、 $A_n$ は長さ $3$ の巡回置換で生成される。
>p.105 定理4.1.29 $G$ を有限群とする。 (1) $x\in G$ なら、 $|C(x)|=|G|/|Z_G(x)|$ である。また、 $C(x)=\lbrace x\rbrace$ であることと $x$ あ $G$ の中心 $Z_(G)$ の元であることは同値である。
>p.107 命題4.2.1 $\sigma$ が有限集合 $X$ の置換なら、共通する元のない巡回置換 $\sigma_1,\cdots,\sigma_m$ で $X$ の元は全てこれらに現れるものがあり $\sigma=\sigma_1\cdots\sigma_m$ と表せる。このとき、 $\sigma_1,\cdots,\sigma_m$ は順序を除いて一意的である。また $1\le i\ne j\le m$ なら、 $\sigma_i\sigma_j=\sigma_j\sigma_i$ である。
>p.149 演習問題4.2.7 偶置換 $\sigma\in\mathfrak{S}_n$ の型を $i_1,\cdots,i_l$ とする。(1) $i_1,\cdots,i_l$ がすべて異なる奇数なら $Z_{\mathfrak{S}_n}(\sigma) = Z_{A_n}(\sigma)$ であることを証明せよ。したがって、 $\sigma$ の $\mathfrak{S}_n$ の共役類は $A_n$ においては元の個数が等しい２つの共役類の和になる。 (2) (1)以外の場合には $[Z_{\mathfrak{S}_n}(\sigma):Z_{A_n}(\sigma)]=2$ であることを証明せよ。したがって、 $\sigma$ の $\mathfrak{S}_n$ における共役類は $A_n$ においても一つの共役類になる。

$n\ge3, n\ne6$ 、 $\phi$ は $A_n$ の自己同型

1. $k,l,m\ne1,k\ne l,k\ne m,l\ne m$ として $(1\hspace{5mu}l\hspace{5mu}m)(1\hspace{5mu}m\hspace{5mu}k)=(k\hspace{5mu}l\hspace{5mu}m)$ なので $(1\hspace{5mu}i\hspace{5mu}j)(i,j\ne1,i\ne j\rbrace)$ で任意の長さ $3$ の巡回置換を生成できる。よって補題4.9.1より $A_n$ は $(1\hspace{5mu}i\hspace{5mu}j)(i,j\ne1,i\ne j)$ の形の元で生成される。
※ $k,l,m\ne1$ のところは追記必要、この場合( $1$ を含まない場合)については↑の議論、 $1$ を含む場合は $(1\hspace{5mu}i\hspace{5mu}j)$ でそのまま表せる → 任意の長さ $3$ の巡回置換を表現できる
2. $\sigma\in A_n$ が長さ $3$ の巡回置換なら $\phi(\sigma)$ も長さ $3$ の巡回置換であることを証明せよ
   $\phi$ は同型で、 $\sigma$ の位数が $3$ となるので $\phi(\sigma)$ の位数も $3$ である。 $\sigma,\phi(\sigma)$ は $\mathfrak{S}_n$ の元でもあるので命題4.2.1から重複のない巡回置換の積で表せる。 $\sigma,\phi(\sigma)$ いずれも位数が $3$ であることから長さ $3$ の巡回置換の積となる。
   1. $n=3,4,5$ のとき：重複のない長さ $3$ の巡回置換の積として長さ $3$ の巡回置換 $1$ 個のみしかとれないので題意を満たす。
   2. $n\ge7$ のとき： $\phi(\sigma)$ を長さ $3$ の $k\ge2(3k\le n)$ 個の巡回置換の積と仮定して矛盾を導く。
   $\phi$ が同型なので $\sigma$,$\phi(\sigma)$ の共役類の数は等しい。p.105 定理4.1.29 から $x\in A_n$ のとき $|C(x)|=|A_n|/|Z_{A_n}(x)|$ なので、 $|Z_{A_n}(\sigma)|=|Z_{A_n}(\phi(\sigma))|$ である。
   $\sigma,\phi(\sigma)$ いずれの場合も演習問題4.2.7の(2)のケース(それぞれ $(3,1,\cdots,1) (3, 3, \star, 1)$ で $1,3$ が重複する)なので $[Z_{\mathfrak{S}_n}(\sigma):Z_{A_n}(\sigma)]=[Z_{\mathfrak{S}_n}(\phi(\sigma)):Z_{A_n}(\phi(\sigma))]=2$ 。よって、 $|Z_{\mathfrak{S}_n}(\sigma)|=|Z_{\mathfrak{S}_n}(\phi(\sigma))|$ である。
   (以降、 $\mathfrak{S}_n$ の場合である演習問題4.6.12(2)と同じ議論に帰着される)
   ※ $\phi$ が同型から直接 $|Z_{A_n}(\sigma)|=|Z_{A_n}(\phi(\sigma))|$ を言えばいいはず
   <br>
   演習問題4.2.6より $|Z_{\mathfrak{S}_n}(x)|=(|\mathfrak{S}_{a_1}|\cdots|\mathfrak{S}_{a_t}|)(|\mathbb{Z}/j_1\mathbb{Z}|^{a_1}\cdots|\mathbb{Z}/j_t\mathbb{Z}|^{a_t})$
   $\sigma$ の型は $(3)$ 型なので $t=2,a_1=1,a_2=n-3,j_1=3,j_2=1$ の場合だから、 $|Z_{\mathfrak{S}_n}(\sigma)|=(n-3)!\cdot3$
   $\phi(\sigma)$ の場合は $t=2,a_1=k,a_2=n-3k,j_1=3,j_2=1$ の場合だから、$|Z_{\mathfrak{S}_n}(\phi(\sigma))|=k!(n-3k)!\cdot3^k$
   $r_{n,k}=\frac{|Z_{\mathfrak{S}_n}(\phi(\sigma))|}{|Z_{\mathfrak{S}_n}(\sigma)|}=\frac{k!(n-3k)!\cdot3^k}{(n-3)!\cdot3}$ と置く。 $|Z_{\mathfrak{S}_n}(\sigma)|=|Z_{\mathfrak{S}_n}(\phi(\sigma))|$ であれば $r_{n,k}=1$ である。
   $r_{n,2}=\frac{18}{3(n-3)(n-4)(n-5)}\le r_{7,2}=\frac{18}{3\cdot4\cdot3\cdot2}\lt1$ である。
   ここで $\rho=\frac{r_{n,k+1}}{r_{n,k}}=\frac{(k+1)!(n-3(k+1))!\cdot3^{k+1}}{k!(n-3k)!\cdot3^k}=\frac{3(k+1)}{(n-3k)(n-3k-1)(n-3k-2)}$ を考えると
   分母、分子とも正の範囲しか動かないことに注意すれば、 $k$ が増加するにつれ分子は増加、分母は減少するので $\rho$ は単調増加する。 $\frac{r_{n,3}}{r_{n,2}}=\frac{6\cdot27\cdot(n-9k)!}{2\cdot9(n-6k)!}=\frac{9(n-9k)!}{(n-6k)!}\lt1(n\ge9,k\ge2)$ なので $r_{n,k}$ 自体が正であることにも注意するとどこかで $\rho$ が $1$ を超えるなら $r_{n,k}$ としては下に凸であり、超えないなら $r_{n,k}$ は単調減少である。単調減少の場合には $r_{n,2}\lt1$ から $r_{n,k}\lt1$ が言える。下に凸である場合は $r_{n,2}\lt1$ に加えて $k$ の大きい側の境界でも $r_{n,k}\lt1$ であれば対象範囲の全ての $k$ で $r_{n,k}\lt1$ となる。 $3k\le n$ の条件が $n$ を $3$ で割った余りによって境界が変わることに注意すると
   $n=3k$ のとき $r_{3k,k}=\frac{k!\cdot3^k}{3(3k-3)!}$ で $r_{6,2}=1$ だがこれは $n=6$ のときなので条件外である。
   $k$ から $k+1$ に増加した場合の比 $\frac{r_{3(k+1),k+1}}{r_{3k,k}}=\frac{3(k+1)}{3k(3k-1)(3k-2)}\lt1(k\ge2)$ なので $r_{n,k}$ は $n,k$ が増加するにつれて減少する。 $r_{6,2}=1$ だったので $r_{n,k}\lt1(n\ge7,k\ge2)$ である。
   $n=3k+1$ のとき $r_{3k+1,k}=\frac{k!\cdot3^k}{3(3k-2)!}=\frac{1}{3k-2}\frac{k!\cdot3^k}{3(3k-3)!}=\frac{1}{3k-2}r_{3k,k}\lt1$ である(※ $r_{6,2}=1$ であることも使っている )。
   $n=3k+2$ のときも $r_{3k+2,k}=\frac{2k!\cdot3^k}{3(3k-1)!}=\frac{2}{3k-1}\frac{k!\cdot3^k}{3(3k-2)!}=\frac{2}{3k-1}r_{3k+1,k}\lt1$ である。
   以上により、 $r_{n,k}\lt1$ となるので、 $|Z_{\mathfrak{S}_n}(\sigma)|\ne|Z_{\mathfrak{S}_n}(\phi(\sigma))|$ となって矛盾する。したがって、 $\phi(\sigma)$ は長さ $3$ の巡回置換となる。
   ※ $\rho$ が最初( $k=2$ のとき)は $1$ より小さいことが言えてなかった
   ※ 減少してから増加くらいの意味で「下に凸」と書いてしまったが傾きが $r_{n,k+1}-r_{n,k}=r_{n,k}(\rho-1)$ になるので単調減少な場合も含めて下に凸(微分が単調非減少)と言って良さそう
   ※ 共役類の要素数の(場合の数の)計算でも同様の結果が導ける
   ※ $n=6,k=2$ だと $18$ で等しくなるので $n=6$ の場合は除外されている
   ※ $n=3k,3k+1,3k+2$ の場合分けは $k$ を固定すれば $n=3k$ の場合だけ示せばいいのでは？
   ※ それぞれで増加係数を見るのもあり
3. $3\le i\ne j\le n$ なら、 $\phi((1\hspace{5mu}2\hspace{5mu}i)),\phi((1\hspace{5mu}2\hspace{5mu}j))$ は最初の2つの数字が同じ長さ $3$ の巡回置換であることを証明せよ
   (2)より $\phi((1\hspace{5mu}2\hspace{5mu}i)),\phi((1\hspace{5mu}2\hspace{5mu}j))$ はともに長さ $3$ の巡回置換である。 $\phi((1\hspace{5mu}2\hspace{5mu}i))=(a\hspace{5mu}b\hspace{5mu}c),\phi((1\hspace{5mu}2\hspace{5mu}j))=(d\hspace{5mu}e\hspace{5mu}f)$ とおく( $a,b,c$ および $d,e,f$ はそれぞれ互いに相異なる)。 $(1\hspace{5mu}2\hspace{5mu}i)(1\hspace{5mu}2\hspace{5mu}j)=(j\hspace{5mu}2)(i\hspace{5mu}1)$ なので $((1\hspace{5mu}2\hspace{5mu}i)(1\hspace{5mu}2\hspace{5mu}j))^2=1_{A_n}$ である。よって、 $\phi(((1\hspace{5mu}2\hspace{5mu}i)(1\hspace{5mu}2\hspace{5mu}j))^2)=(a\hspace{5mu}b\hspace{5mu}c)(d\hspace{5mu}e\hspace{5mu}f)(a\hspace{5mu}b\hspace{5mu}c)(d\hspace{5mu}e\hspace{5mu}f)=1_{A_n}$ となる。以下により、この条件を満たすのは最初の $2$ つの数字が同じ、長さ $3$ の巡回置換の場合となる。
   1. $\lbrace a,b,c\rbrace\cap\lbrace d,e,f\rbrace=\emptyset$ の場合、 $(a\hspace{5mu}b\hspace{5mu}c)(d\hspace{5mu}e\hspace{5mu}f)(a\hspace{5mu}b\hspace{5mu}c)(d\hspace{5mu}e\hspace{5mu}f)=(a\hspace{5mu}c\hspace{5mu}b)(d\hspace{5mu}f\hspace{5mu}e)\ne1_{A_n}$ となるので題意を満たさない。
   2. $\lbrace a,b,c\rbrace\cap\lbrace d,e,f\rbrace$ が $1$ 要素の場合、 $a=d$ として一般性を失わない。このとき $(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}e\hspace{5mu}f)(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}e\hspace{5mu}f)=(a\hspace{5mu}f\hspace{5mu}c\hspace{5mu}e\hspace{5mu}b)\ne1_{A_n}$ となるので題意を満たさない。
   3. $\lbrace a,b,c\rbrace\cap\lbrace d,e,f\rbrace$ が $2$ 要素の場合
      1. $a=d,b=e$ の場合、 $(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}b\hspace{5mu}f)(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}b\hspace{5mu}f)=1_{A_n}$ となり題意を満たす。
      2. $a=d,b=f$ の場合、 $(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}e\hspace{5mu}b)(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}e\hspace{5mu}b)=(a\hspace{5mu}c\hspace{5mu}e)$ となり題意を満たさない。
   4. $\lbrace a,b,c\rbrace=\lbrace d,e,f\rbrace$ の場合
      1. $a=d,b=f,c=e$ の場合、 $1_{A_n}=(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}c\hspace{5mu}b)=\phi((1\hspace{5mu}2\hspace{5mu}i))\phi((1\hspace{5mu}2\hspace{5mu}j))=\phi((1\hspace{5mu}2\hspace{5mu}i)(1\hspace{5mu}2\hspace{5mu}j))$ となり $\phi$ は同型だから $(1\hspace{5mu}2\hspace{5mu}i)(1\hspace{5mu}2\hspace{5mu}j)=1$ となり矛盾するから題意を満たさない。
      2. $a=d,b=e,c=f$ の場合、 $\phi((1\hspace{5mu}2\hspace{5mu}i))=\phi((1\hspace{5mu}2\hspace{5mu}j))$ で $\phi$ は同型(単射)なので $(1\hspace{5mu}2\hspace{5mu}i)=(1\hspace{5mu}2\hspace{5mu}j)$ となり矛盾するから題意を満たさない。
4. $a_1,\cdots,a_n\in\lbrace1,\cdots,n\rbrace$ が存在し、 $\phi((1\hspace{5mu}2\hspace{5mu}i))=(a_1\hspace{5mu}a_2\hspace{5mu}a_i)(i=3,\cdots,n)$ となることを証明せよ
   $n=3$ のとき、 $\phi((1\hspace{5mu}2\hspace{5mu}3))$ は長さ $3$ の巡回置換になるので、 $a_1,a_2,a_3\in\lbrace1,2,3\rbrace$ を使って $\phi((1\hspace{5mu}2\hspace{5mu}3))=(a_1\hspace{5mu}a_2\hspace{5mu}a_3)$ と表せる。
   $n\ge4$ のとき、帰納法で示す。(3)より $\phi((1\hspace{5mu}2\hspace{5mu}3)),\phi((1\hspace{5mu}2\hspace{5mu}4))$ は最初の $2$ つの数字が同じ、長さ $3$ の巡回置換となる。同じ $2$ つの数字を $a_1,a_2$ とおく。残りについて $(1\hspace{5mu}2\hspace{5mu}3)$ 側を $a_3$ 、 $(1\hspace{5mu}2\hspace{5mu}4)$ 側を $a_4$ とすると $\phi$ は単射なので $a_3\ne a_4$ である。 $i$ 以下について成立しているときに $i+1$ について成立することについても $i,i+1$ で同様の議論をすればよい。
   ※足りてない？ 任意の $i,j$ の組み合わせで $a,b$ は共通だと言っていいのか？ → $(a\hspace{5mu}b\hspace{5mu}c)(a\hspace{5mu}b\hspace{5mu}d)$ と来て $(b\hspace{5mu}d\hspace{5mu}e) or (d\hspace{5mu}a\hspace{5mu}e)$ で $(a\hspace{5mu}b\hspace{5mu}c)$ と $2$ つ共通にならないという論理を通すなら最初から共通だって言ってるのと同じ気もする
5. $\sigma\in\mathfrak{S}_n$ が存在して、 $\phi$ は $\sigma$ による内部自己同型の $A_n$ への制限であることを証明せよ
   $\phi$ が $\sigma$ による内部自己同型の $A_n$ への制限であることを言うためには、 $\forall\tau\in A_n$ で $\phi(\tau)=\sigma\tau\sigma^{-1}$ であることを言えば良い。
   命題2.5.14より $\forall\tau\in A_n$ についてではなく、 $A_n$ の生成元である $\tau\in\lbrace(1\hspace{5mu}2\hspace{5mu}i)\mid i=3,\dots,n\rbrace$ について $\phi(\tau)=\sigma\tau\sigma^{-1}$ であることを言えば良い。
   $\sigma(i)=a_i(i=1,\cdots,n)$ と置けば $\sigma\tau\sigma=\sigma(1\hspace{5mu}2\hspace{5mu}i)\sigma^{-1}=(\sigma(1)\hspace{5mu}\sigma(2)\hspace{5mu}\sigma(i))=(a_1\hspace{5mu}a_2\hspace{5mu}a_i)=\phi((1\hspace{5mu}2\hspace{5mu}i))=\phi(\tau)$ よりこれが題意を満たす $\sigma\in\mathfrak{S}_n$ となる。
