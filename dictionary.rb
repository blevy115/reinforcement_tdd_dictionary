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
    @words.select {|word, definition| word.start_with?(string)}
  end

  def keywords
    @words.keys.sort
  end

  def entries
    @words
  end
end
