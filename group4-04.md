# 代数学1 群論入門

## 4.4 p群

### メモ

#### 例4.4.2

* $\mathbb{Z}/p^n\mathbb{Z}$ は可換群。可換群の直積は可換群。二面体群は可換群ではない。

#### 命題4.4.3

類等式の右辺には $1$ が必ず現れる → p.95 単位元 $1_G$ の共役が $1_G$ しかないため

### 演習問題

#### 4.4.1

ref. https://iwai-math-blog.com/pgunnnochuushinn-not-e/#toc_id_4_1
ref. urn:isbn:978-4-535-80636-8 p.174 命題7.20(4)

##### メモ

###### 表記

↑リンク先における式 $C_n(G/N) = C_n(G)N/N$ で $N/N$ になっている理由は $C_n(G)N\triangleright N$ を保証する(剰余群として表記する)ためだと思われる( $C_n(G)\supset N$ とは限らないので $C_n(G)\triangleright N$ とは限らないため $C_n(G)/N$ とは書けない)。この場合、表記だけで両辺ともに群となっていることはわかる。

勉強会での証明で対応する表記は $C^Z_n(G/Z)=C_n(G)Z$

$C_n(G)Z$ という表記を字面通りとると $\lbrace xy\mid x\in C_n(G), y\in Z\rbrace(\subset G)$ であるが(初版 p.50 式2.6.14)、証明の流れを汲めば $\lbrace xZ\mid x\in C_n(G)\rbrace(\subset G/Z)$ であることは明らか。ただしこれが群をなすかは明らかではない(と思う)。左辺 $C^Z_n(G/Z)$ が $G/Z$ の部分群であることは定義より明らかなので、↑ $N/N$ (ここでは $Z/Z$ ) (の1個目の $N$ )部分は気にしなくともよい？つまり右辺 $\lbrace xZ\mid x\in C_n(G)\rbrace$ が(剰余)群となっているかは気にしないでよい？(集合としての一致性だけ言えばよい？)というか $G/Z$ で議論していることが明確であればそれで良さそう。

###### 集合の一致性

$x\in C^Z_n(G/Z)\Rightarrow x\in C_n(G)Z$ の方向しか言っていないので厳密には $C^Z_n(G/Z)\subset C_n(G)Z$ の方向しか言っていない。ほとんど逆方向に辿るだけだが、加えて $[X,Y]$ は $\lbrace [x,y]\mid x\in X, y\in Y\rbrace$ **ではない**(これらの生成する部分群である。初版 p.101 定義4.3.1(2))ので、例えば $C_0^Z(G/Z)=[G/Z,G/Z]$ の任意の元は $g,h\in G, (gZ)(hZ)(gZ)^{-1}(hZ)^{-1}$ としては表せない点(表せるのは生成元)が気になる。(なお逆方向に辿るときに右辺が(剰余)群であることを使うのでは？と思ったが $G/Z$ で議論している前提であれば問題なさそう)

##### 補題

以下、中心化列を表す記号として $C_0(G)=G, C_1(G)=[G,G], C_{i+1}(G)=[G,C_{i}(G)]$ を用いる。
$N\triangleleft G$ とする。
$[G/N,G/N]$ $xNyNx^{-1}Ny^{-1}N=xyx^{-1}y^{-1}N$

##### 本論

仮定法で証明する。$G$ を $p$ 群でかつべき零群ではない最小位数の群とする。

$Z(G)$ を考えると $G$ の部分群であり(p.94)、中心の定義より $\forall g\in G, \forall h\in Z(G)$ について $gh=hg$ なので $ghg^{-1}=h\in Z(G)$ となるため、 $Z(G)$ は $G$ の正規部分群となる。

$|G|=|Z(G)|$ と仮定すると $G$ が可換群となり p.102 例4.3.5 の通りべき零群となる。これは仮定に反するため $|G|\neq|Z(G)$ である。

ここで $|G/Z(G)|$ を考えると、 $|G/Z(G)|=|G|/|Z(G)|$ で $|G|$ が $p$ べきなので $|G/Z(G)|$ も $p$ べきである。また、p.104 命題4.4.3 より $Z(G)\neq\lbrace1\rbrace$ なので $|Z(G)|\neq1$ であるから $|G/Z(G)|\lt|G|$ である。従って $G/Z(G)$ が $|G|$ より位数の小さな $p$ 群となるため、仮定より $G/Z(G)$ はべき零群である。

※ $X$ と $X/Z(G)$ に対する中心化列の対応関係を帰納法で証明する
※ $X/Z(G)$ に対して p.104 命題4.3.10 を使った結果が $X$ に対して同じ命題を使ってべき零群であることが言える→仮定に矛盾8