# include RSpec
# require 'pry'

def comb_sort(array)
    gap = array.size
    swapped = true
    until (gap == 1) && swapped == false
      gap = gap / 1.3 # The gap starts out as the length of the list array.size being sorted divided by the shrink factor (1.3)
      gap = 1 if gap < 1 # At this point, comb sort continues using a gap of 1 until the list is fully sorted.
      i = 0
      swapped = false
      until (i + gap) >= array.size
        if array[i] > array[i + gap]
          array[i], array[i + gap] = array[i + gap], array[i] # Swap
          swapped = true
        end
        i+=1
      end
    end
    array
  end

