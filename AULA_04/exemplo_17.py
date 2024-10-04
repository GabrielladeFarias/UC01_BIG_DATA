import datetime
data_atual = datetime.date.today()
try:
    nome = input("Informe seu nome: ")
    ano_nasc = int(input("Informe o ano de nascimento: "))
    if ano_nasc == 0:
        print("Verifique o valor informado")
    entrada = int(input("Informe o ano de entrada na empresa: "))
    if entrada == 0:
        print("Verifique o valor informado") # Ou utilizar apenas um if, abaixo dos dois usando as funções ano_nasc == 0 e entrada == 0.
except ValueError:
    print("Verifique os valores informados")
else:
    idade = data_atual.year - ano_nasc
    trab = data_atual.year - entrada
    if idade >= 65:
        print(f"Sr(a){nome} de acordo com a sua {idade} e {trab} anos de serviço, você está Apto")
    elif trab >= 30:
        print(f"Sr(a){nome} de acordo com a sua {idade} e {trab} anos de serviço, você está Apto")
    elif idade >= 60 and trab >= 25:
        print(f"Sr(a){nome} de acordo com a sua {idade} e {trab} anos de serviço, você está Apto")
    else:
        print(f"Sr(a){nome} de acordo com a sua {idade} e {trab} anos de serviço, você está Inapto")