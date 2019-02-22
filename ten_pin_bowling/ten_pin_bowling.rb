def bowling_score frames
    frames.scan(/(?=( [^ ]+$|X . ?.|\/ .|\d\d ))/).flatten.reduce(0){|y,s| y + 10*s.count('X/') + 
    s.scan(/\d(?!\/)/).map(&:to_i).reduce(0,:+) }
end

#The first .scan gets each frame and then the .reduce calculates each frame and adds it to the score, represented by y.
#For example, scanning the string "X X 9/ 80 X X 90 8/ 7/ 44" with the regex /(?=( [^ ]+$|X . ?.|\/ .|\d\d ))/ returns the following array:
#[["X X 9"], ["X 9/"], ["/ 8"], ["80 "], ["X X 9"], ["X 90"], ["90 "], ["/ 7"], ["/ 4"], [" 44"]] or flattened
#["X X 9", "X 9/", "/ 8", "80 ", "X X 9", "X 90", "90 ", "/ 7", "/ 4", " 44"]
#There are 10 strings in this array representing the scoring for each frame. The first frame is “X X 9”, and 
# since each “X” is 10, this frame is worth 10 + 10 + 9 = 29. The second frame has a spare so the number before 
# it is ignored and so that frame is worth 10 + 10 = 20. And so the first 2 frames is 29 + 20 = 49.
#So in the .reduce, 10*s.count(‘X/‘) is what converts our strikes and spares into 10. As for the numbers, s.scan(/\d(?!\/)/) 
#fetches each number while ignoring numbers in spares. .map(&:to_i).reduce(0,:+) simply converts and adds the numbers.

#First Regex: (?=(...)) -> positive look ahead. It's function is usually to check that whatever precedes 
# it is followed by the the expression after it. Spaces are how we know whether we’re on the last frame.
#For example: "X X 9/ 80 X X 90 8/ 7/ 44".scan(/\d+(?= )/) #=> 80, 90
#Now, if you do not have any expressions preceding the look ahead, it will return any matches of the 
# expressions that follow it. as long as they are in a capturing group (capturing group = () ) .
#For example "X X 9/ 80 X X 90 8/ 7/ 44".scan(/(?=( ))/) #=> [" ", " ", " "...]
#If you run that code you will see that taking away the preceeding expression and putting the whitespace \
# in a captuing group causes the look ahead to do the opposite of what it did the first time around.
#Long story short, using a lookaround in this fashion allows you to get substrings that match the expressions 
# sfollowing the look around, as long as they are within a capturing group.