require 'player'

describe Player do
  subject(:david) {Player.new('David')}

  describe '#name' do
    it 'retunrs name' do
      expect(david.name).to eq 'David'
    end
  end
end
