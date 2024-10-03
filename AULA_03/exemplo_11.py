altura = float(input("Informe sua altura: "))
s = input("Informe F - para Feminino e M - para Masculino: ")
if s == "F" or s == "f":
    f = (62.1*altura)-44.7
    print(f"O seu peso ideal é {f:.2f}")
elif s == "M" or s == "m":
    m = (72.7*altura)-58
    print(f"O seu peso ideal é {m:.2f}")
else:
    print("Verifique o sexo informado")