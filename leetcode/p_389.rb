# String t is generated by random shuffling string s and then add one
# more letter at a random position.

# Find the letter that was added in t.


def find_the_difference(s, t)
  (t.sum - s.sum).chr
end

# wow
def other_solution(s, t)
  # .bytes ==> [97, 98, 99]
    s=s.bytes
    t=t.bytes
    result=t[-1]
# ^ bitwise xor
# 1001
# 0000 => 1001
# (a^d)^b^b^c^c^a => d
    for i in 0..s.size-1
        result^=s[i]
        p result
        result^=t[i]
        p result
    end
    result.chr
end

p other_solution "abc", "bcad"
# find_the_difference "a", "aa"