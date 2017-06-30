class String
  define_method(:word_count) do
    word = "one"
    self.include? word
  end
end
