class String
  define_method(:word_count) do |word|
    compare = word
    count = 0
    sentence = self.split()
    sentence.each() do |word|
      if word == compare
        count += 1
      end
    end
    count
  end
end
