require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')

class TestRiver < MiniTest::Test
  def setup
    @river1 = River.new("Amazon", [@fish1])
  end

  def test_get_name
    assert_equal("Amazon", @river1.name)
  end

  def test_river_count
    assert_equal(1, @river1.fishes.length)
  end

  def test_get_fish
    @river1.get_fish
    assert_equal(0, @river1.fishes.length)
  end


end
