# 代数学1 群論入門

## 4.8 有限生成アーベル群

### メモ

#### 誤記と思われるもの

※行、列の添字が逆

$$
\def\bm#1{{\boldsymbol #1}}
\bm{a}_i=\begin{pmatrix}
a_{1i}\\
\vdots\\
a_{ni}\\
\end{pmatrix} (i=1,\cdots,m)
$$

※全般的に $n,m$ が逆

準同型 $T_A:\mathbb{Z}^m\rightarrow\mathbb{Z}^n$ を $x\in\mathbb{Z}^m$ に対し ※ $x$ の定義域

$\bm{x}=\lbrack x_1,\cdots,x_m\rbrack$ なら、 $T_A(\bm{x})=x_1\bm{a}_1+\cdots+x_m\bm{a}_m$ なので $\mathrm{Im}(T_A)=M$ 。 ※p.132で $M=\langle\bm{x}_1,\cdots,\bm{x}_m\rangle$ としている

補題4.8.5のところで　準同型 $T_B:\mathbb{Z}^m\rightarrow\mathbb{Z}^n$

※一部抜けてる

$$
\mathrm{Coker}(T_A)\ni\bm{y}+\mathrm{Im}(T_A)\mapsto g_1\bm{y}+\mathrm{Im}(T_B)\in\mathrm{Coker}(T_B)
$$

p.135 $G$ が定理4.8.2(1)の形をしていれば
→ 定理4.8.1(1)の形をしていれば

p.136 すべての $i$ に対し $\bar{c}_i=c_i\mod \mathbb{Z}/p^{a_t}\mathbb{Z}$
→ $\bar{c}_i=c_i\mod p^{a_t}$

p.137 定理4.8.1(1)の $e_t$ から始める → 4.8.1(1)では添字 $t$ がないので微妙

#### p.130 定理4.8.1 定理4.8.2 の証明の流れ

※ $G$ が $g_1,\cdots,g_n$ で生成されてるのでそれぞれ何個足したかで $\mathbb{Z}^n$ の世界で考えることができる

##### 定理4.8.1(1)、定理4.8.2(1)まで

準同型 $\phi:\mathbb{Z}^n\ni[a_1,\cdots,a_n]\mapsto a_1g_1+\cdots+a_ng_n\in G$ を考える
$M=\mathrm{Ker}(\phi)$ とすると $G\cong\mathbb{Z}^n/M$
命題4.8.4 より $M$ も有限生成なので $M=\langle \bm{a}_1,\cdots,\bm{a}_m\rangle$ と表せる
$\bm{a}_i$ を並べた行列 $A$ に対して $T_A(\bm{x})=A\bm{x}$ とすると、 $M=\mathrm{Im}(T_A)$ となり
$G\cong\mathrm{Coker}(T_A)=\mathbb{Z}^n/\mathrm{Im}(T_A)=\mathbb{Z}/M$
補題4.8.5 から $g_1\in\mathrm{GL}_n(\mathbb{Z}),g_2\in\mathrm{GL}_m(\mathbb{Z}),B=g_1A g_2,T_B:\mathbb{Z}^m\ni\bm{x}\mapsto T_B\bm{x}\in\mathbb{Z}^n$ とすると $\mathrm{Coker}(T_A)\cong\mathrm{Coker}(T_B)$ なので、適当な $g_1,g_2$ をかけて構わない
補題4.8.6 から $g_1,g_2$ をうまく選んでやれば $g_1A g_2$ がいい感じの形になる
そうすると $\mathrm{Im}(T_{g_1A g_2})$ の形から $G\cong\mathrm{Coker}(T_A)\cong\mathrm{Coker}(T_{g_1Ag_2})\cong\mathbb{Z}^n/\mathrm{Im}(T_{g_1Ag_2})\cong\mathbb{Z}/e_1\mathbb{Z}\times\cdots\times\mathbb{Z}/e_l\mathbb{Z}\times\mathbb{Z}^{(n-l)}$
$e_i=1$ の因子(自明な群)を除いて定理4.8.1(1)
中国式剰余定理によって素数べきに分解して定理4.8.2(1)

