class Word < ActiveRecord::Base
  before_save :canonicalize_word

  def self.anagrams(params_word)
    sorted_word = params_word.downcase.chars.sort.join
    Word.where('sorted_word = ?', sorted_word)
  end

  private

  def canonicalize_word
    self.sorted_word = canonicalize(self.word)
  end

  def canonicalize(word)
    word.chomp.downcase.chars.sort.join
  end
end