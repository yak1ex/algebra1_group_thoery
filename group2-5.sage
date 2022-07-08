from sage.matrix.operation_table import OperationTable

C4 = CyclicPermutationGroup(4)

# $(\mathbb{Z}/5\mathbb{Z})^\times$
Z5Zx = Integers(5).unit_group()
Z5Zx_table = OperationTable(Z5Zx, operation=operator.mul, names=['1','2','3','4'], elements=[Z5Zx[x] for x in [0,1,3,2]])
print(Z5Zx_table)
print(latex(Z5Zx_table))
# $\mathbb{Z}/4\mathbb{Z}$
Z5Zx_table = OperationTable(Z5Zx, operation=operator.mul, names=['0','1','2','3'])
print(Z5Zx_table)
print(latex(Z5Zx_table))
print(Z5Zx.is_isomorphic(C4))
print(Z5Zx)

print(sage.groups.group.is_Group(Z5Zx))
print(C4)
print(OperationTable(C4, operation=operator.mul))
print(Integers(7).is_isomorphic(Integers(6)))