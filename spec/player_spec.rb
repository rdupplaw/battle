require 'player'

describe Player do
  let(:player) { Player.new('Rob') }
  it 'it has a name' do
    expect(player.name).to eq 'Rob'
  end

  it 'has hit points' do
    expect(player.hp).to eq 100
  end

  describe '#attack' do
    it 'reduces hp by 10' do
      player.attack
      expect(player.hp).to eq 90
    end
  end
end
