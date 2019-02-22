  def fold_array(array, runs)
    newArray = array[0..array.length] # sorting the array
    runs.times do
      (0...newArray.length/2).each do |i| 
        newArray[i] += newArray.pop # adding the first with the last item and then popping the last item 
      end
    end
    newArray # returning the folded array
  end