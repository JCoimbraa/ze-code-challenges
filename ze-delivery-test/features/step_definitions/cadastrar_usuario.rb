# frozen_string_literal: true

Dado('clico no link {string}') do |link|
  case link
  when 'Cadastrar'
    @button.link_register
    end
end

Dado('informo dados para cadastro') do
  @register.name
  @register.email
  @register.password
  @register.cpf
  @register.cell_phone
  @register.age
end

Então('sistema apresenta a mensagem {string}') do |_message|
    expect(page).to have_content _message
end

Dado('confirmo que tenho mais de {int} anos') do |_int|
  @button.button_yes
end

Dado('clico no botão {string}') do |botao|
  case botao
  when 'INSERIR ENDEREÇO PARA PEDIR'
    @button.button_enter_address_to_order
  when 'Entrar'
    @button.button_log_in
    sleep 1
  when 'Continuar com o e-mail'
    @button.button_continue_with_email
  when 'Cadastrar e continuar'
    @button.button_register_continue
  when 'Ver produtos disponíveis'
    @button.button_see_available_products
  when 'Entrar com o e-mail'
  @button.button_sing_in_email
end
end

Dado("informo os seguites dados para cadastro {string},{string},{string},{string},{string} e {string}") do |nome, email, senha, cpf, telefone, idade|
  find('input[id=signup-email-input-name]').set nome
  find('input[id=signup-email-input-email]').set email
  find('input[id=signup-email-input-password]').set senha
  find('input[id=signup-email-input-document]').set cpf
  find('input[id=signup-email-input-phone]').set telefone
  find('input[id=signup-email-input-age]').set idade
  find('input[id=signup-email-input-age]').send_keys(:tab)
end
