class Team
  attr_accessor :teamname, :players, :coach, :points
  def initialize(teamname,players,coach,points)
    @teamname = teamname
    @players = players
    @coach = coach
    @points = points
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

  def did_team_win_match(answer)
  if answer == "no" then return "no" end
  if answer == "yes" then (@points += 1) end
  end

end