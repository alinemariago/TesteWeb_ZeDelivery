Quando("eu faço login com {string} e {string}") do |email,senha|
   visit "/"
   click_button "Sim"
   click_button "Aceitar cookies"
   click_button "Entrar"
   @email = "mavinnicius@gmail.com"
   @senha = "M1234567"
   find("#login-mail-input-email").set @email
   find("#login-mail-input-password").set @senha
   click_button "Entrar"
  end
  
  Então("devo ver o {string} do usuário logado") do |expect_name|
    sleep 3
    expect_name = "Olá, Marcos"
    user = find('.css-1p15ya-userBadgeBase .css-10zhe0i-textContainer .css-162x1q9-textBase-UserProfileCard')
    expect(user.text).to eql expect_name
  end

  Quando('eu faço login com {string} ou {string} inválidos ocorre falha de login') do |email,senhainvalida|
   visit "/"
   click_button "Sim"
   click_button "Entrar"
   senhainvalida = "M123456789"
   find("#login-mail-input-email").set @email
   find("#login-mail-input-password").set senhainvalida
   click_button "Entrar"
  end

  Então('não devo ser autenticado') do
    expect_message = "ENTRAR NA CONTA"
    expect(page).to have_text expect_message
  end

  Quando('eu faço login com {string} no formato incorreto') do |email|
    visit "/"
    click_button "Sim"
    click_button "Entrar"
    #click_button "Aceitar cookies"
    find("#login-mail-input-email").set "email"
    find("#login-mail-input-password").set @senha
    click_button "Entrar"
  end
  
  Então('devo visualizar a {string} de erro') do |expect_message|
    expect_message = "Eita, esse e-mail não parece correto"
    expect(page).to have_text expect_message
  end

  Quando('eu faço login com {string} pequena') do |senha|
    visit "/"
    click_button "Sim"
    click_button "Entrar"
    #click_button "Aceitar cookies"
    senha ="abc123"
    find("#login-mail-input-email").set @email
    find("#login-mail-input-password").set senha
    click_button "Entrar"
  end
  
  Então('devo visualizar a {string} de erro abaixo do campo senha.') do |senhapequena|
    expect_messagesenha = "Sua senha está muito pequena"
    message = find(' .css-1jylczx-Input .css-b9g1ov-textErrorMessage-Input')
    expect(message.text).to eql expect_messagesenha
  end