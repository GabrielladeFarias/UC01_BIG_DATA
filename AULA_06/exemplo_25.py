nomes_01 = "Alessandro, Maria, Pedro, Duda, Eduardo"
nomes_02 = ["Alessandro", "Maria", "Pedro", "Duda", "Eduardo"]
print(nomes_01)
print(nomes_02)
print(nomes_02[2]) #Seleciona apenas o segundo vetor. (O VETOR INICIA A CONTAGEM EM 0)
print(len(nomes_02)) #O comando len, mostra quantos registros tem no vetor, ou seja o comprimento.
n = 1
for i in range(len(nomes_02)):
    print(f"{n} - {nomes_02[i]}")
    n += 1  # A junção destes comandos cria uma lista numerada.