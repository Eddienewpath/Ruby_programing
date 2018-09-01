# @param {String} s
# @return {Integer}
def title_to_number(s)
  ans = 0
  len = s.length
  (0...len).each do |x|
    ans = ans*26 + (s[x].ord - 64)
  end
  ans
end

p title_to_number "AA"
