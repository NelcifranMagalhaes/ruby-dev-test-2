require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = Album.new(name: "Test Album")
  end

  test "should be valid" do
    assert @album.valid?
  end

  test "name should be present" do
    @album.name = "   "
    assert_not @album.valid?
  end
end
