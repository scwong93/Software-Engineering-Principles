def binary_search_iterative(collection, value)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2
    if collection[mid] > value
      high = mid - 1
    elsif collection[mid] < value
      low = mid + 1
    else
      return "#{value} is located on index #{mid} in the collection."
    end
  end
  puts "#{value} does not exist in this collection."
end
