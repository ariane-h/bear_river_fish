require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")

class TestFish < MiniTest::Test
  def setup
    @bear1 = Bear.new("Baloo")
  end

  def test_get_name
    assert_equal("Baloo", @bear1.name)
  end

  def test_stomach_empty
    assert_equal(0, @bear1.stomach.length)
  end

end
