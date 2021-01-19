require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium
    #config.default_driver = :selenium
    config.app_host = "https://www.ze.delivery/" #Docker TollBox no windows
end