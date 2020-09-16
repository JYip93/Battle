require 'player'

describe Player do

  it 'returns the name' do
    subject = Player.new('Louis')
    expect(subject.name()).to eq('Louis')
  end
end