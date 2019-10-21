require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TeamTest < MiniTest::Test

  def setup()
    @team = Team.new("Mapa", ["Marta", "Paolo"], "Lion")
  end

  def test_team_name()
    assert_equal("Mapa", @team.team_name)
  end

  def test_set_coach_name()
    @team.coach_name = "Panda"
    assert_equal("Panda", @team.coach_name)
  end

  def test_add_player()
    @team.add_player("Dog")
    assert_equal(3, @team.players.size())
  end

  def test_is_player_present_found()
    assert(@team.is_player_present("Paolo"))
  end

  def test_is_player_present_missing()
    refute(@team.is_player_present("Dog"))
  end

  def test_add_win()
    @team.add_win("win")
    assert_equal(1, @team.points)
  end
end
