# describe "Folding Tests" do
#     it "Basic Tests" do
#       input = [ 1, 2, 3, 4, 5 ];
#       expected = [ 6, 6, 3 ];
#       Test.assert_equals(fold_array(input, 1), expected)
      
#       expected = [ 9, 6 ];
#       Test.assert_equals(fold_array(input, 2), expected)
      
#       expected = [ 15 ];
#       Test.assert_equals(fold_array(input, 3), expected)
  
#       input = [ -9, 9, -8, 8, 66, 23 ];
#       expected = [ 14, 75, 0 ];
#       Test.assert_equals(fold_array(input, 1), expected);
#     end
#   end



  include RSpec
  require_relative 'fold_array'
  
  describe "basic test #1" do
    it "moves the largest integer to the end of the array" do
      expect( fold_array([ 1, 2, 3, 4, 5 ], 1) ).to eq [ 6, 6, 3 ]
    end
  
    it "basic test #2" do
      expect( fold_array([ 1, 2, 3, 4, 5 ], 2) ).to eq [ 9, 6 ]
    end
  
    it "basic test #3" do
      expect( fold_array([ 1, 2, 3, 4, 5 ], 3) ).to eq [ 15 ]
    end
  
    it "basic test #4" do
      expect( fold_array([ -9, 9, -8, 8, 66, 23 ], 1) ).to eq [ 14, 75, 0 ]
    end
  
  end 
  