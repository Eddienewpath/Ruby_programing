def collatz
  chain =0
  i = 1
  j = 0
  while i <= 1000000 do
    len = chain_length(i)
    if len > chain
      chain = len
      j = i
    end
    i += 1
  end
  j
end


def chain_length n
  ch = 1
  while n != 1 do
    if n % 2 == 0
      n = n/2
    elsif n % 2 != 0
      n = 3*n + 1
    end
    ch += 1
  end
  ch
end

puts collatz
