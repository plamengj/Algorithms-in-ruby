def binary_insertion_sort(a)
  for j in 1.upto(a.size-1)
    x = a[j]
    start = i = 0
    finish = j
    # we need to distinugish whether we should insert 
    # before or after the left boundary. 
    while start < finish
      m = ((start + finish) / 2.to_f).floor # get the middle of the array
      if x > a[m] # see if the x is greater or less than the middle
        start = m + 1
      else
        finish = m
      end
    end
    # this occurs if we are moving beyond left's boundary 
    # meaning the left boundary is the least position to 
    # find a number greater than x
    i = start

    for k in (j - i).times
      a[j - k] = a[(j - k) - 1]
    end
      a[i] = x
  end
  return a
end