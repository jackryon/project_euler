def is_palindromic? num
  tmp = num.to_s
  while tmp.length > 1
    if tmp[0] != tmp[tmp.length - 1]
      return false
    end
    tmp = tmp[1..(tmp.length - 2)]
  end
  true
end


palindrome_data = []
biggest_palindrome = { product: 0 }

999.downto(100) do |d_1|
  999.downto(100) do |d_2|
    product = d_1 * d_2
    data = { product: product, d_1: d_1, d_2: d_2 }
    palindrome_data << data if is_palindromic? product
  end
end

palindrome_data.each do |p_d|
  if p_d[:product] > biggest_palindrome[:product]
    biggest_palindrome = p_d
  end
end

puts "biggest palindrome is #{biggest_palindrome[:product]}. Factor 1: #{biggest_palindrome[:d_1]}. Factor 2: #{biggest_palindrome[:d_2]}"