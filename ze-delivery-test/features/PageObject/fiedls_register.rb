# frozen_string_literal: true

class Register
  include Capybara::DSL

  def name
    name = Faker::Name.name
    find('input[id=signup-email-input-name]').set name
  end

  def email
    email = Faker::Internet.email
    find('input[id=signup-email-input-email]').set email
  end

  def password
    find('input[id=signup-email-input-password]').set 'Palestra10'
  end

  def cpf
    $cpf = CpfUtils.cpf
    find('input[id=signup-email-input-document]').set $cpf
  end

  def cell_phone
    # number = Faker::Number.number
    # number1 = '119' + number
    find('input[id=signup-email-input-phone]').set '11949340000'
  end

  def age
    find('input[id=signup-email-input-age]').set '30'
  end
end
