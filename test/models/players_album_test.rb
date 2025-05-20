require "test_helper"

class PlayersAlbumTest < ActiveSupport::TestCase
  def setup
    @player = Player.create(name: "Test Player")
    @album = Album.create(name: "Test Album")
    @players_album = PlayersAlbum.new(player_id: @player.id, album_id: @album.id)
  end

  test "should be valid" do
    assert @players_album.valid?
  end

  test "player_id should be present" do
    @players_album.player_id = nil
    assert_not @players_album.valid?
  end

  test "album_id should be present" do
    @players_album.album_id = nil
    assert_not @players_album.valid?
  end

  test "should belong to player" do
    assert_respond_to @players_album, :player
  end

  test "should belong to album" do
    assert_respond_to @players_album, :album
  end
end
