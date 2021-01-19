#language: pt

Funcionalidade: Login
    Para que eu possa realizar pedido de bebidas
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenario: Login Válido
        Quando eu faço login com "usuario" e "senha"
        Então devo ver o "nome" do usuário logado

    @login_hapless
    Cenario: Login inválido
        Quando eu faço login com "usuario" ou "senha" inválidos ocorre falha de login
        Então não devo ser autenticado

    @login_usuario_no_formato_incorreto
    Cenario: Login com usuario no formato incorreto
        Quando eu faço login com "usuario" no formato incorreto
        Então não devo ser autenticado
        E devo visualizar a "mensagem" de erro

    @login_senha_pequena
    Cenario: Login com senha pequena
        Quando eu faço login com "senha" pequena
        Então não devo ser autenticado
        E devo visualizar a "mensagem" de erro abaixo do campo senha.

    
        
        


   