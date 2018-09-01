def narci i
  sum = 0
  arr = i.to_s.chars.map{|x| x.to_i}
  p arr
  arr.each {|a| sum += a**(arr.length)}
  sum == i
end

p narci 1634
