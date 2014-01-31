## `common_substrings`

# Write a function, `common_substrings(str1, str2)` that takes two
# strings and returns the longest common substring.

def common_substrings(str1, str2)
  a_one = str1.split(//)
  a_two = str2.split(//)

  a_common = []
  indexed = 0

  a_two.each do |i|
    if i == a_one[indexed]
      a_common << i
    else
      a_common << " "
    end
    indexed+= 1
  end

  stripped = a_common.join.strip
  substrings = stripped.split(/ /)
  longest_substring = ""

  substrings.each do |i|
    if i.length > longest_substring.length
      longest_substring = i
    else 
      nil
    end

  end
  longest_substring
end
