require_relative 'web_helpers'


feature 'switching turns' do
    scenario 'After each attack the game will switch turns' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content "Johnny's turn to attack"
    end
end