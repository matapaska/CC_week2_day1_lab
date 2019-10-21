class Team

  attr_reader :team_name, :players, :coach_name, :points
  attr_writer :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def is_player_present(player_name)
    for player in @players
      if(player == player_name)
        return true
      end
    end
    return false
  end

  def add_win(result)
    if (result == "win")
      @points += 1
    end
  end 
end
