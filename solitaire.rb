class SolitaireEncryptor
  def encrypt(text)
    prepared_text = prepare(text)
    keystream = step2(prepared_text)
    array_1 = text_to_number(prepared_text)
    array_2 =text_to_number(keystream)
    #combine(array_1, array_2)
  end
  def prepare(text)
    text.each_index do |i|
      #Getting the length of the word.
      word_length = text[i].length
      #Checking if the word has more than 5 characters.
      if word_length < 5
        #Getting the character to complete until 5 characters
        length_to_get = 5 - word_length
        #Getting the next word.
        next_word = text[i + 1]
        #Getting the characters which we have to add to the word.
        character_added = next_word.to_s[0,length_to_get]
        #Removing characters of the next word.
        text[i + 1] = (text[i + 1]).sub(character_added, "") unless (text[i + 1]).nil?
        #Adding characters in the word.
        text[i] = text[i] + character_added
      end
    end
    #Join the array in a string.
    text = text.join(" ")
    #Pass to upper all string.
    text = text.upcase
    text
    puts text
  end

  def step2(text)
    result = "hola"
    result
  end
  def text_to_number(text)
    puts 34343
    34343
  end
  #def combine(array_numbers_1, array_numbers2)
   # [combined_array]
    #[1 , 3, 5, 8]
  #end
end

solitaire_encryptor = SolitaireEncryptor.new
solitaire_encryptor.encrypt(ARGV)
