# include RSpec
# require 'pry'

def merge_sort(array)
    if array.length <= 1 # Check the input array length. If it is 0 or 1, return the array (already sorted!)
      array
    else
      mid = (array.length / 2).floor # If array length is greater than 1, then we want to define a mid-point, picked by choosing array.length / 2 and call a floor method so the number always rounds down.
      left = merge_sort(array[0..mid-1]) # Use the midpoint to divide the array into halves, a left and right. I set my left array to start with first element and end at element mid — 1. My right array starts at mid and ends at the last element. (Note: Ruby ranges .. are inclusive of the last element, whereas ... are exclusive of last element).
      right = merge_sort(array[mid..array.length]) 
      merge(left, right) # Note that not only do I set left and right subarrays equal to the lengths above, but they’re set to the merge_sort version of those subarrays. That means that merge_sort will be called upon these subarrays, which means picking a new midpoint, dividing the subarray into halves, and set left and right subarrays that will call merge_sort again.
    end
  end
  
  def merge(left, right) # Once the subarrays are broken down into the smallest pieces possible, now it’s time to sort and merge them together.
    if left.empty? # If one of the two subarrays are empty, by default only information in the non-empty subarray is returned.
      right
    elsif right.empty?
      left
    elsif left[0] < right[0] # If the arrays are not empty, then we compare the value of each element in the first index position. If the first element of left array is smaller than the first element of right array, then we build the sorted subarray beginning with the first element of left array + the value of a recursive merge function call which takes left[1..left.length],right as the input parameters. It starts with the second element at index 1 since the first element has already been “sorted”.
      [left[0]] + merge(left[1..left.length], right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
  end