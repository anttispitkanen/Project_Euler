#2520 is the smallest number that can be divided by each
#of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible
#by all of the numbers from 1 to 20?


def upper_limit (number)
  product = 1
  (1..number).each do |i|
    product *= i
  end
  return product
end

#puts upper_limit(20)


not_ready = true
i = 20

while not_ready do #&& i < 1_000_000

  if i%19==0 && i%18==0 && i%17==0 && i%16==0 && i%15==0 && i%14==0 && i%13==0 && i%12==0 && i%11==0 && i%9==0 && i%8==0 && i%7==0 && i%6==0 && i%3==0
    puts i
    not_ready = false
      #exit
  else
    i += 20
  end
end

#232792560 correct!