##### 定理4.8.2(2)

有限位数の元の集合 $G_{\mathrm{fin}}$ 、 $p$ べき位数の元の集合 $G(p)$ を考える ( $G$ の部分群になっている)とこれらは $G$ によって定まる。
定理4.8.2(1)から $G/G_{\mathrm{fin}}\cong\mathbb{Z}^r$ でこれは $G$ から定まる。
$\mathbb{Z}^r\cong\mathbb{Z}^s\Rightarrow r=s$ を示すことで $r$ の一意性を示す。
$G(p)$ について位数の大きい方から特定して一意性を示す。

##### 定理4.8.1(2)

4.8.2(2)の結果から各素数について素数べきの大きい方からとっていくと一意性が示せる

#### 命題4.8.4

「ネーター環上の有限生成加群の部分加群は有限生成である」
有限生成の部分群で有限生成でないものがある？
→
https://ja.wikipedia.org/wiki/%E6%9C%89%E9%99%90%E7%94%9F%E6%88%90%E7%BE%A4#%E9%83%A8%E5%88%86%E7%BE%A4
>有限生成群の部分群は必ずしも有限生成に限らない。二元生成自由群 F2 の交換子部分群は有限生成群の有限生成でない部分群の例を与える。

#### 補題4.8.5

##### $g_1=I_n,g_2=I_m$ の場合に分けて考える

$g_1=I_n$ として議論すると $\mathrm{Im}(T_B)=\mathrm{Im}(T_{Ag_2})=\mathrm{Im}(T_A)=M$ になるので、新たに $A g_2$ を $A$ 、 $g_2$ を $I_m$ と置き直せば $g_2=I_m$ の場合に帰着できる。 

※新たに文字入れたほうがわかりやすいかも。

##### $g_2=I_m$ の場合

$\pi_A,\pi_B$ を剰余群に対する自然な写像として写像の関係を図示すると↓のようになる(以下で示すように結果的に可換図式になっている)。

$$
\begin{CD}
\mathbb{Z}^m @>{T_A}>> \mathbb{Z}^n @>{\pi_A}>> \mathbb{Z}^n/\mathrm{Im}(T_A)=\mathrm{Coker}(T_A) \\
@VV{T_B}V @VV{\phi}V @VV{\psi}V \\
\mathbb{Z}^n @= \mathbb{Z}^n @>{\pi_B}>> \mathbb{Z}^n/\mathrm{Im}(T_B)=\mathrm{Coker}(T_B) \\
\end{CD}
$$

p.73 定理2.10.5を、 
|$G$|$N$|$\pi$|$\phi$|
|-|-|-|-|
|$\mathbb{Z}^n$|$\mathrm{Im}(T_A)$|$\pi_A$|$\pi_B\circ\phi$|

として適用すると(※ $\pi_B,\phi$ は準同型なので合成も準同型である)
$\mathrm{Im}(T_A)\subset\mathrm{Ker}(\pi_B\circ\phi)$ であれば
準同型 $\psi:\mathrm{Coker}(T_A)\ni\bm{y}+\mathrm{Im}(T_A)\mapsto g_1\bm{y}+\mathrm{Im}(T_B)\in\mathrm{Coker}(T_B)$ が存在することが言える。

ここで $\mathrm{Im}(\phi\circ T_A)\subset\mathrm{Im}(T_B)$ なので(実際には等しい)、 $\forall \bm{y}\in\mathrm{Im}(T_A)$ について $\phi(\bm{y})\in\mathrm{Im}(T_B)=\mathrm{Ker}(\pi_B)$ である。したがって $(\pi_B\circ\phi)(\bm{y})=1_{\mathbb{Z}^n+\mathrm{Im}(T_B)}$ なので、 $\bm{y}\in\mathrm{Ker}(\pi_B\circ\phi)$ となるから $\mathrm{Im}(T_A)\subset\mathrm{Ker}(\pi_B\circ\phi)$ である。よって↑の通り定理2.10.5から $\psi$ の存在が言える。

