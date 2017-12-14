class Dictionary

  def initialize
    @words = {}
  end

  def include?(string)
     if @words.keys.include?(string)
       return true
     else
       return false
     end
  end

  def add(word)
    if word.class == Hash
    @words[word.keys.join] = word.values.join
  elsif word.class == String
    @words[word] = nil
    end

  end

  def find(string)
    @found_words = {}
    @words.each do |word, definition|
      if word.start_with?(string)
        @found_words[word] =  @words[word]
      end
      end
      return @found_words
  end

  def keywords
    @words.keys.sort
  end

  def entries
    @words
  end
end
