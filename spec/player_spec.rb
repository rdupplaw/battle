require 'player'

describe Player do
  it 'it has a name' do
    player = Player.new("Rob")
    expect(player.name).to eq 'Rob'
  end
end