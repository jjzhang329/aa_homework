# # O(n^2)time
# def sluggish(arr)
#     longest = ""
#     arr.each_with_index do |fish, i|
#         current = ""
#         arr.each_with_index do |fish1, i2|
#             if i2 != i && (fish.length > fish1.length)
#                 current = fish 
#             end 
#             longest = current if current.length > longest.length 
#         end 
#     end

#      return longest

# end 

# O(nlogn)time
def dominant_fish(arr)
    return arr if arr.length == 1
    mid = arr.length / 2
   
    left = arr[0...mid]
    right = arr[mid..-1]
    l = dominant_fish(left)
    r = dominant_fish(right)
   
     merge(l, r).last

end 

def merge(left, right)
    sorted = []
    left = [left] if left.is_a?(String)
    right = [right] if right.is_a?(String)
    until left.empty? || right.empty?

        if left[0].length < right[0].length
          
            sorted << left.shift
        else
            sorted << right.shift 
            
        end 
    end 
    sorted + left + right 
end 


def celver(arr)
    octopus = arr[0]
  arr.each {|fish| octopus = fish if fish.length > octopus.length} 
  return octopus

end 
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
# p celver(arr)


def slow_dance(dir, tiles_array)
    tiles_array.each_with_index do |ele, i|
        if dir == ele 
            return i
        end 
    end 

end
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
#                "left",  "left-up" ]
# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

tiles_hash = {"up"=>0, "right-up"=> 1, "right"=> 2, "right-down"=> 3, "down"=> 4, "left-down"=> 5, 
               "left"=> 6,  "left-up"=> 7}
def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
end 
p fast_dance("up", tiles_hash)