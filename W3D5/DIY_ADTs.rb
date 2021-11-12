class Stack
    
    def initialize
        @stack = []
    end 

    def push(el)
        @stack << el
    end 

    def pop
        @stack.pop
    end 

    def peek
        @stack[0]
    end 

end 

class Queue
    def initialize
        @queue = []
    end 

    def enqueue(el)
        @queue.push(el)
       
    end 

    def dequeue
        @queue.shift
        
    end 

    def peek
        @queue[0]
    end 
end

class Map
    def initialize
        @map = []

        
    end

    def set(k,v)
        pairs = [k, v] 
        if !@map.flatten.include?(k)
            @map << pairs
        else
            @map.each_with_index do |sub, i|
                if sub[0] == k
                    @map[i][1] = v
                end 
            end 
        end 
    
    end 

    def get(key)
        
        @map.each_with_index do |sub, i|
                if sub[0] == key
                    return @map[i][1] 
                end 
            end 
    end 

    def delete(key)
        value = get(key)
        @map.reject! { |pair| pair[0] == key }
    value
    end 
    def show
        @map.flatten
    end 

end