soma_M = 0
soma_F = 0
cont_M = 0
cont_F = 0
maior = 0
for i in range(5):
    nome = input("Informe seu nome: ")
    idade = int(input("Informe sua idade: "))
    sexo = input("Informe F para -  FEMININO e M para - Masculino: ")
    if idade > maior:
        maior = idade
    if sexo == "M" or sexo == "m":
        soma_M = soma_M + idade
        cont_M += 1
    if sexo == "F" or sexo == "f":
        soma_F = soma_F + idade
        cont_F += 1

media_M = soma_M / cont_M
media_F = soma_F / cont_F
print(f"A soma das idades dos homens é {soma_M} e das mulheres é {soma_F}")
print(f"A média das idades dos homens é {media_M:.2f} e das mulheres é {media_F:.2f}")
print(f"A maior idade é {maior}")