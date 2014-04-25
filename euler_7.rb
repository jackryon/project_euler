=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10,001st prime number? 
=end

test = 0
count = 0

while count <= 10001
  test += 1
  count += 1 if test == 2 || (2..(test - 1)).none? {|i| test % i == 0}
end
puts "10001st prime is #{test}"
