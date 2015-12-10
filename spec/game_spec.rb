require 'game'

describe Game do
  subject(:game) {described_class.new(dummy1, dummy2)}
  let(:dummy1) {double :Player}
  let(:dummy2) {double :Player}

  it 'attacks a player' do
    expect(game).to respond_to(:attack)
  end

  it 'switches players' do
    allow(dummy1).to receive(:hp_deductor)
    game.attack(dummy1)
    expect(game.turn?).to be false
  end
end
