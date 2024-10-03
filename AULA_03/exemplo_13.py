#Exercício numeros inteiros
n1 = input("Informe um número: ")
n2 = input("Informe o segundo número: ")
if n1 == n2:
    numeros = n1 * n2
    print("Os números são iguais ") # OU - print(f"Os valores são iguais, então o produto é {n1*n2})
elif n1 != n2: # Ou é possivel utilizar o else com print(valores diferentes)
    soma = n1 + n2
    print("Os números são diferentes ")