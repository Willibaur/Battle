require 'player'

describe Player do
  subject(:david) {Player.new('David')}

  describe '#name'
  it 'Displays class name' do
    expect(player.name).to eq 'David'
  end
end
