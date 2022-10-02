# 代数学1 群論入門

## 2章の演習問題

### 2.7 両側剰余類

#### 2.7.1

$G=\mathfrak{S}_4, H=\mathfrak{S}_3, H$ の元を$4$固定の$G$の元とみなす。$H\backslash G/H$ の完全代表系を求めよ

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