require_relative 'web_helpers'

feature 'view player 2 hitpoints' do
  scenario 'allows you to see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "Ollie vs. JohnnyOllie's HP is 50 Johnny's HP is 50"
  end
end