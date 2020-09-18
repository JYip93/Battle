require_relative 'web_helpers'


feature 'switching turns' do
    scenario 'After each attack the game will switch turns' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).to have_content "Johnny's turn to attack"
    end
    scenario 'Switches back to player1 after player 2\'s turn' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        click_button 'Attack'
        click_link "OK"
        expect(page).to have_content "Ollie's turn to attack"
    end
end