include RSpec
require_relative 'snail_sort'

describe "#snail_sort" do

    it "handles an empty array" do
      expect( snail_sort([[],[],[]]) ).to be_empty, "there are no digits in the input arrays"
    end
  
    it "handles an array of different inputs" do
      expect( snail_sort([[1,2,3], [5,6], [8]]) ).to be_empty, "there are no digits in the input arrays"
    end

    it "handles a regular 3 diminsion matrix" do
      expect( snail_sort([[1,2,3],[4,5,6],[7,8,9]]) ).to eq [1, 2, 3, 6, 9, 8, 7, 4, 5]
    end
    
    it "handles more than 3 dimensions" do
      expect( snail_sort([[1,2,3,1],[4,5,6,4],[7,8,9,7],[7,8,9,7]]) ).to eq [1,2,3,1,4,7,7,9,8,7,7,4,5,6,9,8]
    end
  
  end 