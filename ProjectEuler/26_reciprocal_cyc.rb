# create a Hash to store index of the remainder, and get cycle
# length if same remainder appears. Bypass when remainder is 0.

def run
  maxidx = 0
  maxlen = 0
  idx = 11
  while idx < 1000
    len = get_cycle idx
    if (len > maxlen)
        maxidx = idx
        maxlen = len
      end
    idx += 1
  end
  maxidx
end

def get_cycle n
  hs = {}
  remainder = 1
  index = 0
  while remainder !=0
    return index - hs[remainder] if hs.has_key? remainder
    hs[remainder] = index
    index += 1
    remainder = remainder*10 % n
  end
  0
end

p run
