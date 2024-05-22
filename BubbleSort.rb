def bubble_sort (input)
  result = []
  target_index = 0
  loop do
    if input[target_index + 1]
      input[target_index], input[target_index + 1] = input[target_index +  1], input[target_index] if input[target_index] > input[target_index + 1]
      target_index += 1
    else target_index = 0
    end
    result = input
    puts "#{target_index}"
    puts "#{result}"
    break if finished?(result) == true
  end
  puts " --- #{result} --- "
end

def finished?(input)
  return true if input.empty?
  input.each_with_index do |value, i|
    next_value = input[i + 1]
    return false if next_value && value > next_value
  end
  true
end

array = [4,3,78,2,0,2]

bubble_sort(array)
