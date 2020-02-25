require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test
  def setup
    @bear1 = Bear.new("Baloo", "Grizzly")
    @fish1 = Fish.new("Dory")
    @river1 = River.new("Thames", [@fish1])
  end

  def test_get_name
    assert_equal("Baloo", @bear1.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_stomach_empty
    assert_equal(0, @bear1.stomach.length)
  end

  def test_eat_fish
    @bear1.eat_fish(@river1)
    assert_equal(1, @bear1.stomach.length)
    assert_equal(0, @river1.fishes.length)
  end

  def test_roar
    @bear1.get_roar()
    assert_equal("Hear me roarrr", @bear1.get_roar())
  end

  def food_count
    @bear1.eat_fish(@river1)
    assert_equal(1, @bear1.stomach.length)
  end

end
