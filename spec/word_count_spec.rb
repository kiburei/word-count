require ('rspec')
  require ('word_count')

  describe('String#word-count') do
    it("returns number of times a word appears in a sentence") do
      expect("ruby specs one O one".word-count()).to(eq(2))
    end
  end
