def pythag(n):
    for n1 in xrange(1, n):
        for n2 in xrange(1, n):
            for n3 in xrange(1, n):
                if n1 + n2 > n3 and n1 + n3 > n2 and n2 +n3 > n1 and n1*n1 + n2*n2 == n3*n3:
                    print n1, n2, n3

def perms(L):
    n = []
    if L == []:
        return [n]
    for n1 in L[:]:
        n3 = L[:]
        n3.remove(n1)
        print 'n3', n3
        for n2 in perms(n3):
            n.append(n2)
    return n

if __name__ == "__main__":
    #pythag(80)
    print perms([1,2,3])
