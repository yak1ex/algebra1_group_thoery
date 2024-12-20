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

### 演習問題