#### 補題4.8.6の証明

$$
\begin{pmatrix}
-q & 1 \\
1 & 0 \\
 & & I_{n-2}
\end{pmatrix}A=\begin{pmatrix}
r & \ast & \ast \\
e_1 & \ast & \ast \\
\ast & \ast & \ast
\end{pmatrix}
$$

で、2行目も記載があるのは $g_1\in\mathrm{GL}_n(\mathbb{Z})$ の条件、行列式が $\pm1$ を満たしていることを示すためと思われる。他も同様。

#### $G(p)$ は定理4.8.2の $p_i=p$ であるような因子の直積である。よって、有限個の $p$ を除き、 $G(p)=\lbrace0\rbrace$ であり、 $G_{fin}=\prod_p G(p)$ である。

定理4.8.2(1)は証明したので、 $G\cong\mathbb{Z}^r\times\mathbb{Z}/p_1^{a_1}\mathbb{Z}\times\cdots\times\mathbb{Z}/p_t^{a_t}\mathbb{Z}$ としてよい。
p.43 命題2.4.19より $p^ag=0$ であれば、 $g$ の位数は $p^a$ の約数である(※ここでは加法表記であることに注意)。 $p$ は素数なので $g$ の位数は $1$ であるか、 $p$ の倍数である。 $g$ の位数は各因子の位数の倍数である。 $p_i$ は素数なので $p$ の倍数となるためには $p=p_i$ でなければならない。したがって、 $g$ の $0$ でない因子は $p=p_i$ となる因子である。つまり $g\in G(p)$ は $p_i=p$ であるような因子の直積で表現できる。
逆に、 $p_i=p$ であるような因子は $p^{\max(a_i)}$ 倍することで $0$ となる(位数の倍数である因子の位数( $p_i^{a_i}$ )の倍数になるので)から $G(p)$ に含まれる。

$p_i=p$ となる $p_i$ がなければ $G(p)=\lbrace0\rbrace$ となるので、( $p_i$ が有限個しか無いから)有限個の $p$ を除き $G(p)=\lbrace0\rbrace$ である。

$g\in G_{fin}$ について $\mathbb{Z}^r$ 部分の因子が $0$ ではないとすると $ag=0$ となる $a$ は存在しない。それ以外の因子については、 $a=\prod_i p_i^{a_i}$ とすれば $0$ となる。よって、 $G_{fin}\cong\lbrace0\rbrace\times\mathbb{Z}/p_1^{a_1}\mathbb{Z}\times\cdots\times\mathbb{Z}/p_t^{a_t}\mathbb{Z}$ となるから、 $G_{fin}\cong\prod_p G(p)$ とできる。

※ $G_{fin}$ は $G$ の有限位数の元の集合
※ 4.8.2(1)の時点では一意性はないけど部分群を考えることで $G_{fin},G(p)$ は定義可能
※ アーベル群のシロー $p$ 部分群って $1$ つ？

#### よって $G/G_{fin}\cong\mathbb{Z}^r$

準同型定理を使えばよい

#### $G(p)$ は $G_{\mathrm{fin}}$ のシロー $p$ 部分群である

$G_{\mathrm{fin}}$ を定理4.8.2の形に分けたうち、 $p=p_i$ を全部持ってきたら(つまり $G(p)$ のこと) $a_p=\sum_{\lbrace i\mid p=p_i\rbrace}a_i$ とすると群の位数 $p^{a_p}$ で最大の p べきになる

※一意性が必要かと思ったけど分け方変わっても $p$ べきに寄与するのは $G(p)$ 分だけになること自体は変わらない

