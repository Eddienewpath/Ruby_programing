def translate (s)
  v = ["a", "e", "i", "o", "u"]
  arr = s.split
  tail = ""
  str = ""
  arr.each do |x|
  if (v.include?(x[0]))
    if(x[0])
    str += x + "ay" + " "
  elsif(!v.include?(x[0]) && !v.include?(x[1]) && !v.include?(x[2]))
    tail = x[0...3] + "ay"
    str += x[3...x.length]+ tail + " "
  elsif(!v.include?(x[0]) && x[1...3] == "qu")
    tail = x[0] + "quay"
    str += x[3...x.length]+ tail + " "
  elsif(x[0..1] == "qu")
    str += x[2...x.length] + "quay"+ " "
  elsif(!v.include?(x[0]) && !v.include?(x[1]))
    tail = x[0...2] + "ay"
    str += x[2...x.length] + tail + " "
  else
    tail = x[0] + "ay"
    str += x[1...x.length] + tail + " "
  end
end
str.strip
end
