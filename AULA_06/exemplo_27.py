nomes = []
medias =[]
resp = "S"
while resp == "S" or resp == "s":
    nomes.append(input("Informe o nome do estudante: "))
    medias.append(float(input("Informe a média do estudante: "))) #Comando append, adiciona um elemento ao final da lista.
    resp = input("Deseja Continuar(S/N)? ")
for i in range(len(medias)):
    print(i,"-",nomes[i]," - ",medias[i]) #Comando para exibir a tabela com todos os dados os nomes e medias.
maior_media = max(medias)
pos = medias.index(maior_media)
print(f"{nomes[pos]}, você possui a maior média. ")
print(nomes)
print(medias)
print(f"A maior media é: {max(medias)}. ")
print(f"A menor media é: {min(medias)}. ")
print(f"A média da turma é: {sum(medias)/len(medias)}. ")
print(f"A amplitude da média da turma é {max(medias)-min(medias)}") #Variação para verificar a discrepancia entre os dados.
medias.sort()
print(medias)
medias.sort(key=int, reverse=True) #Comando para apresentar os resultados de forma decrescente. ou 
medias.sort(reverse = "false")