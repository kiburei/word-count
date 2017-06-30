require ('rspec')
  require ('word_count')

  describe('String#word-count') do

    xit("check if string matches string") do
      expect("one".word_count()).to(eq(true))
    end

    xit("check if string present in sentence") do
      expect("ruby specs one O one".word_count()).to(eq(true))
    end

    it("returns number of times a word appears in a sentence") do
      expect("ruby specs one O one".word_count()).to(eq(2))
    end

  end
