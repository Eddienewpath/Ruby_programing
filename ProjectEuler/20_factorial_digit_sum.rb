def sum a
  sum = 0
  num = fact a
  num.to_s.split("").each do |x|
    sum += x.to_i
  end
  sum
end

private
def fact n
  if n <=1
    return 1
  else
    return n * fact(n-1)
  end
end

p sum 100
