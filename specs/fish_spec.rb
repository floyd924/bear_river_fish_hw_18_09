require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
  end

  def test_get_name
    assert_equal("salmon", @fish1.get_name)
  end



end
