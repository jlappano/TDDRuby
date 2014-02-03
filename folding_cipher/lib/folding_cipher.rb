# Implement the Folding Cipher. It folds the alphabet in half and uses
# the adjacent letter. Ie. a <=> z, b <=> y, c <=> x, m <=> n.


def folding_cipher(string)
  a = ("a".."z").to_a
  b = ("a".."z").to_a.reverse
  stone = Hash[a.zip(b)]

  string.each_char {|char| string[char] = stone[char]}

end