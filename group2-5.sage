from sage.matrix.operation_table import OperationTable

def names(s, e = None):
    if isinstance(s, list):
        return list(map(str, s))
    return list(map(str, range(s, e + 1) if e is not None else range(s + 1)))

def elements(g, l):
    return [g[x] for x in l]

def print_table(g, **kw):
    table = OperationTable(g, operation=operator.mul, **kw)
    print(g._gap_().StructureDescription())
    print(g, '\n', table, latex(table), '\n')

# $(\mathbb{Z}/5\mathbb{Z})^\times$
Z5Zx = Integers(5).unit_group() # Z/5Z の単元群
Z5Zx_table = OperationTable(Z5Zx, operation=operator.mul, names=names(1,4), elements=elements(Z5Zx, [0,1,3,2]))
print_table(Z5Zx, names=names(1,4), elements=elements(Z5Zx, [0,1,3,2]))
# $\mathbb{Z}/4\mathbb{Z}$ と同型
print_table(Z5Zx, names=names(3))

# $(\mathbb{Z}/7\mathbb{Z})^\times$
Z7Zx = Integers(7).unit_group() # Z/7Z の単元群
# $C_6$ と同型
print_table(Z7Zx, names=names(1,6))
# $\phi_{\overline{m}}$
print_table(Z7Zx, names=names(1,6), elements=elements(Z7Zx, [0,2,1,4,5,3]))
# Z/2Z × Z/3Z
print_table(Z7Zx, names=names([1,2,4,-1,-2,-4]), elements=elements(Z7Zx, [0,2,4,3,5,1]))

# $(\mathbb{Z}/8\mathbb{Z})^\times$
Z8Zx = Integers(8).unit_group() # Z/8Z の単元群
# $\phi_{\overline{m}}$
print_table(Z8Zx, names=names([1,3,5,7]))
# Z/2Z × Z/2Z
print_table(Z8Zx, names=names(['(0,0)','(0,1)','(1,0)','(1,1)']))

# $(\mathbb{Z}/9\mathbb{Z})^\times$
Z9Zx = Integers(9).unit_group() # Z/9Z の単元群
# $\phi_{\overline{m}}$
print_table(Z9Zx, names=names([1,2,4,5,7,8]), elements=elements(Z9Zx, [0,1,2,5,4,3]))
# $C_6$
print_table(Z9Zx, names=names([1,2,4,8,7,5]))
# Z/2Z × Z/3Z
print_table(Z9Zx, names=names([1,4,7,8,5,2]), elements=elements(Z9Zx, [0,4,2,3,1,5]))

# $(\mathbb{Z}/15\mathbb{Z})^\times$
Z15Zx = Integers(15).unit_group() # Z/15Z の単元群
# $\phi_{\overline{m}}$
print_table(Z15Zx, names=names([1,2,4,7,8,11,13,14]), elements=elements(Z15Zx, [0,1,2,7,3,6,5,4]))
# Z/2Z × Z/4Z
print_table(Z15Zx, names=names([1,2,4,8,14,13,11,7]))
