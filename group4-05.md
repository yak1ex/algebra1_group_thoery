# 代数学1 群論入門

## 4.5 シローの定理

### メモ

#### 部分集合の集合への作用

$\mathscr{P}(X)$ の部分集合であればよさそうだが明示的に記載はされてない

#### 命題4.5.4

$H$ の元による作用で不変であるということは $H$ の元による作用で閉じているということなので、 $H$ による軌道の一部分だけが含まれているということがない、つまり軌道全体が必ず入っているので軌道の和になる

$X$ はどこに行ったのか？

#### 命題4.5.6

$gHg^{-1}=H$ ということは(部分群の集合に対する)共役による作用の安定化群なのでp.93 命題4.1.23を適用

#### 定理4.5.7 シローの定理

##### (1)

その軌道 $O(S)$ の元の個数が $p$ で割り切れないものがある：軌道 $O(S)$ の元の個数 $|O(S)|$ が全て $p$ で割り切れるならその直和となる $X$ の元の個数 $|X|$ も $p$ で割り切れることになる。なので少なくとも $1$ つは $p$ で割り切れない。

$|H|$ が $p^a$ の約数でかつ、 $p^am/|H|$ が $p$ で割り切れない必要があるので $|H|=p^a$ でなければならない

※ヘルムート・ヴィーラントによる証明 https://en.wikipedia.org/wiki/Sylow_theorems#Proof_of_the_Sylow_theorems

※確かに $n$ 個( $n$ を割る $p$ の最大べきが $p^a$ )の元の集合から $p^a$ 個の元を選ぶ組み合わせの数が $p$ で割れないって時点で面白いな

###### 注

(1)の証明における作用は「共役による作用」**ではない**(部分集合の集合に対する共役による作用について語っているのは、「群 $G$ の $G$ への共役による作用を考える」から命題4.5.6までと思われる)。なんとなればp.118 命題4.5.4自体が左からの積による作用と明示されている。

$G=\mathfrak{S}_3, n=6, p=3, a=1$ として例を挙げてみる(まず左からの積による作用に基づく正しい例を挙げ、次に共役による作用に基づく誤った例を挙げる)。

$|X|= {}_6C_3=20$ なので確かに $p=3$ で割り切れない。

左からの積による作用の場合、 $S_i(i=1,2,3,4)$ を適当にとって

$$
\begin{array}{lllll}
O(S_1)=
\lbrace&
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}2)\rbrace,
\lbrace(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}3),1_G\rbrace, \lbrace(1\hspace{5mu}2\hspace{5mu}3),(2\hspace{5mu}3),1_G\rbrace, \\
&\lbrace(1\hspace{5mu}3),(2\hspace{5mu}3),1_G\rbrace,
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2),(2\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}2),(1\hspace{5mu}3)\rbrace
&\rbrace\\
O(S_2)=
\lbrace&
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}3\hspace{5mu}2),(2\hspace{5mu}3),1_G\rbrace,
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2),1_G\rbrace, \\
&\lbrace(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}3),(2\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}2),(2\hspace{5mu}3),1_G\rbrace,
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}2),(1\hspace{5mu}3)\rbrace
&\rbrace\\
O(S_3)=
\lbrace&
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),(2\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}2),1_G\rbrace,
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3),1_G\rbrace,\\
&\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3),(2\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}3\hspace{5mu}2),(1\hspace{5mu}2),(2\hspace{5mu}3)\rbrace,
\lbrace(1\hspace{5mu}2),(1\hspace{5mu}3),1_G\rbrace,
&\rbrace\\
O(S_4)=
\lbrace&
\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),1_G\rbrace,
\lbrace(1\hspace{5mu}2),(1\hspace{5mu}3),(2\hspace{5mu}3)\rbrace
&\rbrace
\end{array}
$$

$|O(S_1)|=|O(S_2)|=|O(S_3)|=6$ で $p=3$ の倍数、 $|O(S_4)|=2$ だから $S=S_4$ ととることになる。
$H=\mathrm{Stab}(S)=\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),1_G\rbrace$ で、 $|H|=p^a=3^1$ になっている。

