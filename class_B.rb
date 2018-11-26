class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def is_player?(player)
    return @players.include?(player)
  end

  def outcome(result)
    return if result == "loss"
    if result == "win"
      @points += 3
    end
  end


end
