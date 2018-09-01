def dig_sum
  total = 0
  # If a number has at least n >= 7 digits, then even if every digit is 9,
	# n * 9^5 is still less than the number (which is at least 10^n).
  for i in 2...1000000
    sum = 0
    i.to_s.split("").each do |x|
      sum += (x.to_i)**5
    end
    if i == sum
      total += i
    end
  end
  total
end

p dig_sum