|演算表|$(1\hspace{5mu}2\hspace{5mu}3)$|$(1\hspace{5mu}3\hspace{5mu}2)$|$(1\hspace{5mu}2)$|$(1\hspace{5mu}3)$|$(2\hspace{5mu}3)$|$1_G$|
|-|-|-|-|-|-|-|
|$(1\hspace{5mu}2\hspace{5mu}3)$|$(1\hspace{5mu}3\hspace{5mu}2)$|$1_G$|$(1\hspace{5mu}3)$|$(2\hspace{5mu}3)$|$(1\hspace{5mu}2)$|$(1\hspace{5mu}2\hspace{5mu}3)$|
|$(1\hspace{5mu}3\hspace{5mu}2)$|$1_G$|$(1\hspace{5mu}2\hspace{5mu}3)$|$(2\hspace{5mu}3)$|$(1\hspace{5mu}2)$|$(1\hspace{5mu}3)$|$(1\hspace{5mu}3\hspace{5mu}2)$|
|$(1\hspace{5mu}2)$|$(2\hspace{5mu}3)$|$(1\hspace{5mu}3)$|$1_G$|$(1\hspace{5mu}3\hspace{5mu}2)$|$(1\hspace{5mu}2\hspace{5mu}3)$|$(1\hspace{5mu}2)$|
|$(1\hspace{5mu}3)$|$(1\hspace{5mu}2)$|$(2\hspace{5mu}3)$|$(1\hspace{5mu}2\hspace{5mu}3)$|$1_G$|$(1\hspace{5mu}3\hspace{5mu}2)$|$(1\hspace{5mu}3)$|
|$(2\hspace{5mu}3)$|$(1\hspace{5mu}3)$|$(1\hspace{5mu}2)$|$(1\hspace{5mu}3\hspace{5mu}2)$|$(1\hspace{5mu}2\hspace{5mu}3)$|$1_G$|$(2\hspace{5mu}3)$|
|$1_G$|$(1\hspace{5mu}2\hspace{5mu}3)$|$(1\hspace{5mu}3\hspace{5mu}2)$|$(1\hspace{5mu}2)$|$(1\hspace{5mu}3)$|$(2\hspace{5mu}3)$|$1_G$|

共役による作用を考えた場合、対称群については共役による作用で置換の型が変わらないため、軌道(共役類)は置換の型の組み合わせの種類に分けられる。
$(3)$ 型の元は $(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2)$ の $2$ つ、 $(2,1)$ 型の元は $(1\hspace{5mu}2),(1\hspace{5mu}3),(2\hspace{5mu}3)$ の $3$ つ、 $(1,1,1)$ 型の元は $1_G$ のみの $1$ つとなるので軌道としては

|型の組み合わせ|軌道の元の数|
|-|-|
|$(3),(3),(2,1)$|${}_2C_2\times{}_3C_1=3$|
|$(3),(3),(1,1,1)$|${}_2C_2\times{}_1C_1=1$|
|$(3),(2,1),(2,1)$|${}_2C_1\times{}_3C_2=6$|
|$(3),(2,1),(1,1,1)$|${}_2C_1\times{}_3C_1\times{}_1C_1=6$|
|$(2,1),(2,1),(2,1)$|${}_3C_3=1$|
|$(2,1),(2,1),(1)$|${}_3C_1\times{}_1C_1=3$|

$p=3$ で割り切れないのは $(3),(3),(1,1,1)$ か $(2,1),(2,1),(2,1)$ 、つまり
$\lbrace\lbrace(1\hspace{5mu}2\hspace{5mu}3),(1\hspace{5mu}3\hspace{5mu}2),1_G\rbrace\rbrace$ か $\lbrace\lbrace(1\hspace{5mu}2),(1\hspace{5mu}3),(2\hspace{5mu}3)\rbrace\rbrace$ の場合でいずれも軌道の元の数は $1$ である。安定化群は $G=\mathfrak{S}_3$ 全体になるため話が成立しない(ので想定している作用の誤りに気づいたのである)。

##### (2)

$q$ は $|K|$ の約数なので：p.104 命題4.1.24(第2版)より適当な $x$ をとって $q=|K\cdot x|=|K|/|K_x|$ となるから軌道の元の個数は作用する群の位数の約数となる。

$q$ が $p$ で割り切れないなら $1$ である、なのでは？→Yes。特定の $gH$ について議論している。

$i_g$ が内部自己同型なので $|H|=|gHg^{-1}|=p^a$ となり $gHg^{-1}$ はシロー $p$ 部分群である

$kg\in gH$ ： $kgH=gH$ で $1_G\in H$ だから $kg1_G=kg\in gH$ 

※ $G/H$ と書くなら $H$ は正規部分群である必要があるのでは？表記だけの話で左剰余類として話をすれば議論は成立しているはず
※検討課題： $K\subset gHg^{-1}\Rightarrow |K|\text{が}p\text{べき}$ と言えるか？ $K$ が $gHg^{-1}$ の部分群で $|gHg^{-1}|=p^a$ なので $|K|$ は $p^a$ の約数であることは言えそう

##### (3)

(2)の条件を全てのシロー $p$ 部分群が満たすので $K\subset gHg^{-1}$

