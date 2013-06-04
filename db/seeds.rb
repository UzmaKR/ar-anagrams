File.open('db/words.txt').each do |word|
  Word.create(word: word.chomp)
end