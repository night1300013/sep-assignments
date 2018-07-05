class GreedyAlgorithm
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node
  end

  def nearest_neighbor
    while @source_node.visited == false
      adjacent_edges = @source_node.adjacent_edges
      next_edge = adjacent_edges[0]

      for current_edge in adjacent_edges
        if current_edge.weight < next_edge.weight && !current_edge.to.visited || next_edge.to.visited
          next_edge = current_edge
        end
      end
      @source_node.visited = true
      print "#{@source_node} -> "
      @source_node = next_edge.to
    end
  end
end
