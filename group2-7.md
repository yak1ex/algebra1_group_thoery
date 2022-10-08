# 代数学1 群論入門

## 2章の演習問題

### 2.7 両側剰余類

#### 2.7.1

以下、$G\prime=G\backslash H$(※差集合)、$G\prime_i =\{ g | g \in G\prime \land g(4)=i \}(i=1,2,3)$とする。このとき、$G\prime=G\prime_1\cup G\prime_2 \cup G\prime_3$であり、$G=G\prime \cup H$である。
1) $h_1, h_2 \in H$として、$h_2 = h_1^{-1} h_1 h_2$で$h_1^{-1} \in H$なので、$H$の元は同じ両側剰余類に属する。
2) $g \in G\prime$とすると$g(4)\neq4$。また$h_i \in H(i=1,2)$で$h_i(j)\neq4(j=1,2,3)$。このとき$h_1(g(h_2(4))=h_1(g(4))\neq4$なので$h_1 g h_2 \notin H$。すなわち$g$は$H$の元と別の両側剰余類に属する。
$e_i,f_i \in G\prime_i$とする。このとき、$e_i^{-1} (f_i(4))=e_i^{-1}(i)=4$なので、$e_i^{-1} f_i \in H$である。よって、$f_i = 1_G \; e_i \; (e_i^{-1} f_i)$で$1_G, e_i^{-1}f_i \in H$なので$e_i$と$f_i$、すなわち$G\prime_i$の元はそれぞれ同じ両側剰余類に属する。ここで、
$$\begin{pmatrix}1 & 4\end{pmatrix}=\begin{pmatrix}1& i\end{pmatrix}\begin{pmatrix}i& 4\end{pmatrix}\begin{pmatrix}1& i\end{pmatrix}$$
で、$\begin{pmatrix}1 & i\end{pmatrix} \in H$なので、$\begin{pmatrix}1 & 4\end{pmatrix}\in G\prime_1,\begin{pmatrix}2 & 4\end{pmatrix}\in G\prime_2,\begin{pmatrix}3 & 4\end{pmatrix}\in G\prime_3$は同じ両側剰余類に属する。従って$G\prime$の元は同じ両側剰余類に属する。

1.2.より両側剰余類$H\backslash G/H$は$H$の元が属する両側剰余類と$G\prime$が属する両側剰余類の2つで構成されるため、$\{1_G, \begin{pmatrix}1 4\end{pmatrix}\}$などが完全代表系となる。

#### 2.7.2

$G=GL_n(\mathbb{R}),B\subset G$を下三角行列全体

1. $g=(g_{i j})\in GL_n(\mathbb{R}),g_{i n} \neq 0$となる最小の$i$を$i_n$、$\exists b_1,b_2\in B s.t. h=b_1 g b_2 = (h_{i j}),h_{i n}=0(i\neq i_n),h_{i_n j}=0(j\neq n)$
2. $g=(g_{i j})\in GL_n(\mathbb{R}),\exists b_1,b_2\in B, b_1 g b_2$ が置換行列
3. $\sigma, \tau \in \mathfrak{S}_n, P_\sigma, P_\tau$ 置換行列、$\exists b_1,b_2 \in B, b_1 P_\sigma b_ 2 = P_\tau \Rightarrow \sigma(n)=\tau(n)$
4. (3)のとき、$b_1 = (b_{1,ij})$として$b_{1,i\sigma(n)}=0(i\neq\sigma(n))$を証明、$\nu$を
$$\begin{pmatrix}
\sigma(n) & \sigma(n)+1 & \sigma(n)+2 & \dots & n \\
n & \sigma(n) & \sigma(n)+1 & \dots & n-1 \\
\end{pmatrix}$$
として $P_\nu b_1 P_\nu^{-1} \in B$を証明
5. (3)のとき$\sigma = \tau$を証明