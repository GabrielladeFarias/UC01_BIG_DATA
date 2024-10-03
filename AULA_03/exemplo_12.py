nome = input("Informe o nome do studante: ")
n1 = float(input("Informe a primeira nota: "))
n2 = float(input("Informe a segunda nota: "))
media = (n1+n2)/2
if media >= 70:
    print(f"{nome} você está Aprovado, pois sua media foi: {media:.2f}")
elif media >= 30 and media < 70:
    print(f"{nome}, você está em Recuperação, pois sua media foi: {media:.2f}")
else:
    print(f"{nome}, você está Reprovado, pois sua media foi: {media:.2f}")