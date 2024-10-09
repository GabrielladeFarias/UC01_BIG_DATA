salario_hora = float(input("Informe o salário por hora: "))
horas_trabalhadas = float(input("Digite o número de horas trabalhadas no mês: "))
salario_bruto = salario_hora * horas_trabalhadas
irrf = salario_bruto * 11/100
inss = salario_bruto * 8/100
sindicato = salario_bruto * 5/100
salario_liquido = salario_bruto - (irrf+inss+sindicato)

print(f"O salario bruto é: R${salario_bruto:.2F}")
print(f"Desconto IRRF: R${irrf:.2f}")
print(f"Desconto INSS: R${inss:.2f}")
print(f"Desconto Sindicato: R${sindicato:.2F}")
print(f"Seu salário Líquido é: R${salario_liquido:.2F}")