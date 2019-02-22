def snail_sort(array)
    array.empty? ? [] : array.shift + snail_sort(array.transpose.reverse)
end