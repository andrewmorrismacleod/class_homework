require('minitest/autorun')
require('minitest/rg')
require_relative('../class_B')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Cruden Bay JFC", ["Me", "Blacko", "Player_3"], "Kevin")
    assert_equal("Cruden Bay JFC", team.name)
  end

end
