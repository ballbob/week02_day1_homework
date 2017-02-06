class Team
  def initialize(teamname,players,coach)
    @teamname = teamname
    @players = players
    @coach = coach
  end

  def get_teamname
    return @teamname
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def set_coach(newcoach)
    @coach = newcoach
  end

end