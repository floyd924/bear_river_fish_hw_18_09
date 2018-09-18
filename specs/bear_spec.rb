require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Gavin", "teddy")
    @river2 = River.new("Clyde")
    @fish2 = Fish.new("cod")
  end

  def test_get_name
    assert_equal("Gavin", @bear1.get_name)
  end

  def test_get_type
    assert_equal("teddy", @bear1.get_type)
  end

  def test_how_full
    assert_equal(0, @bear1.how_full)
  end

  def test_eat_something
    @bear1.eat_something(@fish2)
    assert_equal(1, @bear1.how_full)
  end

  def test_eat_fish
    @river2.add_fish_to_river("Borris")
    @bear1.eat_fish("Borris", @river2)
    assert_equal(1, @bear1.how_full)
  end

  def test_roar
    result = @bear1.roar
    assert_equal("Rooooaaaarrrr!!", result)
  end





end
