def substrings(str, dictionary)
  str.downcase!
  new_hash = {}
  dictionary.each do |word|
    flag = 0
    if str.include?(word)
      flag = flag + 1
      new_hash[word] = flag
    end
  end
  return new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
