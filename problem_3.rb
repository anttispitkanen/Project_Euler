#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

limit = 600851475143
#limit = 10000001
#brute force solution

#limit = 10000001
prime_factors = []

def is_divisible? (number, divisor)
  if (number % divisor == 0)
    return true
  else
    return false
  end
end

#puts is_divisible(10,3) #just testing
#found = false
#i = 2

#(2...limit).each do |i|
#  while (is_divisible?(limit, i)) do
#    prime_factors << i
#    limit = limit / i
#  end
#end

#puts prime_factors[-1]

f = 2

#limit%f==0 ? limit /= f : f +=1 while limit >1

while limit > 1 do
  if limit % f == 0
    limit /= f
  else
    f += 1
  end
end

puts f
