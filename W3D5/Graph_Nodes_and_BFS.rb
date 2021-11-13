class GraphNode
    def initialize(value)
        @value = value
        @neighbors = []
        
    end
    attr_reader :value, :neighbors

    def neighbors= (arr)
        @neighbors = arr
    end 

    def bfs(starting_node, target_value)
            visited = Set.new()
            queue = [starting_node]
            until queue.empty?
                checked = queue.shift
                if checked.value == target_value
                    return checked
                else
                    visited.add(checked)
                end 
                if !checked.neighbors.nil?
                    checked.neighbors.each do |node| 
                        queue.push(node) if !visited.include?(node)
                    end 
                end 
            end 
        return nil
    end 
        


end