$K\subset gHg^{-1}$ かつ $|K|=|gHg^{-1}|$ なら $K=gHg^{-1}$ である。

##### (4)

$|N_G(H_i)|$ は $|G|$ の約数なので、 $H,H_i$ は $N_G(H_i)$ のシロー $p$ 部分群である： $H,H_i$ は $G$ のシロー $p$ 部分群なので $H,H_i\subset N_G(H_i)$ ならば $N_G(H_i)$ についてもシロー $p$ 部分群の性質を満たす。
※ $H$ は $Z$ に共役により作用する ← $Z$ としてシロー $p$ 部分群全体を持ってきているので $H$ の作用が $Z$ に閉じてる。共役による作用だと元の個数は変わらない

#### 例題4.5.8

巡回群になることは第2版p.58 命題2.6.22から
$H\subset N_G(H),K\subset N_G(H)$ はp.104 定義4.1.27(1)の定義から
「 $H,K$ の共役は $H,K$ のみである」共役で閉じているという意味なので正規部分群の定義を満たす
※ $H\cap K=\lbrace1_G\rbrace$ なことはp.79 演習問題2.6.4からも言える
※ $2$ 素数の積になっているからと言って必ずしも同じ議論は成立しない $21=3\times7$ はその例でこの場合、 $7\equiv1\mod3$

### 演習問題

#### 4.5.1

$G=\mathfrak{S}_4,Y=\lbrace X\mid X\subset G, |X|=2\rbrace$ 左からの積で作用 $\sigma=(1\hspace{5mu}3\hspace{5mu}2), y=\lbrace1,(1\hspace{5mu}2)(3\hspace{5mu}4)\rbrace\in Y$ 

1. $\sigma y=\lbrace(1\hspace{5mu}3\hspace{5mu}2),(2\hspace{5mu}3\hspace{5mu}4)\rbrace$
2. $G_y=\lbrace1,(1\hspace{5mu}2)(3\hspace{5mu}4)\rbrace$

#### 4.5.2 担当

$G=D_4=\langle\sigma=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4),\tau=(2\hspace{5mu}4)\rangle=$
$$
\begin{array}{lllll}
\lbrace&1_G,&\sigma=(1\hspace{5mu}2\hspace{5mu}3\hspace{5mu}4),&\sigma^2=(1\hspace{5mu}3)(2\hspace{5mu}4),&\sigma^3=(1\hspace{5mu}4\hspace{5mu}3\hspace{5mu}2),\\
&\tau=(2\hspace{5mu}4),&\tau\sigma=(1\hspace{5mu}4)(2\hspace{5mu}3),&\tau\sigma^2=(1\hspace{5mu}3),&\tau\sigma^3=(1\hspace{5mu}2)(3\hspace{5mu}4)\rbrace
\end{array}
$$

※自分にとってのわかりやすさから(第2版)p.98 命題4.1.10(2)に基づき全要素を書き下したが、(3)から $\tau\sigma^i$ の位数が $2$ であることは言えるので後は $\sigma^i$ の位数が $2$ になるのは $i=2$ のときだけであることから位数 $2$ の元は特定できる
※あるいは(第2版)p.98 命題4.1.10(2)から $\tau\sigma\tau=\sigma^{-1}\Leftrightarrow\tau\sigma\tau\sigma=1_G\Leftrightarrow\sigma\tau\sigma=\tau$ 使うと巡回置換の積に書き下さなくても位数 $2$ の元であることは確かめられる

1. $2$ は素数なので(第2版)p.58 命題2.6.22より位数 $2$ の元から生成される巡回群である。位数 $2$ の元それぞれに位数 $2$ の部分群が定まるので↑の全要素書き下しから位数 $2$ の部分群は　$\lbrace1_G,\sigma^2\rbrace,\lbrace1_G,\tau\rbrace,\lbrace1_G,\tau\sigma\rbrace,\lbrace1_G,\tau\sigma^2\rbrace,\lbrace1_G,\tau\sigma^3\rbrace$
2. ↑を順に $x_1=\lbrace1_G,\sigma^2\rbrace,x_2=\lbrace1_G,\tau\rbrace,x_3=\lbrace1_G,\tau\sigma\rbrace,x_4=\lbrace1_G,\tau\sigma^2\rbrace,x_5=\lbrace1_G,\tau\sigma^3\rbrace$ と置いて愚直に取り尽くす(対称群の共役による作用なので(第2版)p.109 補題4.2.2を使う)と
$O(x_1)=\lbrace x_1\rbrace, O(x_2)=\lbrace x_2,x_4\rbrace,O(x_3)=\lbrace x_3,x_5\rbrace$
3. 代表元として $x_1,x_2,x_3$ を選ぶとすると、 $G_{x_1}=G, G_{x_2}=\lbrace1_G,\sigma^2,\tau,\tau\sigma^2\rbrace,G_{x_3}=\lbrace1_G,\sigma^2,\tau\sigma,\tau\sigma^3\rbrace$
※軌道の計算するときに合わせて計算している

