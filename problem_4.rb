#A palindromic number reads the same both ways.
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


biggest_number = 998_001 # = 999**2
#puts biggest_number

#this works as long as the last digit(s) isn't 0
#because when reversed the first 0s of an integer disappear
def integer_reverse (i)
  y = 0
  #reversed = []

  while i > 0 do
    y = y*10
    y += (i%10)
    i /= 10
    #reversed << y
  end

  #return reversed[-1]
  return y
end

#puts integer_reverse(123450)

a = 999
b = 998
product = a * b
palindromes = []

while a > 900 do
  while b > 900 do
    if product == integer_reverse(product)
      puts "a: #{a}"
      puts "b: #{b}"
      puts "NOTICE ME! palindrome product: #{product}"
=begin
      if product == 906609
        exit
      end
=end
      palindromes << product
      b -= 1
      product = a*b

    else
      #puts "a is now #{a}"
      #puts "b is now #{b}"
      #puts "product is now #{product}"
      b -= 1
      product = a*b
    end

  end
  b = 998
  a -= 1
end

puts palindromes.sort[-1]

#993 * 913 == 906609



#a = 999
#b = 999
=begin
def tester_function? (x, y)
  product = x * y
  if (product == integer_reverse(product))
    return true
  else
    return false
  end
end

#just to test
puts tester_function?(91, 99)
puts 91 * 99
=end

=begin
while b > 1 do
  if tester_function?(a,b) do
    return b
  else
    b--
  end
end

puts "a: #{a}"
puts "b: #{b}"
puts "Product: #{a * b}"
=end