#### $M,N$ を実行列とみなせば、 $r=s$ である

* ここでの議論は $\mathbb{Z}^r,\mathbb{Z}^s$ で話してるので一般の線形代数の話に帰着させてる
* $r=\mathrm{rank}(I_r)=\mathrm{rank}(NM)\le\mathrm{rank}(N)\le s,$
$s=\mathrm{rank}(I_s)=\mathrm{rank}(MN)\le\mathrm{rank}(N)\le r,$
より $r=s$

#### $G$ はアーベル群なので、 $H$ は部分群である

「なお $p^ax=p^ay=0(x,y\in H)$ なら、 $p^a(x+y)=0$ である」から来ている。
$p^ax=0$ を $x$ の位数が $p^a$ 以下とみなせばよい。
※ $G(p)$ のの元の位数は $p$ べき

#### $g_1,\cdots,g_{t-1}$ の位数は $p^{a_i}$ より真に小さいので

$0\lt a_1\lt a_2\lt\cdots\lt a_t$ と、因子の位数が $p$ べきなので
元の位数＝因子の位数の最小公倍数が指数最大の値となることから言える

#### $c_1,\cdots,c_{b_t}\in\mathbb{Z}$ とし、(略) $c_1,\cdots,c_{b_i}$ が $p$ で割れることは同値である。

$(\mathbb{Z}/p^{a_t}\mathbb{Z})^{b_t}$ の $b_t$ 個の因子分すべてが $p$ の倍数であることを説明している

#### $p\mathbb{Z}/p^{a_t}\mathbb{Z}\cong\mathbb{Z}/p^{a_t-1}\mathbb{Z}$

第三同型定理かと思ったけどうまくいかない
愚直に示す？

#### $G/H\cong(\mathbb{Z}/p\mathbb{Z})^{b_t}$

同じ成分は打ち消せることはOKだとして

$G/H\cong(\mathbb{Z}/p^{a_t}\mathbb{Z})^{b_t}/(p\mathbb{Z}/p^{a_t}\mathbb{Z})^{b_t}\cong(\mathbb{Z}/p\mathbb{Z})^{b_t}$

$b_t$ 乗部分の取り扱いは言うほど自明か？→因子ごとに考えればよさそう

#### p.137 例題4.8.7の上

$a_{t-1}<a_t-1$ つまり $a_{t-1}\ne a_t-1$ のとき、
$H\cong(\mathbb{Z}/p^{a_1}\mathbb{Z})^{b_1}\times\cdots\times(\mathbb{Z}/p^{a_{t-1}}\mathbb{Z})^{b_{t-1}}\times(\mathbb{Z}/p^{a_t-1}\mathbb{Z})^{b_t}$
(表記は前頁まま、 $\mathbb{Z}/p^{a_{t-1}}\mathbb{Z}\ncong\mathbb{Z}/p^{a_t-1}\mathbb{Z}$ が明確になった)

$a_{t-1}=a_t-1$ のとき、
$H\cong(\mathbb{Z}/p^{a_1}\mathbb{Z})^{b_1}\times\cdots\times(\mathbb{Z}/p^{a_{t-1}}\mathbb{Z})^{(b_{t-1}+b_t)}$

$b_t$ が定まっているなら帰納法の仮定から結局 $a_\star,b_\star$ が定まっていることが言える

#### p.137 次に、定理4.8.1(2)が定理4.8.2(2)から従うことを証明する

可能な4.8.1の形は必ず4.8.2から作れる、ということはそれほど自明でない気がする
逆に4.8.1の形になってるなら、4.8.2の形になって

#### $j=1$ の場合から $s=t$ でなければならず

$e_1=\prod^l_{i=1}p_i^{a_{i\ s-t+1}}=\prod^l_{i=1}p_i^{a_{i\ 1}}$ になってるはず

#### 定理4.8.1 定理4.8.2 の証明でアーベル群であることはどこに効いているか

### 演習問題
