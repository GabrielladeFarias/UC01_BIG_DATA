# Exercício doação de sangue
idade = int(input("Informe sua idade: "))
peso = int(input("Peso: "))
sono = int(input("Informe quantas horas de sono você dormiu nas ultimas 24h: "))
if (idade >= 16 and idade < 69) and peso > 50 and sono >= 6:
    print("Apto a doar")
else:
    print("Não apto")
    