from sage.matrix.operation_table import OperationTable

def names(s, e = None):
    if isinstance(s, list):
        return list(map(str, s))
    return list(map(str, range(s, e + 1) if e is not None else range(s + 1)))

def elements(g, l):
    return [g[x] for x in l]

def print_table(g, **kw):
    table = OperationTable(g, operation=operator.mul, **kw)
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
