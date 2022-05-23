def substrings(str, dictionary)
  str.downcase!
  total_count = 0
  new_hash = {}
  dictionary.each do |word|
    count_total = str.scan(word).length
    if count_total != 0
      new_hash[word] = count_total
    end
  end
  return new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
