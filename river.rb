class River

  attr_reader :river_name, :fish
  attr_writer :fish_in_river

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []
  end

  def get_name
    return @river_name
  end

  def fish_count
    @fish_in_river.count
  end

  def add_fish_to_river(fish_name)
    @fish_in_river.push(fish_name)
  end

  def remove_fish_by_name(fish_name)
    for fsh in @fish_in_river
      if fsh == fish_name
        @dead_fish = @fish_in_river.delete(fish_name)

      end
    end
  end



end