#### 4.5.3

1. $p\gt q$ として一般性を失わない。$H,K$ をそれぞれ $G$ のシロー $p$ 部分群、シロー $q$ 部分群とする。シロー $p$ 部分群の数を $s$ 、シロー $q$ 部分群の数を $t$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod p,t\equiv1\mod q$ である。 $H\subset N_G(H),K\subset N_G(K)$ なので、 $s=(G:N_G(H)),t=(G:N_G(K))$ はそれぞれ $(G:H)=q,(G:K)=p$ の約数である。 $s$ は $1,q$ のいずれか、 $t$ は $1,p$ のいずれかである。 $p\gt q$ の場合、 $q\equiv q\mod p$ なので $s=1$ である。これは $H$ の共役が $H$ のみであることを意味するため、 $H\triangleleft G$ である。よって $G$ は単純群ではない。
2. $p\not\equiv 1\mod q$ の場合、 $t=1$ である。これは $K$ の共役が $K$ のみであることを意味するため、 $K\triangleleft G$ である。(※以下p.121例題4.5.8と同じ流れ) $|H|=p,|K|=q$ は素数なので、 $H\cong\mathbb{Z}/p\mathbb{Z},K\cong\mathbb{Z}/q\mathbb{Z}$ である。 $|H\cap K|$ は $p,q$ の約数なので $1$ である。よって、 $H\cap K=\lbrace1_G\rbrace$ である。 $H,K\triangleleft G$なので、p.72 定理2.10.3(1)より $HK\subset G$ は部分群である。 $HK\supset H,K$ なので $|HK|$ は $p,q$ の公倍数である。 $|HK|\le pq$ なので $HK=G$ である。p.66 命題2.9.2およびp.67 定理2.9.3より $G\cong H\times K\cong\mathbb{Z}/p\mathbb{Z}\times\mathbb{Z}/q\mathbb{Z}\cong\mathbb{Z}/pq\mathbb{Z}$ である。これは位数 $pq$ の巡回群である(p.36例2.3.18)。
3. 1 については $3\cdot2=6,5\cdot2=10,7\cdot2=14,11\cdot2=22,13\cdot2=26,17\cdot2=34,19\cdot2=38,$ $23\cdot2=46,29\cdot2=58,$
$5\cdot3=15,7\cdot3=21,11\cdot3=33,13\cdot3=39,17\cdot3=51,19\cdot3=57,$
$7\cdot5=35,11\cdot5=55$ なので、
$6,10,14,15,21,22,26,33,34,35,38,39,46,51,55,57,58$
2 については $5\cdot3=15,11\cdot3=33,17\cdot3=51,$
$7\cdot5=35$ なので、
$15,33,35,51$

※異なる2素数の積で巡回群になる最小の位数は $15$

#### 4.5.4 担当

