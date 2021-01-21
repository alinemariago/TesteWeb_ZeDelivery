# Projeto de automação de WEB

Projeto desenvolvido para testes no site: https://www.ze.delivery/

#### **O projeto possui as seguintes Gems:**

- Capybara (capybara é uma ferramenta de teste de integração para Web)
- Cucumber (permite a escrita de testes em uma linguagem muito próxima da natural)
- Rspec (framework BDD para ruby)
- Selenium-webdriver (objetivo é imitar o comportamento de um usuário real em um site)

#### **O projeto possui as seguintes funcionalidades:**

###### Cenários Login:

- Cenário de testes para login válido;
- Cenário de testes para login inválido;
- Cenário de testes para login com usuário no formato incorreto;
- Cenário de testes de login com senha pequena;

### Pré requisitos:
* Gerenciador de versões do Ruby;

- Ruby >= 2.6.6;
- Bundler;
- Firefox



### Instalação Windows:

##### *Guia de instalação do Ruby + Devkit + Bundler no Windows:* - https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95

- *[Firefox] - Configurando navegador Firefox para rodar o testes:*

  - *Baixar no site: https://www.mozilla.org/pt-BR/firefox/new/ Selecione a versão compatível com o seu sistema;*

  - Realizar a instalação do padrão na sua máquina.


### Executando os testes:

```bash
# No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto:
  - bundle install
# Para rodar todos os testes, execute o seguinte comando na pasta do projeto:
  - bundle exec cucumber
# Para rodar cenários específicos utilize tags:
  - bundle exec cucumber -t @login_happy
  - bundle exec cucumber -t @login_hapless
  - bundle exec cucumber -t @login_usuario_no_formato_incorreto
  - bundle exec cucumber -t  @login_senha_pequena
```

**Status do projeto**: Concluído

Enjoy :)

