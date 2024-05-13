def caesar_cipher(string, shift)
  letters = string.split("")
  enciphered = ""

  alphab = ("a".."z").to_a
  alphab_large = ("A".."Z").to_a
  alphab_rotated = alphab.rotate(-shift)
  alphab_large_rotated = alphab_large.rotate(-shift)

  letters.each do |letter|
    if alphab_rotated.include? letter
      i = alphab_rotated.index(letter)
      enciphered << alphab[i]
    elsif alphab_large_rotated.include? letter
      i = alphab_large_rotated.index(letter)
      enciphered << alphab_large[i]
    else
      enciphered << letter
    end
  end
  puts enciphered
end

puts "Speak, champion"
sentence = gets.chomp
sleep(0.5)
if sentence == "No! I must kill the demons!"
  puts "No, John. You are the demons"
else
  puts "Select a number, chosen one"
  number = gets.chomp.to_i
  sleep(0.5)
  puts "I have prepared your missive"
  sleep(0.5)
  caesar_cipher(sentence, number)
end
