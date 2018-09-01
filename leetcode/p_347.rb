# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  # return default value 0 if so key found in the hash. 
  hs = Hash.new(0)
  nums.each {|n| hs[n] += 1}
  # sort_by! sort somthing in place return an array(low to high).
  # if you put a minus sign in side the block will sorted reversely.(high to low)
  res = hs.keys.sort_by! {|e| -hs[e]}
  # res[a,b] b is exclusive, [a..b] b is inclusive.
  res[0,k]
end

arr = [1,1,1,2,2,3]
p top_k_frequent(arr, 2)
