require_relative 'web_helpers'

feature 'names test' do
  scenario 'can fill in names on form, submit form and see names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Ollie vs. Johnny'
  end
end