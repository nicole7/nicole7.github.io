def create_pig_latin_word(word)
    if consonants(word).empty?
       word
    else
      new_word = word.delete(consonants(word))
      change_string(word) + consonants(word) + "ay"
    end
  end

def change_string(word)
      new_string = word.delete(consonants(word))
end

def consonants(word)
    word.match(/\A[^aeiou]*/).to_s
end

def display_word(word)
 "Your word was '#{word}' and the pig latin word is '#{create_pig_latin_word(word)}"
end

def change_sentence_into_pig_latin(sentence)
    sentence = sentence.split(' ')
    new_sentence = []
    sentence.map do |words|
       new_sentence<< create_pig_latin_word(words)
    end
    new_sentence
end

def display_sentence(sentence)
  "Your original sentence was '#{sentence}' but now it's '#{change_sentence_into_pig_latin(sentence).join(' ')}'"
end


  print_out_word =  display_word("Hello")
  puts print_out_word
  print_out_sentence = display_sentence("Hello to our world")
  puts print_out_sentence



#######################################################################
# CONVERT SINGLE WORD

# IF the word starts with a vowel, return the word.
# ELSE return the word's pig latin equivalent.
#   MOVE all leading consonants to the end of the word
#   and add the suffix "ay."
# ENDIF

# class PigLatin
# attr_reader :string

#   def initialize(string)
#     # Maybe the two initialized attributes could just be @english_string and
#     # @pig_latin_string--and all the methods that do the conversion could be
#     # private methods. And everyone would get a pony.
#     @string = string.downcase
#   end

#   #regex will return "" if match is not found, so if its empty, return the
#   #string as is, otherwise return the pig latin word
#   def create_pig_latin_word
#     if consonants.empty?
#        string
#     else
#       change_string + consonants + "ay"
#     end
#   end

#   #private
#   def change_string
#       new_string = string.delete(consonants)
#   end

#   def consonants
#     string.match(/\A[^aeiou]*/).to_s
#   end

# # CONVERT COMPLETE SENTENCE
# # FOR each word in the sentence.
# #   CONVERT SINGLE WORD
# # ENDFOR
# # RETURN converted sentence

#   def change_sentence_into_pig_latin
#     sentence = string.split(' ')
#     sentence.map do |word|
#        word.create_pig_latin_word
#       p "Hello"
#     end
#   end





# end