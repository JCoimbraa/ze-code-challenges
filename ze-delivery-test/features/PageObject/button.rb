# frozen_string_literal: true

class Button
  include Capybara::DSL

  def button_enter_address_to_order
    click_button 'INSERIR ENDEREÇO PARA PEDIR'
  end

  def button_see_available_products
    click_button 'Ver produtos disponíveis'
  end

  def button_yes
    click_button 'Sim'
  end

  def button_log_in
    click_button 'Entrar'
  end

  def button_continue_with_email
    click_button 'Continuar com o e-mail'
  end

  def button_register_continue
    find('#signup-email-button-signUp').click
  end

  def link_register
    find('#login-home-link-dont-have-account').click
 end

 def button_sing_in_email
  find('#login-home-email-button-sign-in').click
end
end
