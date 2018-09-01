# implement String.indexOf(str) in java. return the index of first ocurence.
# ex:
# Input: haystack = "hello", needle = "ll"
# Output: 2
=begin
find 'l' in hello -> iterate to find l at pos 2 return 2, if not found exit loop return -1.
find 'll' in hello -> iterate to find fisrt char in 'll', found it at pos 2, and
01, 12, 23, 34 , 45
=end
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  j = 0
  l = needle.length
  return 0 if l == 0
  while j < haystack.length
    tmp = haystack[j...(j+l)]
    return j if ((same_substr? needle, tmp) && needle[0] == tmp[0])
    j += 1
    break if j > (haystack.length - l)  # no need to go to the end. 
  end
  -1
end

def same_substr? n, substr
  i = 1
  while i < n.length
    return false if n[i] != substr[i]
    i += 1
  end
  true
end

start = Time.now
p str_str("afjsafhjslfj", "lf")
p "#{(Time.now - start) * 1000} s"
