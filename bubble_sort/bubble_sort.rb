def bubble_sort(unsorted_array)
  size = unsorted_array.length
  for i in 0..size do
    for j in 0..((size - 1) - i) do
      break if size - 1 == j
      if (unsorted_array[j] > unsorted_array[j + 1])
        unsorted_array[j], unsorted_array[j + 1] = unsorted_array[j + 1], unsorted_array[j]
      end
    end
  end
  unsorted_array
end

puts bubble_sort([4,3,78,2,0,2]).inspect
