# include RSpec
# require 'pry'

def gnome_sort(array) 
  i = 1  # If you are at the start of the array then go to the right element (from arr[0] to arr[1]).
  while i < array.size # Repeat till ‘i’ reaches the end of the array
    # If the current array element is smaller than the previous array element then swap these two elements and go one step backwards
    if array[i-1] > array[i] 
      array[i-1], array[i] = array[i], array[i-1] 
      i -= 1 if i > 1 
    else # If the current array element is larger or equal to the previous array element then go one step right
      i += 1 
    end 
  end # If the end of the array is reached then stop and the array is sorted.
  return array 
end 