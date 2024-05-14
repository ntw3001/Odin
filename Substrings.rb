dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, compare)
  opinion = {}
  compare.each do |word|
    occurrences = sentence.downcase.each_char
      .each_cons(word.size)
      .count(word.chars)
    if occurrences != 0
      opinion[word] = occurrences
    end
  end
  puts opinion
end

puts "What do you wish me to know?"
claim = gets.chomp
sleep(0.5)
puts "What to know what I think of that?"
sleep(0.5)
substrings(claim, dictionary)
sleep(0.5)
puts "Anyway, that's my opinion."
