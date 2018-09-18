# require_relative("./fish.rb")
# require_relative("./river.rb")


#turns out i didn't need that for the tests,
# but will i need it in the future?

class Bear

  attr_accessor :bear_name, :type, :stomach

  def initialize(bear_name, type)
    @bear_name = bear_name
    @type = type
    @stomach = []
  end

  def get_name
    return @bear_name
  end

  def get_type
    return @type
  end

  def how_full
    return @stomach.count
  end

  def eat_something(fish_name)
    @stomach.push(fish_name)
  end

  def eat_fish(fish_name, river_ID)
    river_ID.remove_fish_by_name(fish_name)
    @stomach.push(fish_name)
  end

  def roar
    return "Rooooaaaarrrr!!"
  end




end
