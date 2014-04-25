nums_to_sum = []

(0..999).each do |i|
  puts "checking num: #{i}"
  if i % 3 == 0
    puts "#{i} is divisible by 3"
    nums_to_sum << i
  elsif i % 5 == 0
    puts "#{i} is divisible by 5"
    nums_to_sum << i
  else
    puts "#{i} is not divisible by 3 or 5"
  end 
end

sum = nums_to_sum.inject(0) {|result, element| result + element }
puts "sum of all multiples of 3 and 5 is #{sum}"