require 'player'

describe Player do
  subject(:david) {Player.new('David')}
  subject(:goliath) {Player.new('Goliath')}

  describe '#name' do
    it 'retunrs name' do
      expect(david.name).to eq 'David'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(david.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(goliath).to receive(:receive_damage)
      david.attack(goliath)
    end
  end

  describe '#receive_damage' do
    it 'reduces player hit points' do
      expect {david.receive_damage}.to change {david.hit_points}.by(-10)
    end
  end
end
