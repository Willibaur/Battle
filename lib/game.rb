class Game

  attr_reader :player1, :player2

  def initialize(player_klass_1 = Player.new, player_klass_2 = Player.new)
    @player1 = player_klass_1
    @player2 = player_klass_2
  end

  def attack(player)
    receive_damage(player)
  end

private

  def receive_damage(player)
    player.hp_deductor(10)
  end
end
