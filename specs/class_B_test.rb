require('minitest/autorun')
require('minitest/rg')
require_relative('../class_B')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal("Cruden Bay JFC", team.name)
  end

  def test_team_players
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal(["Me", "Blacko", "Player_3"], team.players)
  end

  def test_team_coach
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal("Kevin", team.coach)
  end

  def test_team_set_coach
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    team.coach=("Steve")
    assert_equal("Steve", team.coach)
  end

  def test_team_add_player
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    team.add_player("Fred")
    assert_equal(["Me", "Blacko", "Player_3", "Fred"], team.players)
  end

  def test_team_is_player__true
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal(true, team.is_player?("Me"))
  end

  def test_team_is_player__false
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal(false, team.is_player?("John"))
  end

  def test_team_points
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal(0, team.points)
  end

  def test_team_points__win
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    team.outcome("win")
    assert_equal(3, team.points)
  end

  def test_team_points__loss
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    team.outcome("loss")
    assert_equal(0, team.points)
  end

end
