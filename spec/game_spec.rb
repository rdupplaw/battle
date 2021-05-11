require 'game'

describe Game do
  let(:player2) { double :player2 }
  describe '#attack'
  it 'decreases player2 hit points' do
    game = Game.new
    expect(player2).to receive(:attack)
    game.attack(player2)
  end
end