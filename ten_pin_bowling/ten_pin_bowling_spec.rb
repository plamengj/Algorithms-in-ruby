include RSpec
require_relative 'ten_pin_bowling'

describe "#ten_pin_bowlingb" do
  it "maybe this bowler should put bumpers on" do
    expect( bowling_score('11 11 11 11 11 11 11 11 11 11') ).to eq 20
  end

  it "woah! Perfect game!" do
    expect( bowling_score('X X X X X X X X X XXX') ).to eq 300
  end

  it "test during the middle of a game" do
    expect( bowling_score('12 4/ 81 X 53') ).to eq 56
  end

  it "test with zeros" do
    expect( bowling_score('00 45 09 X 23 62 7/ 34 34 0/9') ).to eq 92
  end

end 
