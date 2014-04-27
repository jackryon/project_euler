=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
=end

sum = 0
upper_limit = 2000000

(2..upper_limit).each do |i|
  sum += i if i == 2 || (2..Math.sqrt(i).ceil).none?{|i2| i % i2 == 0}
end

puts sum