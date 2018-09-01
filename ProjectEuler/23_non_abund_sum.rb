#4179871
  def final_sum
    abund_list = [12]
    (13..28123).each do |a|
      abund_list << a if abundant? a
    end
    total = 0
    for i in 1..28123
      can = false
      abund_list.each do |a|
        if abund_list.include? (i-a)
          can = true
          break
        end
        break if i < 2*a
      end
      total += i if !can
      p total
    end
    total
  end

  def abundant? n
    sum = 1
    tail = Math.sqrt(n)
    (2..tail).each do |x|
       if (n % x == 0)
         q = n/x
        if q != x
          sum += (q + x)
        else
          sum += q
        end
       end
      # avoid adding twice
    end
    sum > n
  end
p final_sum
