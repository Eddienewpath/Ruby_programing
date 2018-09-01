def num_sundays
  count = 0
  for i in 1901..2000
    for j in 1..12
      count +=1 if first_day?(i,j,1)
    end
  end
  count
end

def first_day? (year,month,day)
  # Zeller's congruence algorithm
  m = (month - 3 + 4800) % 4800
  y = (year + m / 12) % 400
  m %= 12
  # 0 = Sunday, 1 = Monday, ..., 6 = Saturday.
  (y + y/4 - y/100 + (13 * m + 2) / 5 + day + 2) % 7 == 0
end

p num_sundays
