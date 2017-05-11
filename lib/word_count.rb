class String
  define_method(:word_count) do |check|
    words = self.delete('^a-zA-Z ').split(' ')
    result = []
    counter = 0
    partial_match_counter = 0
    words.each() do |word|
      if (word.==(check))
        counter += 1
      end
      if (word.include?(check))
        partial_match_counter += 1
      end
    end
    return result << counter << partial_match_counter
  end
end
