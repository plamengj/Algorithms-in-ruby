# include RSpec
# require 'pry'

def cocktail_sort(arr)
    (arr.length / 2).times do |i|
      # For every pass, elements are first sorted increasingly
      # The first stage loops through the array from left to right
      # During the loop, adjacent items are compared and if value on the left is greater than the value on the right, 
      # then values are swapped. At the end of first iteration, largest number will reside at the end of the array.
      (i..(arr.length - 2 - i)).each do |j|
        arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      end
      # The second stage loops through the array in opposite direction- starting from the item just 
      # before the most recently sorted item, and moving back to the start of the array. 
      # Here also, adjacent items are compared and are swapped if required.
      (arr.length - 2 - i).downto(i + 1) do |k|
        arr[k], arr[k - 1] = arr[k - 1], arr[k] if arr[k] < arr[k - 1]
      end
    end
    arr
end