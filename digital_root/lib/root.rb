require 'pry'

## `digital_root`

# Write a method, `digital_root(num)`. It should sum the digits of a
# positive integer. If it is greater than 10, sum the digits of the
# resulting number. Keep repeating until there is only one digit in the
# result, called the "digital root". Do not use string conversion within
# your method.

def digital_root(num)
  reductions = []

  if num < 10
    return num
  elsif num < 19
    until num < 10 
      reductions << (num / 10)
      num -= 1
    end
  reduced = reductions.reduce(:+)
  else
    num = num / 10
    reductions = []
    digital_root(num)
  end

end
