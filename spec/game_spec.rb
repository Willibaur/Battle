require 'game'

describe Game do
  subject(:game) {described_class.new(dummy1, dummy2)}
  let(:dummy1) {double :Player}
  let(:dummy2) {double :Player}

  it 'attacks a player' do
    game.attack(dummy2)
    expect(game.player2.hit_points).to eq 50
  end
end
