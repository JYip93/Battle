require 'game'


describe Game do
    let(:player_double) {double(:player_double, :hp => 50)}
    game = Game.new('Johnny', 'Louis')

    describe 'initialize' do
        it 'accepts 2 player instances' do
            expect(Game).to respond_to(:new).with(2).arguments
        end
    end

    describe '#attack' do
        it 'Game attacks players and changes players hp' do
            expect(player_double).to receive(:receive_damage)
            game.attack(player_double)
        end
    end
end    