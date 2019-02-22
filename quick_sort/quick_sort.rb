# include RSpec
# require 'pry'


# def quick_sort(array, low, high)
# end

# def partition(array, low, high)
# end

def quick_sort(array)
    return array if array.length <= 1
    pivot = array.delete_at(rand(array.length)) 
    # Pick a pivot at random. Ruby’s delete_at method will delete the item at 
    # the specified index, which in this case would be a rand index in the range of array.length. 
    # We’re saving the value of that item to pivot.
  
    left = Array.new # Create a new left and right subarray.
    right = Array.new
  
    array.each do |x| 
      # Loop through every element in the array and compare it to the pivot. If the value is less than pivot, 
      # add element to the left subarray. If value is greater than pivot, add element to the right subarray.
      if x <= pivot
        left << x
      else
        right << x
      end
    end
  
    return *quick_sort(left), pivot ,*quick_sort(right) 
    # After the first pass when every value less than the pivot is on 
    # the left hand side and every value greater than the pivot is on the right hand side, we break into two subarrays 
    # and apply quick sort to each half (pick a new pivot, compare elements, break into two subarrays).
  
  end