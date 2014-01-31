# Write a method that takes a string as input. It should return true if
# the input is a valid IPv4 address (ie. anything between `0.0.0.0` and
# `255.255.255.255` is valid).

def valid_ip(string)
  array = string.split(".")
  puts "array #{array}"

  boolean_array = array.map do |x|

    if x.to_i <= 255 && x.to_i >= 0
      true
    else
      false
    end
  end

  if boolean_array.include?(false) 
    return false
  else
    return true
  end
end