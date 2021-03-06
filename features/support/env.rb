require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "faker"
require "time"
require "cpf_faker"
require "correios-cep"
require_relative "helper.rb"
require "cucumber"
require "pry"

World(Helper)

Capybara.configure do |config|
  #selenium  selenium_chrome selenium_chrome_healess
  config.default_driver = :selenium_chrome
  config.app_host = "http://pjdigital.lab.sistemas.sofisa.local"
  config.default_max_wait_time = 20
end

Capybara.page.driver.browser.manage.window.maximize
