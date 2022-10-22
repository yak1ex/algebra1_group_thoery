# 代数学1 群論入門

## 2章の演習問題

### 2.8 正規部分群と剰余群

#### 2.8.1

1. $H=\mathfrak{S}_3 \subset G = \mathfrak{S}_4$
2. $H=\mathrm{SO}(2) \subset G=\mathrm{GL}_2(\mathbb{R})$
3. $H=\mathrm{GL}_2(\mathbb{R}) \subset G=\mathrm{GL}_2(\mathbb{C})$
4. $H=\{ 1, (1 2)(3 4), (1 3)(2 4), (1 4)(2 3) \} \subset G=\mathfrak{S}_4$
5. $G \subset \mathrm{GL}_2(\mathbb{R})$ かつ下三角行列、$H \subset G$で対角成分が等しい

#### 2.8.2

$H$ 指数2の部分群なら $G$ は正規部分群

#### 2.8.3 担当

任意の $x \in N_1 N_2$ は $n_1 \in N_1, n_2 \in N_2$によって$x = n_1 n_2$と表せる。$N_1,N_2$が正規部分群なので、任意の$g \in G$について$g n_1 g^{-1} \in N_1$かつ$g n_2 g^{-1} \in N_2$。従って任意の$g \in G$について、$g x g^{-1} = g n_1 n_2 g^{-1} = g n_1 (g^{-1} g) n_2 g^{-1} = (g n_1 g^{-1}) (g n_2 g^{-1}) \in N_1 N_2$となるため、定義に従い$N_1 N_2$は正規部分群である。

#### 2.8.4

$\mathfrak{S}_3$ の部分群をすべて求める&正規部分群の特定

#### 2.8.5

四元数群の部分群をすべて求める&正規部分群の特定