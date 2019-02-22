include RSpec
require_relative 'fraction_converter'

describe "#fraction_converter" do
    it "Test 1" do
      expect( mixed_fraction('42/9') ).to eq '4 2/3'
    end
  
    it "Test 2" do
      expect( mixed_fraction('6/3') ).to eq '2'
    end
  
    it "Test 3" do
      expect( mixed_fraction('4/6') ).to eq '2/3'
    end
  
    it "Test 4" do
      expect( mixed_fraction('4/-6') ).to eq '-2/3'
    end

    it "Test 5" do
      expect( mixed_fraction('0/18891') ).to eq '0'
    end
  
    it "Test 6" do
      expect( mixed_fraction('-10/7') ).to eq '-1 3/7'
    end
  
    it "Test 7" do
      expect( mixed_fraction('10/-7') ).to eq '-1 3/7'
    end
  
    it "Test 8" do
      expect( mixed_fraction('-22/-7') ).to eq '3 1/7'
    end

    it "Test 9" do
      expect { mixed_fraction("0/0") }.to raise_error(ZeroDivisionError)
    end
  
    it "Test 10" do
      expect { mixed_fraction("3/0") }.to raise_error(ZeroDivisionError)
    end
  end
  