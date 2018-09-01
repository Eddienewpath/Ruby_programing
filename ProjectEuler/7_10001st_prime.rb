def is_prime n
  if n <= 3 && n >1
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false
  else
    # .step: i increment by 6
    # Math.sqrt() get square root
    (5..Math.sqrt(n).ceil).step(6) do |i|
      if n % i == 0 || n % (i + 2) == 0
        return false
      end
    end
    return true
  end
end

def nth_prime n
  i = 1
  x = 2
  while i < n
    i += 1 if is_prime x
    x += 1
  end
  x
end

p nth_prime 10001
