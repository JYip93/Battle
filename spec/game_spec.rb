require 'game'
require 'player'


describe Game do
    let(:player_double) {double('player double', :hp => 50)}

    describe '#attack' do
        it 'Game attacks players and changes players hp' do
            allow(player_double).to receive(:hp)
            allow(player_double).to receive(:receive_damage) {40}
            expect {subject.attack(player_double)}.to change {player_double.hp}.by(-Player::DEFAULT_DAMAGE)
        end
    end
end    