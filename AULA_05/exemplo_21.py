soma = 0
for i in range(5):
    nome = input("Informe seu nome: ")
    idade = int(input("Informe sua idade: "))
    soma = soma + idade
print(f"A soma das idades de é {soma} e a média das idades é {(soma/ (i + 1))}")