class Team
  attr_accessor :teamname, :players, :coach
  def initialize(teamname,players,coach)
    @teamname = teamname
    @players = players
    @coach = coach
  end

  def add_player(newplayer)
    @players.push(newplayer)
  end

  def check_for_player(name)
    for player in @players
      return "yes" if player == name
    end
    return "no"
  end


end