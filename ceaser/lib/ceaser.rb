## `caesar_cipher`

# Write a function that takes a message and an increment amount and
# outputs the same letters shifted by that amount in the
# alphabet. Assume lowercase and no punctuation. Preserve spaces.

def caeser_cipher(message, inc)
  message.downcase!
  alphabet = ("a".."z").to_a
  message_array = message.split(//)
  puts(message_array)

  message_index_array = message_array.map do |e|
    alphabet.index(e)
  end

  puts(message_index_array)
  rotated = alphabet.rotate(inc)
  puts(rotated)

  crypted_array = message_index_array.map do |e|
    if e == nil
      " "
    else
      rotated[e]
    end   
  end

  crypted_array.join
  #it iterates through the message array, and finds the index of each character within the alphabet
  #the alphabet array shifts based on inc
  #each chacter in the message array is swapped out for it's indexed counterpart. 
end


