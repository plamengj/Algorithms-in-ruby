# include RSpec
# require 'pry'

def pancake_sort(collection)
    n = collection.length # Let given array be arr[] and size of array be n.
    for i in n.downto(2)
        max_i = find_max(collection, i)
        unless max_i == i - 1
            flip(collection, max_i) # We one by one place maximum element at the end
            flip(collection, i - 1) # and reduce the size of current array by one
        end
    end
    return collection
end

def find_max(collection, len)
    max_i = 0
    i = 1
    while i < len
       max_i = i if collection[i] > collection[max_i]
       i += 1
    end
    return max_i
end

def flip(collection, len)
    start = 0
    while start < len
        collection[start], collection[len] = collection[len], collection[start]
        start += 1
        len -= 1
    end
end