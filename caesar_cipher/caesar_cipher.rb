def caesar_cipher(cipher_str, key)
  i = 0
  res_str = ''
  cipher_str.each_char do |char|
    char_ascii = char.ord
    if char_ascii >= 65 and char_ascii <= 90
      if char_ascii + key >= 90
        diff = ((char_ascii + key) - 90) - 1
        char_ascii = 65 + diff
        char = char_ascii.chr
        res_str.insert(i, char)
      else
        char_ascii = char_ascii + key
        char = char_ascii.chr
        res_str.insert(i, char)
      end
    elsif char_ascii >= 97 and char_ascii <= 122
      if char_ascii + key >= 122
        diff = ((char_ascii + key) - 122) - 1
        char_ascii = 97 + diff
        char = char_ascii.chr
        res_str.insert(i, char)
      else
        char_ascii = char_ascii + key
        char = char_ascii.chr
        res_str.insert(i, char)
      end
    else
      char
      res_str.insert(i, char)
    end
    i += 1
  end
  return res_str
end

sample = 'What a string!'

puts caesar_cipher(sample, 5)
