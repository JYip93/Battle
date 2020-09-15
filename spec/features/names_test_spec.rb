<<<<<<< HEAD
require_relative 'web_helpers'

feature 'names test' do
  scenario 'can fill in names on form, submit form and see names on screen' do
    sign_in_and_play
=======
feature 'names test' do
  scenario 'can fill in names on form, submit form and see names on screen' do
    visit "/"
    fill_in 'name1', with: "Ollie"
    fill_in 'name2', with: "Johnny"
    click_button 'Submit'
>>>>>>> 7fb41bca17706a0ec83bb24449b348e696b6fc36
    expect(page).to have_content 'Ollie vs. Johnny'
  end
end