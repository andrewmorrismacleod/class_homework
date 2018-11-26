class Team

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(player)
    @players.push(player)
  end

  def is_player?(player)
    return @players.include?(player)
  end

end
