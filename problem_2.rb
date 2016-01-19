a = 1
b = 2
c = a + b
sum_of_evens = 2

while c < 4_000_000 do
  if (c % 2 == 0)
    sum_of_evens += c

  end
  a=b
  b=c
  c=a+b
end

puts sum_of_evens
