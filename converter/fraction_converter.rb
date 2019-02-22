def mixed_fraction(string)
    improper = Rational(*(string.split('/').map(&:to_i))) #splits by / and maps the values the integers
    integer  = improper.to_i #converts improper to an integer
    fraction = improper - integer #only the fraction
    
    return "#{integer}"  if (fraction).numerator == 0 #If the x/y equals the integer part, return integer part only. 
    return "#{fraction}" if integer == 0 # If integer part is zero, return the irreducible proper fraction only.
    "#{integer} #{fraction.abs}" # Provide [sign] only if negative (and non zero) and only at the beginning of the number (both integer part and fractional part must be provided absolute).
  end
