require 'capybara/rspec'
require_relative '../../app'
# Capybara.app = Battle
feature 'homepage' do
    scenario 'should display Testing infrastructure working!' do
        visit("/")
        expect(page).to have_content('Testing infrastructure working!')
    end
end
  