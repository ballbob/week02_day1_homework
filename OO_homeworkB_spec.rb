require('minitest/autorun')
require_relative('./OO_homeworkB')

class TestHomework < MiniTest::Test

  def test_get_teamname
    wick_academy = Team.new("Wick Academy",["Jeordy","Chordy","Lord Thurso"],"Chiel")
    assert_equal(wick_academy.teamname, "Wick Academy")
  end

  def test_get_players
    wick_academy = Team.new("Wick Academy",["Jeordy","Chordy","Lord Thurso"],"Chiel")
    assert_equal(wick_academy.players, ["Jeordy","Chordy","Lord Thurso"])
  end

  def test_get_coach
    wick_academy = Team.new("Wick Academy",["Jeordy","Chordy","Lord Thurso"],"Chiel")
    assert_equal("Chiel",wick_academy.coach)
  end

  def test_set_coach
    wick_academy = Team.new("Wick Academy",["Jeordy","Chordy","Lord Thurso"],"Chiel")
    wick_academy.coach = "Sandy"
    assert_equal(wick_academy.coach,"Sandy")
  end

end