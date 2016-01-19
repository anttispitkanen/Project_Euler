#The sum of the squares of the first ten natural numbers is,
#1**2 + 2**2 + ... + 10**2 == 385

#The square of the sum of the first ten natural numbers is,
#(1+2+...+10)**2 == 55**2 == 3025

#Hence the difference between the squares of the first
#ten natural numbers and the square of the sum is
#3025 - 385 == 2640

#Find the difference between the sum of the squares of the first
#one hundred natural numbers and the square of the sum.


def sum_of_squares(x)
  sum_of_squares = 0
  (1..x).each do |f|
    sum_of_squares += f**2
  end
  return sum_of_squares
end

def square_of_sum(x)
  square_of_sum = 0
  (1..x).each do |f|
    square_of_sum += f
  end
  return square_of_sum**2
end

#puts "sum of squares to 10: #{sum_of_squares(10)}" #385
#puts "square of sum to 10: #{square_of_sum(10)}" #3025

puts square_of_sum(100) - sum_of_squares(100)

#25164150
