# add methods
def add (a, b)
   a + b
end

# subtract
def subtract (a,b)
  a - b
end

# sum
def sum (a)
  sum = 0
  a.each do |x|
    sum += x
  end
  sum
end

# multiply
def multiply (a, b)
  a*b
end

# power
def power (a, b)
  a**b
end

# factorial
def factorial (a)
  if a <= 1
     1
  else
     a * factorial(a - 1)
  end
end
