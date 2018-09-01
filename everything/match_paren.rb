#using stack to match a string of parentheses.
def match_paren s
  # used to match open and close paren
  op = ['(','[','{']
  cl = [')',']','}']
  # to store open paren
  stack = []
  s.each_char do |x|
    # if x is an op, push onto stack.
    if op.include? x
      stack << x
    else
      return false if op.index(stack.pop) != cl.index(x)
    end
  end
  stack.empty?
end

# [(])
p match_paren "[()]{}{[()()]()}"
