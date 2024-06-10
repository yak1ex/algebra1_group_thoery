F.<a,b> = FreeGroup()
G = F / [a^2, b^2, a*b*a*b]
# shorthand for G = F.quotient([a^2, b^2, a*b*a*b])
print(G)
# Finitely presented group < a, b | a^2, b^2, (a*b)^2 >
H.<a,b,c> = FreeGroup()
I = H / [a^2, b^2, a*b*a*b, a*b*c]
print(I)
# Finitely presented group < a, b, c | a^2, b^2, (a*b)^2, a*b*c >

print(G.order())
# 4
print(G.simplified())
# Finitely presented group < a, b | a^2, b^2, (a*b)^2 >
print(G.structure_description())
# C2 x C2
print(I.order())
# 4
print(I.simplified())
# Finitely presented group < a, b | a^2, b^2, (b*a)^2 >
print(I.structure_description())
# C2 x C2
print(G.is_isomorphic(I))
# True
