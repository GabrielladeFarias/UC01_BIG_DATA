sexo = []
olhos = []
cabelos = []
idade = []
resp = "S"
qtd_sexo_idade = 0
qtd_olhos_cabelos = 0
while resp == "S" or resp == "s":
    sexo.append(input("Informe F para -  FEMININO e M para - Masculino: "))
    olhos.append(input("Informe a cor dos olhos A - Azuis, V - Verdes ou C - Castanhos "))
    cabelos.append(input("Informe a cor dos cabelos L -Louros, P - Pretos ou C - Castanhos "))
    idade.append(int(input("Informe a idade: ")))
    resp = input("Deseja Continuar(S/N)? ")

for i in range(len(sexo)):
    if (sexo[i] == "F" or sexo[i] == "f") and (idade[i] >= 18 and idade[i] <= 35):
        qtd_sexo_idade += 1
    if (olhos[i] == "V" or olhos[i] == "v") and (cabelos[i] == "L" or cabelos[i] == "l"):
        qtd_olhos_cabelos += 1


print(f"A maior idade é {max(idade)}, e a menor idade é {min(idade)}, a média das idades é {sum(idade)/len(idade):.0f} anos.")
print(f"A quantidade de pessoas do sexo feminino com idades entre 18 e 35 anos é {qtd_sexo_idade}.")
print(f"A quantidade de pessoas que possuem cabelos louros e olhos verdes é {qtd_olhos_cabelos}.")