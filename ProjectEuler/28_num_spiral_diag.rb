
def num_sp_diag
  n = 1
  gap = 2
  sum = 1
    while n < 1001*1001
      4.times do
      n += gap
      sum += n
      end
      gap += 2
    end
    sum
end

p num_sp_diag
