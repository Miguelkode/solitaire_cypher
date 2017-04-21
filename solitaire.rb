#Taking the argument.
input_array = ARGV
input_array.each_index do |i|
  #Getting the length of the word.
  word_length = input_array[i].length
  #Checking if the word has more than 5 characters.
  if word_length < 5
    #Getting the character to complete until 5 characters.
    length_to_get = 5 - word_length
    #Getting the next word
    next_word = input_array[i + 1]
    #Getting the characters which we have to add to the word.
    character_added = next_word.to_s[0,length_to_get]
    #Removing characters of the next word.
    input_array[i + 1] = (input_array[i + 1]).sub(character_added, " ") unless (input_array[i + 1]).nil?
    #Adding characters in the word.
    input_array[i] = input_array[i] + character_added
  end
end
#Join the array in a string.
string_final = input_array.join(" ")
#Pass to upper all string.
string_final = string_final.upcase
puts string_final
