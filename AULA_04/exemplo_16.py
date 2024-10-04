# Execício venda de produtos com desconto
try:
    produto = input("Informe o produto adquirido: ")
    quantidade  = int(input("Informe a quantidade adquirida: "))
    valor = float(input("Informe o preço do produto: R$"))
except ValueError:
    print("Verifique os valores informados")
else:
    total = quantidade * valor
    print(f"O valor total sem desconto é R$ {total:.2f}")
    if quantidade <= 5:
        print(f"O total a pagar é {total*0.98}")
    elif quantidade > 5 and quantidade <= 10:
        print(f"O total a pagar é {total*0.97}")
    else:
        print(f"O total a pagar é {total*0.95}")