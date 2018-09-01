# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  list = []
  helper(list,0,0,'',n)
  list
end

def helper(ls, op, cl, str, p)
    if(op+cl == 2*p)
        ls << str; return
    end

    if op < p
        helper(ls, op+1, cl, str+'(', p)
    end

    if op > cl
        helper(ls, op, cl+1, str+')', p)
    end
end

p generate_parenthesis 3
