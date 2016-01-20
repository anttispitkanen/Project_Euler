#A Pythagorean triplet is a set of three natural numbers,
#a < b < c, for which,

#a**2 + b**2 = c**2

#For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

#There exists exactly one Pythagorean triplet for which
#a + b + c = 1000.
#Find the product abc.


def square x
  return x ** 2
end

# looking for 1000

#Find all sets of a + b + c == 1000 where
#a < b < c and insert the arrays [a, b, c] to
#another array (of arrays), then loop through that
#to find the one where a**2 + b**2 == c**2

all_sets = []

a=1
b=2
c=3
result = a+b+c

while result <= 1000 do


  while result <= 1000 do
    c = b+1
    result = a+b+c
    while result <= 1000 do
      result = a+b+c
      if result == 1000
        all_sets << [a, b, c]
        break
      end
      c += 1
    end
    b += 1
  end
  a += 1
  b = a+1
  c = b+1
  result = a+b+c
end

=begin
all_sets.sort.each do |variable|
  puts "#{variable[0]} + #{variable[1]} + #{variable[2]} = #{variable[0]+variable[1]+variable[2]}"
end

puts "Total number of sets: #{all_sets.length}"
=end

all_sets.sort.each do |i|
  if square(i[0]) + square(i[1]) == square(i[2])
    puts "#{i[0]} + #{i[1]} + #{i[2]} = #{i[0]+i[1]+i[2]}"
    puts "#{i[0]}**2 + #{i[1]}**2 = #{i[2]}**2, which is"
    puts "#{square(i[0])} + #{square(i[1])} = #{square(i[2])}"
    puts "and the product is: #{i[0]*i[1]*i[2]}"
    break
  end
end

#answer: 31875000
