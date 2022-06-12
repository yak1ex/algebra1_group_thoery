# 代数学1 群論入門

## 2章の演習問題

### 2.2 環・体の定義

#### 2.2.1

$\mathbb{Z}/7\mathbb{Z}$

1. $\overline{4}+\overline{5}=\overline{2}$
2. $\overline{2}-\overline{5}=\overline{4}$
※1.の両辺から $\overline{5}$ 引いてもよい
※そもそも引き算(マイナス)がなにものかという話はあり、逆元の加算とするともうちょい確認が必要か($-\overline{5}=\overline{2}$の加算とか)
3. $\overline{4} \times \overline{5}=\overline{6}$
4. $\overline{5}^3=\overline{4} \times \overline{5}=\overline{6}$
5. $\overline{4}^{32}$
$\overline{4}^3=\overline{4} \times \overline{4} \times \overline{4} = \overline{2} \times \overline{4} = \overline{1}$ のため
$\overline{4}^{32}=\overline{4}^{3 \times 10 + 2}=\left(\overline{4}^3\right)^{10} \times \overline{4}^2=\overline{1} \times \overline{2}=\overline{2}$
(当初は $\overline{4}^{2},\overline{4}^{4},\overline{4}^{8},...$ と自乗で計算していこうかと思ったが $\overline{4}^{4}=\overline{4}$ になったので↑にしたが、自乗を続けると$\overline{4},\overline{2},\overline{4},\overline{2},...$を繰り返すとしても簡単だった)(※指数法則が成立することはp.21に触れてある)

#### 2.2.2

$\mathbb{Z}/39\mathbb{Z}$

1. $\overline{34} \times \overline{21} \times \overline{33}=\overline{2} \times \overline{17} \times \overline{3} \times \overline{7} \times \overline{3} \times \overline{11}=\overline{2} \times \overline{2} \times \overline{3} \times \overline{3} \times \overline{11} = \overline{5} \times \overline{9}=\overline{6} \qquad (\because 17 \times 7 = 119 = 3 \times 39 + 2, 2 \times 2 \times 11 = 44 = 39 + 5)$
別解：$34 \cdot 21 \cdot 11 \equiv 8 \cdot 8 \cdot 11 \equiv 64 \cdot 11 \equiv 12 \cdot 11 \equiv 132 \equiv 2 \pmod{13}$ なので
$34 \cdot 21 \cdot 33 \equiv 2 \cdot 3 \equiv 6 \pmod{39}$
2. $\overline{25} \times \overline{18} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{3} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{39}=\overline{0}$
→$\overline{39}$ という表記は存在しないので↑は駄目
$\overline{25} \times \overline{18} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{3} \times \overline{13}=\overline{25} \times \overline{6} \times \overline{0}=\overline{0}$
3. $\overline{16}^8$
$\overline{16}^2=\overline{22}\qquad(\because 16 \times 16 = 256 = 6 \times 39 + 22$)
$\overline{16}^4=\left(\overline{16}^2\right)^2=\overline{22}^2=\overline{16}\qquad(\because 22\times22=484=12\times39+16)$
$\overline{16}^3=\overline{16}^2\times\overline{16}=\overline{22}\times\overline{16}=\overline{1}\qquad(\because 22\times16=352=9\times39+1)$
$\overline{16}^8=\overline{16}^{3\times2+2}=\overline{16}^2=\overline{22}$
4. $\overline{16}^{34}=\overline{16}^{3\times11+1}=\overline{16}$
