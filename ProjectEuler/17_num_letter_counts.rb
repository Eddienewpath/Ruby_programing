def letter_count
  len = 0
  (1..1000).each do |x|
    len += (to_string x).length
  end
  len
end

def to_string n
  b4_twenty = ["zero", "one", "two", "three", "four", "five", "six",
    "seven", "eight", "nine","ten", "eleven", "twelve", "thirteen",
    "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  b4_hundred = ["", "", "twenty", "thirty", "forty", "fifty", "sixty",
    "seventy", "eighty", "ninety"]

  if 0 <= n && n < 20
    return b4_twenty[n]
  elsif 20 <= n && n < 100
    return b4_hundred[n/10] + (n % 10 != 0 ? b4_twenty[n%10] : "")
  elsif 100<= n && n < 1000
    # do not forget the word [and]
    return b4_twenty[n/100] + "hundred" + (n % 100 != 0 ? "and" + to_string(n%100) : "")
  else
    # do not include the space in between 
    return "onethousand"
  end
end

p letter_count
