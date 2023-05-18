class Anagram
    attr_accessor :anagram
  
    def initialize(anagram)
      @anagram = anagram.downcase
    end
  
    def match(words)
      words.select { |word| anagram?(word.downcase) }
    end
  
    private
  
    def anagram?(word)
      return false if word == anagram || word.length != anagram.length
  
      word.chars.sort == anagram.chars.sort
    end
  end
  