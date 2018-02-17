@low = 0
@high = collection.length - 1
@mid = (@high + @low) / 2

def binary_search_recursive(collection, value)
  if collection[@mid] == value
    puts "#{@mid} is located on index #{value} in the collection."
  elsif collection[@mid] > value
    @high = @mid - 1
    @mid = (@high + @low) / 2
    binary_search_recursive(collection, value)
  elsif collection[@mid] < value
    @low = @mid + 1
    @mid = (@high + @low) / 2
    binary_search_recursive(collection, value)
  else
    puts "#{value} does not exist in this collection."
  end
end
