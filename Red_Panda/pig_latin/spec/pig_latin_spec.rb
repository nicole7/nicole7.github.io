require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it 'creates a pig lating word by adding the consonants and -ay at end of word' do
    word = "Hello"
    expect(create_pig_latin_word(word)).to eq "elloHay"
  end

  it 'creates a string of the vowels after deleted consonant(s)' do
    word = "thorn"
    expect(change_string(word)).to eq "orn"
  end

  it 'creates a string of the deleted front consonant(s)' do
    word = "thorn"
    expect(consonants(word)).to eq "th"
  end

  it 'changes a full sentence into pig latin' do
    sentence = "Hello to our world"
    expect(change_sentence_into_pig_latin(sentence)).to eq "elloHay otay our orldway"
  end

  it 'displays the original word and the new word' do
    word = "peanut"
    expect(display_word(word)).to eq "Your word was 'peanut' and the pig latin word is 'eanutpay"
  end

  it 'displays the original sentence and the new sentence' do
    sentence = "Hello to our world"
    expect(display_sentence(sentence)).to eq "Your original sentence was 'Hello to our world' but now it's 'elloHay otay our orldway'"
  end


end

#######################################################################

# describe 'Converting single words to Pig Latin' do
#   it 'has a string' do
#     pig_latin = PigLatin.new("thorn")
#     expect(pig_latin.string).to eq "thorn"
#   end

#   it 'grabs the first consonant(s)' do
#     pig_latin = PigLatin.new("thorn")
#     expect(pig_latin.consonants).to eq "th"
#   end

#   it 'deletes the consonants from string and adds to the end of string' do
#     pig_latin = PigLatin.new("thorn")
#     expect(pig_latin.change_string).to eq "orn"
#   end

#   it 'creates pig latin word and adds -ay at the end' do
#     pig_latin = PigLatin.new("thorn")
#     expect(pig_latin.create_pig_latin_word).to eq "ornthay"
#   end
#   it 'tests a word with only consonants' do
#     pig_latin = PigLatin.new("shh")
#     expect(pig_latin.create_pig_latin_word).to eq "shhay"
#   end

#   it 'does not change the words that start with a vowel' do
#     pig_latin = PigLatin.new("ore")
#     expect(pig_latin.create_pig_latin_word).to eq "ore"
#   end

# end

# describe 'Converting a sentence to Pig Latin' do
#   it 'take in a sentence and downcase everything' do
#     pig_latin = PigLatin.new("There is a Snake in my BOOT")
#     expect(pig_latin.string).to eq "there is a snake in my boot"
#   end

#   # it 'converts sentence into array' do
#   #   pig_latin = PigLatin.new("There is a Snake in my BOOT")
#   #   expect(pig_latin.convert_sentence_into_array).to eq ["there", "is", "a", "snake", "in", "my", "boot"]
#   # end

#   it 'changes the sentence to pig latin' do
#     pig_latin = PigLatin.new("There is a Snake in my BOOT")
#     expect(pig_latin.change_sentence_into_pig_latin).to eq "erethay isay a akesnay inay myay ootbay"
#   end

# end