# largest prime factor of 600851475143

BIG_NUM = 600851475143

def is_prime? number
  count = 2
  while count < number
    if number % count == 0
      return false 
    end 
    count = count + 1
  end
  true
end


def is_factor? big_num, little_num
  if big_num % little_num == 0
    true
  else
    false
  end
end




test = 3
half = BIG_NUM/2
other_factor = 0

while test < half
  if is_factor?(BIG_NUM, test) && is_prime?(BIG_NUM / test)
    other_factor = BIG_NUM / test
    break
  end
  test = test + 1
end

puts "largest prime factor is #{other_factor}"