try:
    n1 = int(input("Informe um número: "))
    n2 = int(input("Informe um segundo número: "))
except ValueError:
    print("Verifique a entrada de dados.")
else:
    try:
        result = n1 / n2
    except ZeroDivisionError:
        print("Não é possível dividir por zero.")
    else:
        print(result)