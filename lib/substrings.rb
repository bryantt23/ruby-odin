def substrings(string, dictionary)
  matches = Hash.new
  dictionary.each do |word|
    arr = string.split(" ")
    arr.each do |sentence_word|
      sentence_word = sentence_word.downcase
      if sentence_word.index(word) != nil
        if matches[word] == nil
          matches[word] = 0
        end
        matches[word] += 1
      end
    end
  end
  matches
end
