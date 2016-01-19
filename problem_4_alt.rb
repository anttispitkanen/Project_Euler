

def integer_reverse(x)
  y = 0
  while x > 0 do
    y *= 10
    y += (x % 10)
    x /= 10
  end
  return y
end

palindromes =
  (100..999).map { |a|
    (100..999).map { |b|
      a*b
    }
  }.flatten.select { |e|
  e == integer_reverse(e)
}.sort


#puts integer_reverse(123)
puts palindromes[-1]
