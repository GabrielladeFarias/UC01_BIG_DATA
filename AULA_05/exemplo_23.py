soma = 0
maior = 0
for i in range(5):
    nome = input("Informe seu nome: ")
    idade = int(input("Informe sua idade: "))
    if idade > maior:
        maior = idade
        soma = soma + idade
media = soma / (i + 1)
print(f"A maior idade é {maior}, a soma é {soma} e a média é {media}")