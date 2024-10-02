#Exercício 02_ Calculo Prestação
prestacao = float(input("Informe o valor da prestação: "))
taxa = float(input("Informe a taxa de juros: "))
tempo = int(input("Informe o tempo que você planeja pagar, em meses: "))
valorfinal = prestacao+(prestacao*(taxa/100)*tempo)
print(f"O valor da sua prestação em atraso é: R${valorfinal:.2f}")