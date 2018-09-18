require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new("Amazon")
  end

  def test_get_name
    assert_equal("Amazon", @river1.get_name)
  end

  def test_fish_count
    assert_equal(0, @river1.fish_count)
  end

  def test_add_fish_to_river
    @river1.add_fish_to_river("Gary")
    assert_equal(1, @river1.fish_count)
  end

  def test_remove_fish_by_name
    @river1.add_fish_to_river("Gary")
    @river1.remove_fish_by_name("Gary")
    assert_equal(0, @river1.fish_count)
  end






end
