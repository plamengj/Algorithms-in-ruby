# include RSpec
# require 'pry'

def bogo_sort(array)  
    array.shuffle!  until sorted?(array)  
    array  
end  

def sorted?(array)  
    array.each_cons(2).all?{ |a,b| a <= b }  
end 
