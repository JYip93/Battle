feature 'view player 2 hitpoints' do
  scenario 'allows you to see player 2 hitpoints' do
    visit "/"
    fill_in 'name1', with: "Ollie"
    fill_in 'name2', with: "Johnny"
    click_button 'Submit'
    expect(page).to have_content "Johnny's HP"
  end
end