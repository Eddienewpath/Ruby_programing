# [1,3,5,7], [2,4,6,8]
# [1,]
=begin
def sorted_arrays arr1, arr2
  j = 0
  arr3 = []
  arr1.each do |x|
    if x < arr2[j]
      arr3 << x
    else
      arr3 << arr2[j]
      j +=1
      redo
    end
  end
  if j < arr2.length
    (j...arr2.length).each do |x|
      arr3 << arr2[x]
    end
  end
  arr3
end
=end
#p sorted_arrays [1,3,6], [2,4,5]
#[1,2,3,4,5]
def sorted_arrays arr1, arr2
  arr3 = [] # store the result
  # declare two indice for two array
  i = 0
  j = 0
# while either index is within the range of the array execute
#
# do not know why while loop wont work but loop do worked
#
  #while (i < arr1.length) || (j < arr2.length)
  loop do
    break if i >= arr1.length || j >= arr2.length
# if item in array 1 at the position i less than item in array2 at pos j
   if arr1[i] < arr2[j]
    #insert item from array 1 at pos i into result array.
    arr3 << arr1[i]
    #increment i by one and the j is still at the same pos
    i += 1
   else
    arr3 << arr2[j]
    j += 1
   end
 end

  if i < arr1.length
    # + can combine two array together arr1 items will be added to the end od arr3
     arr3 = arr3 + arr1[i...arr1.length]
  else
     arr3 = arr3 + arr2[j...arr2.length]
  end
   arr3

end

 #p sorted_arrays [1,3,5], [2,4,6]
# [100, -101, 200, -3, 1000] ==> [2,4]
# brute force Largest Sum Contiguous Subarray return index

def puppy_golden_age array
  res = []
  # store the moving max sum of sub arrays.
  max_sum = 0

  for i in (0...array.length)
    for j in (i...array.length)
      # this is the key to reset the sum every iteration in inner loop
      sum = 0
      # arr[2..4] =>[200,-3,1000]
      array[i..j].each do |x|
        sum += x
        end
        if sum > max_sum
          max_sum = sum
            res = [i,j]
        end
    end
  end
  res
end

# Kadane’s Algorithm
# [-2,-3,4,-1,-2,1,5,-3] => [2,6], max_sum = 7
def largest_contiguous_subarray array
  max_so_far = 0
  max_ending_here = 0
  i = 0
  k = 0
  for j in (0...array.length)
    max_ending_here = max_ending_here + array[j]
    # whenever the max_ending_here becomes negative,
    # we reset the sum to 0, which means that we ignore previous addtions.
    if max_ending_here < 0
      i += 1
      max_ending_here = 0
    end
    if max_so_far < max_ending_here
      # assign the end index of max_so_far
      k = j
      max_so_far = max_ending_here
    end
  end
  [i, k]
end
#p largest_contiguous_subarray [-2,-3,4,-1,-2,1,5,-3,-1,-1]
#p puppy_golden_age [100, -101, 200, -3, 1000]
#p puppy_golden_age [100, -101, 200, -3, 1000]

#recursive solution:
# base: if arr size is 0
# good solution
def subsets arr
  if arr == []
    return [[]] # return a array with an empty array as only element
  else
    old = subsets arr[0...-1] # this won't raise error it can reduce all the way to empty.
  #  tmp = old everything is object so they are aliases pointing to the same array.
    subarr = []
    old.each do |x|
      # this will not  return a new array
      subarr << (x  + [arr.last])
      # old << subarr this line will create infinit loop because it keep adding new item to the old arry
      # during iterating.
    end
    return old + subarr
  end
  return
end
p subsets [2,3,4,5]

# more ruby way to do it
# using .map and recursion to solve the problem.
def alterative_subsets arr
  return [[]] if arr = []
  old = alterative_subsets (arr[0...-1])
  old + old.map{|x| x + [arr.last]} # .map will return a new array with new element. 
end
# infinit loop tester
def test_each_method arr
  new_arr = []
  arr.each do |x|
    new_arr << (x + [2])
  end
  p (arr + new_arr)
end
#test_each_method [[]]

#failure method
=begin
def get_subset arr
  j = 1
  res = []
  tmp = []
  arr.each {|x| res << [x]}
  for i in (0...arr.size)
    for k in (i...arr.size)
      res << arr[i..j]
    end
  end
  for  i in (0...arr.size)
    tmp << arr[i]
    for k in ((i+2)...arr.size)
     tmp << arr[(i+2)..k]
     res << tmp
    end
  end
  res << []
  res
end
=end
#[2,3,4,5] => [2],[2,3],[2,3,4],[2,3,4,5],[3],[3,4],[3,4,5],[4],[4,5],[5]
#p get_subset [2,3,4,5]
