# include RSpec
# require 'pry'

def insertion_sort(array)
    (array.length).times do |j| # First, we iterate through all elements of the array with "(array.length).times do". j represents the index of the item in the array.
        while j > 0 # Then we set the if/else checks to run only if j > 0 (element is not the first item, which has index 0).
          if array[j-1] > array[j]  #  The if/else checks compares the previous element with the current element; if previous element is larger than current element, swap previous with current.
            array[], array[j-1] = array[j-1], array[j] 
          else
            break  #If previous element is not larger than current element, the if/else terminates.
          end
          j-=1 #The j counter is decremented by 1.
        end
      end
    array
end