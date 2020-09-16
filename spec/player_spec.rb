require 'player'

describe Player do
  johnny = Player.new('johnny')
  louis = Player.new('louis')

  it 'returns the name' do
    expect(johnny.name).to eq('johnny')
  end

  # describe '#attack' do
  #   it 'reduces HP by 10' do
  #     expect { johnny.attack(louis) }.to change { louis.hp }.by(-Player::DEFAULT_DAMAGE)
  #   end
  # end

  describe '#receive_damage' do
    it 'expects HP to change' do
      expect(johnny.receive_damage).to eq 40
    end
  end
end