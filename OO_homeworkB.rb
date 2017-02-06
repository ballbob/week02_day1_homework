class Team
  attr_accessor :teamname, :players, :coach
  def initialize(teamname,players,coach)
    @teamname = teamname
    @players = players
    @coach = coach
  end

end