1. $40=2^3\cdot5$ である。 $H,K$ をそれぞれ $G$ のシロー $2$ 部分群、シロー $5$ 部分群とする。シロー $2$ 部分群の数を $s$ 、シロー $5$ 部分群の数を $t$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod2,t\equiv1\mod5$ である。 $H\subset N_G(H),K\subset N_G(K)$ なので、 $s=(G:N_G(H)),t=(G:N_G(K))$ はそれぞれ $(G:H)=5,(G:K)=8$ の約数である。 $s$ は $1,5$ のいずれか、 $t$ は $1,2,4,8$ のいずれかである。 $t\equiv1\mod5$ を満たすのは $1$ のみなので $t=1$ である。これは $K$ の共役が $K$ のみであることを意味するため、 $K\triangleleft G$ である。よって $G$ は単純群ではない。
2. $42=2\cdot3\cdot7$ である。 $H,K,L$ をそれぞれ $G$ のシロー $2$ 部分群、シロー $3$ 部分群、シロー $7$ 部分群とする。シロー $2$ 部分群の数を $s$ 、シロー $3$ 部分群の数を $t$ 、シロー $7$ 部分群の数を $u$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod2,t\equiv1\mod3,u\equiv1\mod7$ である。 $H\subset N_G(H),K\subset N_G(K),L\subset N_G(L)$ なので、 $s=(G:N_G(H)),t=(G:N_G(K)),u=(G:N_G(L))$ はそれぞれ $(G:H)=21,(G:K)=14,(G:L)=6$ の約数である。 $s$ は $1,3,7,21$ のいずれか、 $t$ は $1,2,7,14$ のいずれか、 $u$ は $1,2,3,6$ のいずれかである。 $u\equiv1\mod7$ を満たすのは $1$ のみなので $u=1$ である。これは $L$ の共役が $L$ のみであることを意味するため、 $L\triangleleft G$ である。よって $G$ は単純群ではない。
3. $54=2\cdot3^3$ である。 $H,K$ をそれぞれ $G$ のシロー $2$ 部分群、シロー $3$ 部分群とする。シロー $2$ 部分群の数を $s$ 、シロー $3$ 部分群の数を $t$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod2,t\equiv1\mod3$ である。 $H\subset N_G(H),K\subset N_G(K)$ なので、 $s=(G:N_G(H)),t=(G:N_G(K))$ はそれぞれ $(G:H)=27,(G:K)=2$ の約数である。 $s$ は $1,3,9,27$ のいずれか、 $t$ は $1,2$ のいずれかである。 $t\equiv1\mod3$ を満たすのは $1$ のみなので $t=1$ である。これは $K$ の共役が $K$ のみであることを意味するため、 $K\triangleleft G$ である。よって $G$ は単純群ではない。
※ $|K|=27$ で指数は $2$ 、p.81 演習問題2.8.2を使えば指数 $2$ の部分群が正規部分群であることが言える

#### 4.5.5

$56=2^3\cdot7$ である。シロー $2$ 部分群の数を $s$ 、シロー $7$ 部分群の数を $t$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod2,t\equiv1\mod7$ である。 $H\subset N_G(H),K\subset N_G(K)$ なので、 $s=(G:N_G(H)),t=(G:N_G(K))$ はそれぞれ $(G:H)=7,(G:K)=8$ の約数である。 $s$ は $1,7$ のいずれか、 $t$ は $1,2,4,8$ のいずれかである。

1. $s=1$ の場合、これは $H$ の共役が $H$ のみであることを意味するため、 $H\triangleleft G$ である。
2. $s=7$ の場合、

※シロー $7$ 部分群(巡回群になる)の方を考えて場合分け

#### 4.5.6


※(2)位数 $3$ の元、位数 $5$ の元を考えて位数 $2$ の元の共役による作用の行き先で場合分け

#### 4.5.7

※(3) 4.5.5と同様の議論

#### 4.5.8 担当

1. $24=2^3\cdot3$ なので $|H|=8$ である。シロー $2$ 部分群の数を $s$ とすると、(第2版)p.119定理4.5.7(4)より $s\equiv1\mod2$ である。 $H\subset N_G(H)$ なので、 $s=(G:N_G(H))$ は $(G:H)=3$ の約数である。よって $s$ は $1,3$ のいずれかである。以下によりいずれの場合も $G$ が非自明な正規部分群を持つため $G$ は単純群ではない。
   1. $s=1$ の場合、 $H$ の共役が $H$ のみであるため、 $H\triangleleft G$ かつ $|H|=8$ であるから $G$ は非自明な正規部分群を持つ。
   2. $s=3$ の場合、シロー $2$ 部分群を $H_1, H_2, H_3$ と置く。 $G$ の $\lbrace H_1,H_2,H_3\rbrace$ に対する共役による作用の置換表現 $\rho:G\rightarrow\mathfrak{S}_3$ を考える。(第2版)p.100 命題4.1.12より $\rho$ は群の準同型であるため、(第2版)p.61 命題2.8.3より $\mathrm{Ker}(\rho)\triangleleft G$ となるため、 $G$ は正規部分群を持つ。 p.70 定理2.10.1(準同型定理)から $G/\mathrm{Ker}(\rho)\cong\mathrm{Im}(\rho)$ でp.119 定理4.5.7(3)より $G$ のすべてのシロー $2$ 部分群が共役であることから少なくとも $3\le|\mathrm{Im}(\rho)|\le6$ なので $4\le|\mathrm{Ker}(\rho)|\le8$ となり $\mathrm{Ker}(\rho)$ は $G$ の非自明な正規部分群となる。

※1. $|G|=24\gt|\mathfrak{S}_3|=6$ なので $\rho$ は単射ではない。よってp.49 命題2.5.15から $\mathrm{Ker}(\rho)\neq\lbrace1_G\rbrace$ 、また $\mathrm{Ker}(\rho)=G$ とすると $H_1,H_2,H_3$ が共役にならないので $\mathrm{Ker}(\rho)\neq G$

#### 4.5.9
