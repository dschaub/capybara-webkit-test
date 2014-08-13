require 'pp'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara-webkit'

RSpec.configure do |config|
    config.include Capybara::DSL
end

Capybara.default_driver = :webkit
Capybara.javascript_driver = :webkit

describe 'derp' do
    it 'does stuff' do
        visit 'http://localhost:3000/'
        expect(page).to have_content 'Look at me!'
        pp page.driver.console_messages
    end
end
