def dis_pow
  a = 2
  arr = []
  while a <= 100
    b = 2
    while b <= 100
      arr << a**b
      b += 1
    end
    a += 1
  end
  arr.uniq.size
end

p dis_pow
