def digit_sum n
  sum = 0
  arr = (2**n).to_s.split("")
  arr.each do |x|
    sum += x.to_i
  end
  sum
end

p digit_sum 1000
