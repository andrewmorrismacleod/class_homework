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

end
