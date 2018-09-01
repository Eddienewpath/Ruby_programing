def divisor_sum n
  sum = 0
  (1..n/2).each do |x|
    if n % x == 0
      sum += x
    end
  end
  sum
end

def amic_num
  i = 0
  total = 0
  loop do
    break if i >= 10000
    s = divisor_sum i
    # s could be the same as i. 
    if i == (divisor_sum s) && (i != s)
        total += i
    end
    i += 1
  end
  total
end
p amic_num
