maior = 0
for i in range(5):
    nome = input("Informe seu nome: ")
    idade = int(input("Informe sua idade: "))
    if idade > maior:
        maior = idade
print(f"A maior idade é {maior}")