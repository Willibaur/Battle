class Game

  attr_reader :player1, :player2, :player_one_turn

  def initialize(player_klass_1 = Player.new, player_klass_2 = Player.new)
    @player1 = player_klass_1
    @player2 = player_klass_2
    @player_one_turn = true
  end

  def attack(player)
    player.hp_deductor(10)
    @player_one_turn = !@player_one_turn
  end

  def turn?
    player_one_turn
  end
end
