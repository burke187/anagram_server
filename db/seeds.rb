require_relative '../config/environment.rb'

filename = 'words.txt'

file = File.open(File.expand_path("db/words.txt"))

# TEST # word = 'Skittles'

def separate_letters(word)
  word.downcase.chomp.split("").sort.join
end

# TEST # puts separate_letters(word)

file.each do |w|
  Word.create(term: w.chomp, letters: separate_letters(w))
end

