# 4.2.4

# 中心化群自体(答え)を計算させる

# (1)
G = SymmetricGroup(4)
g = G([(1, 2)])
print(G.centralizer(g))
# Subgroup generated by [(3,4), (1,2)] of (Symmetric group of order 4! as a permutation group)

# (2)
G = SymmetricGroup(4)
g = G([(1, 2),(3, 4)])
print(G.centralizer(g))
# Subgroup generated by [(3,4), (1,2), (1,3)(2,4)] of (Symmetric group of order 4! as a permutation group)

# (3)
G = SymmetricGroup(4)
g = G([(1, 2, 3)])
print(G.centralizer(g))
# Subgroup generated by [(1,2,3)] of (Symmetric group of order 4! as a permutation group)

# (4)
G = SymmetricGroup(5)
g = G([(1, 2, 3)])
print(G.centralizer(g))
# Subgroup generated by [(4,5), (1,2,3)] of (Symmetric group of order 5! as a permutation group)

# (5)
G = SymmetricGroup(6)
g = G([(1, 2, 3),(4, 5, 6)])
print(G.centralizer(g))
# Subgroup generated by [(4,5,6), (1,2,3), (1,4)(2,5)(3,6)] of (Symmetric group of order 6! as a permutation group)

# 位数を調べる
print(PermutationGroup([[(1,2,3)]]).order())
# 3
print(PermutationGroup([[(1,2,3)],[(4,5,6)]]).order())
# 9
print(PermutationGroup([[(1,2,3)],[(4,5,6)],[(1,4),(2,5),(3,6)]]).order())
# 18

# (6)
G = SymmetricGroup(6)
g = G([(1, 2),(3, 4),(5, 6)])
print(G.centralizer(g))
# Subgroup generated by [(5,6), (3,4), (3,5)(4,6), (1,2), (1,5)(2,6)] of (Symmetric group of order 6! as a permutation group)

# 位数を調べる
print(PermutationGroup([[(1,2)], [(3,4)],[(5,6)]]).order())
# 8
print(PermutationGroup([[(1,2)], [(3,4)], [(5,6)], [(1,3),(2,4)]]).order())
# 16
print(PermutationGroup([[(1,2)], [(3,4)], [(5,6)], [(1,3),(2,4)], [(1,5),(2,6)]]).order())
# 48
print(PermutationGroup([[(1,3),(2,4)], [(1,5),(2,6)]]).order())
# 6