usuarios = ["GabiA", "Erica", "Joses", "Maria"]
senhas = ["GbA", "Diana", "JJSE", "jesus"]
usuario = input("Informe o usuário: ")
senha = input("Informe a senha: ")
for i in range (len(usuarios)):
    if usuarios [i] == usuario:
        senhas == senha.index(senha)
        resp = "Usuário Encontrado"
        break
    else:
        resp = "Usuário não encontrado"
print(resp)