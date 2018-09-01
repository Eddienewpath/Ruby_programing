def num_digit
  num = 12
  loop do
    ar = fib num
    break if ar[0].to_s.length == 1000
    num += 1
  end
  num
end
# efficient algorithm to find nth fib. [fib(n), fib(n-1)]
def fib n
  arr = []
  if n <= 1
    arr[0] = n
    arr[1] = 0
    return arr
  else
    tmp = fib (n-1)
    arr[0] = tmp[0] + tmp[1]
    arr[1] = tmp[0]
    return arr
  end
end

p num_digit
