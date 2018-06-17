class Node
  attr_accessor :name
  attr_accessor :film_actor_hash

  def initialize(name)
    @name = name
    @film_actor_hash = Hash.new
  end
end


ha = Node.new("hahahah")
ha.film_actor_hash = {'123' => ["Kevin Bacon",2,3,4,5], '456' => [1,2,3,4] }

kb = Node.new("Kevin Bacon")
kb.film_actor_hash = {'123' => ["Kevin Bacon",2,3,4,5], '456' => [1,2,3,4], "a" => 1, "b" => 5, "c" => 2, "d" => 6, "e" => 4, "f" => 7,
"g" => 9, "h" => 5, "i" => 1, "j" => 8, "k" => 9, "l" => 3, "m" => 7,
"n" => 10, "o" => 12}

def find_kevin_bacon(node)
  baconator = []
  if node.name == "Kevin Bacon"
    return node.film_actor_hash.keys[0..5]
  end
  node.film_actor_hash.each do |movie, actor|
    if actor.any? {|actor| actor == "Kevin Bacon"}
      if baconator.length < 6
        baconator << movie
      else
        return baconator
      end
    end
  end

  baconator
end

p find_kevin_bacon(kb)
p find_kevin_bacon(ha)
