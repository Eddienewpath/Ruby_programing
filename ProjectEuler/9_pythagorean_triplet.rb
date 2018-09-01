# a < b < c, for which,
# a**2 + b**2 = c**2
# a + b + c = 1000 find a,b,c

def pytha_tri
  for i in (0...500)
    for j in (i+1...500)
      for k in (j+1...500)
        if (i+j+k == 1000) && (i*i + j*j == k*k)
          return i*j*k
        end
      end
    end
  end
end

p pytha_tri
