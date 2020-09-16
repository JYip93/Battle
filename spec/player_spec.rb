require 'player'

describe Player do

  it 'returns the name' do
    expect(subject.name('Louis')).to eq('Louis')
  end
end