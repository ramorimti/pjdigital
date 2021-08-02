
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "faker"
require "time"
#require_relative "page_helper.rb"
#require_relative "helper.rb"
require "cucumber"
require "pry"



Capybara.configure do |config|
    #selenium  selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'http://pjdigital.lab.sistemas.sofisa.local'
    #config.app_host = 'https://pjdigital.hml.sistemas.sofisa.local'
    config.default_max_wait_time = 10    
              
end  
Capybara.page.driver.browser.manage.window.maximize