def brain_luck(code, input) # the program code, a string with the sequence of machine instructions, and the program input, a string, eventually empty, that will be interpreted as an array of bytes using each character's ASCII code and will be consumed by the , instruction
    cache, memory = [], []
    code.chars.each_with_index do |c, i|
      case c
      when '[' then memory.push(i)
      when ']' then j = memory.pop; cache[i], cache[j] = j, i
      end
    end
    input = input.chars.to_a
    output = ''
    m = Hash.new(0) # (the machine memory or 'data' should behave like a potentially infinite array of bytes, initialized to 0)
    p, i = 0, 0
    loop do
      break if i >= code.size
      case code[i]
      when '>' then p += 1 # increment the data pointer (to point to the next cell to the right).
      when '<' then p -= 1 # decrement the data pointer (to point to the next cell to the left).
      when '+' then m[p] = (m[p] + 1) % 256 # increment (increase by one, truncate overflow: 255 + 1 = 0) the byte at the data pointer.
      when '-' then m[p] = (m[p] - 1) % 256 # decrement (decrease by one, treat as unsigned byte: 0 - 1 = 255 ) the byte at the data pointer.
      when '.' then output << m[p].chr # output the byte at the data pointer.
      when ',' then m[p] = (input.shift || 0).ord # accept one byte of input, storing its value in the byte at the data pointer.
      when '[' then i = cache[i] if m[p].zero? # if the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching ] command.
      when ']' then i = cache[i] unless m[p].zero? # if the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching [ command.
      end
      i += 1
    end
    output # the output of the interpreted code (always as a string), produced by the . instruction.
  end
  
  require_relative 'test'
  
    # Echo until byte(255) encountered
    Test.assert_equals(
      brain_luck(',+[-.,+]', 'Codewars' + 255.chr), 
      'Codewars'
    )
  
    # Echo until byte(0) encountered
    Test.assert_equals(
      brain_luck(',[.[-],]', 'Codewars' + 0.chr), 
      'Codewars'
    );
  
    # Two numbers multiplier
    Test.assert_equals(
      brain_luck(',>,<[>[->+>+<<]>>[-<<+>>]<<<-]>>.', 8.chr + 9.chr), 
      72.chr
    )
  