#By listing the first six prime numbers:
#2, 3, 5, 7, 11, and 13,
#we can see that the 6th prime is 13.

#What is the 10_001st prime number?

primes = [2]

prime_count = 0
tested_number = 3
i = 2

while prime_count < 8 do
  while i < tested_number do
    if tested_number % i == 0
      break
    else
      primes << tested_number
      prime_count+=1
    end
    i+=1
  end
  tested_number+=1
end


puts primes[-1]
