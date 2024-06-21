# 代数学1 群論入門

## 4.6 生成元と関係式

### メモ

#### 定理4.6.2

最後の文は第1版p.44 命題2.5.12ないし第2版p.48 命題2.5.14
準同型ではなく同型とすると $G$ が $n$ 変数の自由群を含まなければならない(同型なんだから当たり前ではある)
例えば $m\ge n$ で $m$ 変数の自由群から $n$ 個重複なく選んでくるとか
系2.8.8はp.62

#### 定義4.6.4

剰余群作るときに割る側の正規部分群は単位元にあたるので $R_i(x)=1$ を満たすことになる
代入は $\phi$ による写像にあたる

#### 定義4.6.5

$R_i(x)\in\mathrm{Ker}(\psi),\mathrm{Ker}(\psi)\triangleleft F_n$ なので、 $gR_i(x)g^{-1}\in\mathrm{Ker}(\psi)$ だから $S\subset\mathrm{Ker}(\psi)$
p.35 命題2.3.13(2) から $N=\langle S\rangle\subset\mathrm{Ker}(\psi)$
p.73 定理2.10.5
記号の乱用をしているのは $x_i$ 側で、 $\psi(x_i)$ の $x_i$ は $F_n$ 、 $\phi(x_i)$ の $x_i$ は $F_n/N$ の元である。

#### 例題4.6.7

少なくとも
全射準同型 $\phi:G\rightarrow H_1$ を考えたとき準同型定理から $G/\mathrm{Ker}(\phi)\cong\mathrm{Im}(\phi)=H_1$ 、ラグランジュの定理から $|G|=|H_1||\mathrm{Ker}(\phi)|$ なので $|G|$ は $|H_1|$ の倍数。

### 演習問題

### 4.6.1

### 4.6.2

### 4.6.3 担当

$xyx=y^2$ なので左から $x$ をかけて $yx=xy^2$

$1=y^5=y\cdot y^2\cdot y^2=y(xyx)(xyx)=yxy^2x=xy^4x=x^2y^8=y^3$

より $y^5=1$ かつ $y^3=1$ から $y^2=1$ となり、
$y^3=1$ かつ $y^2=1$ から $y=1$

### 4.6.4

1. $n\ge3,x_1=(1\;2),\cdots x_{n-1}=(n-1\;n)\in\mathfrak{S}_n\Rightarrow x_i^2=1,x_ix_j=x_j x_i(|i-j|\ge2),x_i x_{i+1}x_i=x_{i+1}x_ix_{i+1}(i=1,\cdots,n-2)$
2. $H_n=\langle x_i,\cdots,x_{n-1}\rangle\Rightarrow|H_n|\le n!$
3. $H_n\cong\mathfrak{S}_n$

### 4.6.5

### 4.6.6 担当

ref. p.125 例題4.6.7

$G=\langle x,y\mid x^{13}=y^3=1,yxy^{-1}=x^3\rangle\Rightarrow|G|=39$

$yx=x^3y$ なのでp.125 例題4.6.6と同じ議論をすると $G$ の任意の元は $x^i y^j(i=0,1,2,\cdots,12,\;j=0,1,2)$ の形で表せるので $|G|\le39$

※$H=\langle x\rangle$ とすると $|G/H|=3$ になるはずで、 $G$ の $G/H$ への左作用による置換表現を考える。 $G/H$ の代表元として $\lbrace1,y,y^2\rbrace$ が取れるので $y$ は $(1\;2\;3)$ として作用するはずである。 $x^9H=H,x^9yH=yx^3H=yH,x^9y^2=yx^3yH=y^2xH=y^2H$ (※ここで $x^iy^2$ を $y^2x$ の形にしたいので $x^9$ を持ってきている)なので $x^9$ は恒等置換として作用する。また $x^{13}=1$ なので $x^4=1$ 、結局 $x=1$ でなければならない。※別になにか使える命題あるはず

### 4.6.7

### 4.6.8

### 4.6.9 担当

1. $\sigma=(3\;4),\tau=(1\;3\;2),\nu=(1\;2\;3\;4)\in\mathfrak{S}_4\Rightarrow\sigma\tau\nu=1\land\mathfrak{S}_4=\langle\sigma,\tau,\nu\rangle$ 
2. $G=\langle x,y,z\mid x^2=y^3=z^4=xyz=1\rangle, G\supset H=\langle z\rangle,S=\lbrace1,y,y^2,y^2z,y^2z^2,y^2z^2y\rbrace\Rightarrow G=HS$
3. $\mathfrak{S}_4\cong G$

### 4.6.10

### 4.6.11

### 4.6.12

### 4.6.13 担当

ref 演習問題 4.6.4

$\mathfrak{S}_6$ の自己同型 $\phi$ で
$\phi((1\;2))=(1\;2)(3\;4)(5\;6)$
$\phi((2\;3))=(1\;4)(2\;5)(3\;6)$
$\phi((3\;4))=(1\;3)(2\;4)(5\;6)$
$\phi((4\;5))=(1\;2)(3\;6)(4\;5)$
$\phi((5\;6))=(1\;4)(2\;3)(5\;6)$

(※内部自己同型は共役なものに移すので互換は互換に移る)