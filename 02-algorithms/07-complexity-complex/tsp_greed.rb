# DEF nearest possible neighbor(graph_of_cities, current_city)
#   WHILE current_city.visited IS FALSE
#     SET neighbor_cities TO current_city.neighbors
#     SET next_city = neighbor_cities[0]
#
#     FOR current_neighbor IN neighbor_cities
#       IF current_neighbor.distance < next_city.distance
#         ASSIGN current_neighbor TO next_city
#       END IF
#     END FOR
#     SET current_city.visited to TRUE
#     ASSIGN next_city TO current_city
#   END WHILE
# END DEF


class GreedyAlgorithm
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node

  end

  def nearest_neighbor
    while @source_node.visited == false
      neighbor_edges = @source_node.adjacent_edges
      #puts neighbor_edges
      next_edge = neighbor_edges[0]

      for current_edge in neighbor_edges do
        if current_edge.weight < next_edge.weight && !current_edge.to.visited || next_edge.to.visited
          next_edge = current_edge
        end
      end

      @source_node.visited = true
      print "#{@source_node.name} -> "
      @source_node = next_edge.to
    end
  end
end
