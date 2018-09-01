=begin
1.     1
2.     11
3.     21
4.     1211
5.     111221
6.     312211
7.     13112221
8.     1113213211

1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.

Input: 1
Output: "1"

Input: 4
Output: "1211"

current num is the description of last num. if want to know nth num, need to find
(n-1)th num and so on.
problem become how to generate the description for given number.
=end
# detail explanation see java version. 

# @param {Integer} n
# @return {String}
def count_and_say(n)
  i , num_str = 1, "1"
  while i < n
    i += 1
    num_str = description num_str
  end
  num_str
end
#21
def description n
  des = ""
  arr = n.chars
  count, current = 1, arr[0]
  (1...arr.length).each do |x|
    if arr[x] == arr[x-1]
      count += 1
    else
      # String is like array you can append char using << operator.
      des << count.to_s
      des << arr[x-1]
      current = arr[x]
      count = 1
    end
  end
  des << count.to_s
  des << current
  des
end


i = 0
5.times do
  i += 1
  p count_and_say i
end
