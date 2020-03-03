Before do
  @button = Button.new
  @register = Register.new
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  Capybara.reset_sessions!
  visit 'https://www.ze.delivery/'
  Capybara.page.driver.browser.manage.window.maximize
end

After do
  Capybara.current_session.driver.quit
end