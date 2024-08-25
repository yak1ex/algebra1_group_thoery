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

def check_presentation(n):
  Gn = F / [a^2, b^3, (a*b)^n]
  print(Gn)
  print(Gn.order())
  print(Gn.structure_description())

check_presentation(2)
# Finitely presented group < a, b | a^2, b^3, (a*b)^2 >
# 6
# S3

check_presentation(3)
# Finitely presented group < a, b | a^2, b^3, (a*b)^3 >
# 12
# A4

check_presentation(4)
# Finitely presented group < a, b | a^2, b^3, (a*b)^4 >
# 24
# S4

check_presentation(5)
# Finitely presented group < a, b | a^2, b^3, (a*b)^5 >
# 60
# A5

#check_presentation(6)
# Finitely presented group < a, b | a^2, b^3, (a*b)^6 >
# sage.libs.gap.util.GAPError: Error, reached the pre-set memory limit
