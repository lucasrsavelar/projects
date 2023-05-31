def increasing (n):
    ultimoDigito = n % 10
    restoNumero = int(n/10)
    penultimoDigito = restoNumero % 10
    while (restoNumero != 0):
        if (ultimoDigito < penultimoDigito):
            return False
        else:
            n = restoNumero
            ultimoDigito = n % 10
            restoNumero = int(n/10)
            penultimoDigito = restoNumero % 10
            
    return True
    
def decreasing (n):
    ultimoDigito = n % 10
    restoNumero = int(n/10)
    penultimoDigito = restoNumero % 10
    while (restoNumero != 0):
        if (ultimoDigito > penultimoDigito):
            return False
        else:
            n = restoNumero
            ultimoDigito = n % 10
            restoNumero = int(n/10)
            penultimoDigito = restoNumero % 10
            
    return True


def ehBouncy (n):
    return not(increasing(n) or decreasing(n))

totalBouncys = 525 #quantidade conhecida de bouncys abaixo de 1000
totalNums = 999
proporcao = (totalBouncys / totalNums) * 100

while(proporcao != 99.0):
    totalNums += 1
    if (ehBouncy(totalNums)):
        totalBouncys += 1
    proporcao = (totalBouncys / totalNums) * 100
    
print(totalNums)