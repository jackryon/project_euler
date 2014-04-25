=begin

The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

max = 100
sum_of_squares = (1..max).inject(0) {|sum, i| sum + (i ** 2)}
square_of_sums = (1..max).inject(0) {|sum, i| sum + i} ** 2
diff = square_of_sums - sum_of_squares
puts "difference is #{diff}"