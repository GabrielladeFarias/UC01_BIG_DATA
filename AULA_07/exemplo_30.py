temperaturas = []
resp = "S"
while resp == "S" or resp == "s":
    temperaturas.append(int(input("Informe a temperatura: ")))
    resp = input("Deseja continuar(S/N? ")
media = sum(temperaturas) / len(temperaturas)
print(f"A menor temperatura é {min(temperaturas)} °C")
print(f"A maior temperatura é {max(temperaturas)} °C")
print(F"A média das temperaturas é {sum(temperaturas)/len(temperaturas):.2f} °C")