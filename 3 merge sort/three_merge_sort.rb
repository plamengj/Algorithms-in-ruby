include RSpec

def three_merge_sort(array)
  # Splits a list into three equal parts recursively until 
  # the sub-lists are smaller or equal to 3. Returns sorted list.
  
  if array.size >= 3
    start = 0
    finish = array.size / 3

    # creates three sub-lists storing the left, middle and right
    # part of the input list, recursively
    left = three_merge_sort(array[0...finish])
    middle = three_merge_sort(array[finish...finish * 2])
    right = three_merge_sort(array[finish * 2..-1])
    array = merge_arrays(left,middle)
    array = merge_arrays(array, right)
  else
    if array.size == 2
      if array[0] > array[1]
        # swap the two elements
        array[0], array[1] = [array[1], array[0]]
      end
    else
      return array
    end
  end
  return array
end

def merge_arrays(a, b)
  # build a holder array that is the size of both input arrays
  result = []

  # get lower head value
  if a[0] < b[0]
    result << a.shift
  else
    result << b.shift
  end

  # check to see if either array is empty
  if a.length == 0
    return result + b
  elsif b.length ==0
    return result + a
  else
    return result + merge_arrays(a, b)
  end
      
end