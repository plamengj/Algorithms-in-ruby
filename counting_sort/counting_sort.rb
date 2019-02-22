# include RSpec
# require 'pry'

def counting_sort(array, min = 0, max = 10)

  	n = max - min + 1
	count = Array.new(n, 0)
	output = Array.new(array.length)
    # 1. Take a count array to store the frequency of each value in given range
  	for i in 0...array.length
		count[array[i] - min] += 1
	end
	
	# 2. change count[i] to count[i] + count[i - 1], i.e each element now stores the prefix sum of counts.
  	for i in 1...n
		count[i] += count[i - 1]
	end
	
	# 3. take each value from the array and put it at the correct index in output array using count,
	# decrement value of count! (correct index of a[i] will be count[a[i] - 1])
	for i in 0...array.length
		output[count[array[i] - min] - 1] = array[i]
		count[array[i] - min] -= 1
	end
	
	# 4. Finally copy the values of output array to array.
	for i in 0...array.length
		array[i] = output[i]
	end
	
	return array

end