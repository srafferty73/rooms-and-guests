require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @song1 = Songs.new("Wind Beneath My Wings")
    @song2 = Songs.new("Love Me Do")
    @song3 = Songs.new("Wonderwall")
  end

  def test_song_name
    assert_equal("Wind Beneath My Wings", @song1.song_name)
  end

end
