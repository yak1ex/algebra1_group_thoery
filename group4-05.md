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

$G=\mathfrak{S}_4,Y=\lbrace X\mid X\subset G, |X|=2\rbrace$ 左からの積で作用 $\sigma=(1\hspace{5mu}2\hspace{5mu}3), y=\lbrace1,(1\hspace{5mu}2)(3\hspace{5mu}4)\rbrace\in Y$ 

1. $\sigma y$
2. $y$ の安定化群

#### 4.5.2

#### 4.5.3

#### 4.5.4

#### 4.5.5

#### 4.5.6

#### 4.5.7

#### 4.5.8

#### 4.5.9
