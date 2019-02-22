class Heapsort
  def initialize(array)
    @array = array.dup
    @heap_size = array.length
  end

  def heapsort
   build_max_heap
   @array.length.downto(2) {|i|
     swap(1, i) 
     @heap_size -= 1   
     max_heapify(1)
   }
   @array
  end 

  def build_max_heap
    parent(@heap_size).downto(1) {|i|
      max_heapify(i)
    }
  end

  def max_heapify(i)
    l = left(i)  
    r = right(i)
    largest = (l <= @heap_size and @array[l-1] > @array[i-1]) ? l : i
    largest = r if (r <= @heap_size and @array[r-1] > @array[largest-1])
    if largest != i
      swap(i, largest)
      max_heapify(largest)
    end
  end 

  def parent(i)
    (i / 2).floor
  end

  def left(i)
    2 * i
  end

  def right(i)
    (2 * i) + 1
  end 

  def swap(i, j)
    @array[i-1], @array[j-1] = @array[j-1], @array[i-1]
  end
end

def introloop(array, depth_limit)
  return array if array.size <= 1
  return Heapsort.new(array).heapsort() if depth_limit == 0 
  # When Introsort notices that its recursion depth exceeds
  # a specified height, it switches over to Heapsort to
  # process the partition it is currently working on.
  depth_limit -= 1
  pivot = array.pop
  left, right = array.partition { |e| e < pivot }
  introloop(left, depth_limit) + [pivot] + introloop(right, depth_limit)
end

def introspective_sort(array)
  return array if array.size <= 1
  introloop(array, 2 * (Math.log10(array.size) / Math.log10(2)).floor)
end 
# This version of Introsort switches to Heapsort when its 
# recursion depth reaches 2*(floor(log2(n))).