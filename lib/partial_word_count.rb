class String
  define_method(:partial_word_count) do |check|
    words = self.delete('^a-zA-Z ').split(' ')
    counter = 0
    words.each() do |word|
      if (word.include?(check))
        counter += 1
      end
    end
    return counter
  end
end
