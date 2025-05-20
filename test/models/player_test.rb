require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.new(name: "Test Player")
  end

  test "should be valid" do
    assert @player.valid?
  end

  test "name should be present" do
    @player.name = "   "
    assert_not @player.valid?
  end
end
