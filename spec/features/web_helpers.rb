
def sign_in_and_play
          visit "/"
          fill_in 'name1', with: "Ollie"
          fill_in 'name2', with: "Johnny"
          click_button 'Submit'
end