def substrings(string, dictionary)
  matches=Hash.new
  dictionary.each do |word|
    if string.index(word)!=nil
      if matches[word]==nil
        matches[word]=0
      end
      matches[word]+=1
    end
  end
  matches
end