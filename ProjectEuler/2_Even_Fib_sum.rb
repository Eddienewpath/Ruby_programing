#By considering the terms in the Fibonacci sequence whose values do not
#exceed four million, find the sum of the even-valued terms.

# iterative solution
def even_fib_sum
  a = 1
  b = 2
  c = a + b
  sum = 2
  while c < 4000000
    a = b
    b = c
    c = a + b
    sum += c if (c % 2 == 0) && (c < 4000000)
  end
  sum
end
#4613732
p even_fib_sum
