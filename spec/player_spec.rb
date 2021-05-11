require 'player'

describe Player do
  it 'it has a name' do
    player = Player.new("Rob")
    expect(player.name).to eq 'Rob'
  end

  it 'has hit points' do
    player = Player.new("Rob")
    expect(player.hp).to eq 100
  end
end
