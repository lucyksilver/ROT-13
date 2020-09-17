def number_mix(string, num)
  alphabet = ('a'..'z').to_a
  letters = string.split('')
  array = []

  letters.each do |letter|
    original_index = alphabet.index(letter.downcase)
    if letter.count('a-zA-Z').zero?
      array << letter
    else
      if original_index + num >= alphabet.length
        value = original_index + num - alphabet.length
      else
        value = original_index + num
      end
      letter == letter.upcase ? array << alphabet[value].upcase : array << alphabet[value]
    end
  end
  array.join
end

