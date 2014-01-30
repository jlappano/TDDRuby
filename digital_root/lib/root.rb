require 'pry'

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

digital_root(59)