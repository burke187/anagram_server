class Word < ActiveRecord::Base
  validates :term, presence: true
  validates :letters, presence: true
end

def separate_letters(word)
  word.downcase.chomp.split("").sort.join
end

def anagram_for?(word)
  # anagrams = []
  word_to_letters = separate_letters(word)

  # TEST # p word_to_letters

  anagrams = Word.where(letters: word_to_letters).map(&:term) #mucho faster

  # Word.all.each do |word|
  #   # TEST # p word.letters
  #   if word.letters == word_to_letters
  #     anagrams << word
  #   end
  # end
  # anagrams
end
