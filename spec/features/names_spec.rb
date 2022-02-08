require 'capybara/rspec'
require_relative '../../app'

feature 'name form' do
#   scenario 'Asks the player to enter their name' do
#     visit('/names')
#     expect(page).to have_content "Enter your name"
#   end

  scenario 'Saves the name given' do
    visit('/names')
    fill_in "name", with: 'Jack'
    fill_in "name2", with: 'Rakshak'
    click_button("Submit")
    expect(page).to have_content('Jack')
    expect(page).to have_content('Rakshak')
  end
end