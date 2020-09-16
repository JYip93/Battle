require_relative 'web_helpers'

feature 'names test' do
  scenario 'can fill in names on form, submit form and see names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Ollie vs. Johnny'
  end
end

feature 'view player 2 hitpoints' do
  scenario 'allows you to see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "Ollie vs. JohnnyOllie's HP is 50 Johnny's HP is 50"
  end
end

feature 'attack player 2' do
  scenario 'Attacking player 2 and get confirmation back' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Johnny has 30HP remaining"
  end



end