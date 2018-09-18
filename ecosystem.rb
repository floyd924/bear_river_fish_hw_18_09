#I'm getting into a habbit
#of writing a 'get name'
#method first thing to check
#it's all working. good idea??


require_relative("./fish.rb")
require_relative("./river.rb")
require_relative("./bear.rb")

amazon = River.new("Amazon")
bob = Fish.new("Bob")
steve = Bear.new("Steve", "brown")


p steve.get_name

p amazon.fish_count
amazon.add_fish_to_river("Robbie")
amazon.add_fish_to_river("Henry")
p amazon.fish_count

steve.eat_something("some leaves")
steve.eat_fish("Bob", amazon)

p steve.stomach

p amazon.fish_count
