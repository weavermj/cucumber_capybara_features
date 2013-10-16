require 'capybara'
require 'rspec'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.javascript_driver = :webkit
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'http://localhost:4567'
end

Around "@max_wait_5" do |scenario, block|
  @wait_time = Capybara.default_wait_time
  Capybara.default_wait_time = 5
  block.call
  Capybara.default_wait_time = @wait_time
end


Around "@max_wait_100" do |scenario, block|
  @wait_time = Capybara.default_wait_time
  Capybara.default_wait_time = 100
  block.call
  Capybara.default_wait_time = @wait_time
end

module Capybara
  module Node
    class Element
      def hover
        @session.driver.browser.action.move_to(self.native).perform
      end
    end
  end
end