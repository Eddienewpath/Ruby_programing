=begin
1. Modules are a way of grouping together methods, classes, and constants
2. You can embed a module in a class. To embed a module in a class, you use
   the include statement in the class
3. Ruby does not support multiple inheritance directly, but providing a facility
   called a mixin

   The Enumerable mixin provides collection classes with several traversal and
searching methods, and with the ability to sort. The class must provide a
method each, which yields successive members of the collection. If
Enumerable#max, #min, or #sort is used, the objects in the collection must
also implement a meaningful <=> operator, as these methods rely on an ordering
between members of the collection.

The Enumerable module contains a set of methods called enumerables that primarily
traverse or sort collections (ranges, arrays, and hashes).

=end

ar = [1,2,3,4,5]
# all? method boolean method.
# if no block is given, ruby implicitly gives {|obj| obj} return true/truthy;
ar.all? {|x| x.even?}

#The map enumerable returns a new array that's the result of executing its
#given block once for each element
ar.map {|x| x*2}

# (map!) modifies in place.
ar.map! {|x| x*2}

#it can take one argument, where it returns the number of elements equal to
#that argument
ar.count(4)

#When given a block, count returns the number of items that, when passed
#to that block, return a truthy value.
ar.count {|x| x.even?} #=> 5 even numbers.

#select returns a collection containing all the elements in its
#receiver for which the given block returns a truthy value.
# select! reject! in place.
ar.select {|x| x > 3}
ar.reject {|x| x > 5} # [2,4] from [2,4,6,8,10]

arr = ['aser', 'ergr', 'hgf','nm']
# return an new array.
arr.sort_by {|c| c[0].ord}

# .capitalize method Returns a copy of str with the first character converted to uppercase
#and the remainder to lowercase.

#The inject and reduce methods are aliases.
ar.reduce(:+)
# each_index is just like for loop in java with index. |i| is the index not the element.
ar.each_index do |i|
  ar[i]
end
# difference between each_with_index and each_index is that former one is also iterate
# through the element at the same time keep a record of the indices.
ar.each_with_index do |e,i|
e
end
#[1,1,1]
def xfib ar, n
  len = ar.length
  i = 0
  while len <=n && i <= n-len
    ar << ar[i..-1].sum
    i += 1
  end
  ar
end
xfib [1,1], 6

# delete method can be used to array and string for deletion.
# this method return the element just deleted in place.
ar.delete(8)
ar
# differene between each and map. each just an iterating through, map returns an new array.
def abund? n
  arr = []
  tail = Math.sqrt n
  (1..tail).each do |x|
    if n % x == 0
      arr << x
      arr << n/x
    end
    arr.pop if x*x == n
  end
  n < arr.sum
end
abund? 12
# more ruby way.
def abun? n
  arr = (1...n).select {|x| n%x == 0}
  n < arr.reduce(:+)
end
p abun? 12
