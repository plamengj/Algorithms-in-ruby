# include RSpec
# require 'pry'

def selection_sort(array)
    n = array.length - 1 # Set n equal to array.length — 1: this represents how many times we need to do the comparisons.
    n.times do |i|
      min_index = i # Set a min_index value equal to our initial i index (should be the first element in array).
      for j in (i + 1)..n # Create a second (nested) loop starting at the second element until n using variable j.
        min_index = j if array[j] < array[min_index] # Compare the value of element at index j with value of element of min_index. 
        # If value of element at index j is less than value of element of min_index, index j becomes the new min_index. 
        # Set min_index = j if this is the case. Exit the inner loop.
      end
      array[i], array[min_index] = array[min_index], array[i] if min_index != i 
      # If value of new min_index is not equal to value of element at i 
      # then swap value of element at i index with value of element at min_index.
    end
    array # Lastly, return the manipulated array.
  end