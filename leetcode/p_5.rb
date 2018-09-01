# longest palindromic substring

# Input: "babad"
# Output: "bab"
# Note: "aba" is also a valid answer.

# helper method is_palin
# simple recursion
# B: if the string length is 1 or less return true.
# R: if the first and the last char is the same recursively compare the rest of substring.
# if the first and last char is not the same return false.


####################### Brute Force exceding time limit ###########################################
def is_palin_recur s
  return true if s.length < 2
  if s[0] == s[-1]
    is_palin_iter s[1...-1]
  else
    return false
  end
end

def is_palin_iter s
  i,j = 0, (s.length-1)
  while i <= j
    return false if s[i] != s[j]
    i += 1
    j -= 1
  end
  true
end
# the problem is essentially asking for all the substrings combination of string s.
# so need to find all the substrings.
def longest_palindrome_slow (s)
  longest_str = ""
  j = s.length - 1
  (0...s.length).each do |x|
     (j.downto x).each do |y|
       if (is_palin_iter s[x..y])
         longest_str = s[x..y] if ((y-x+1) > longest_str.length)
         break
       end
     end
  end
  longest_str
end
#p is_palin_iter "abcda"

####################### expanding around centers #############################################
def longest_palindrome s
  head, tail = 0, 0
  (0...s.length).each do |x|
    len1 = expand_center s, x, x
    len2 = expand_center s, x, (x+1)
    len = (len1 > len2 ? len1 : len2)
    if len > (tail - head + 1)
      head = x - (len - 1)/2
      tail = x + len/2
    end
  end
  s[head..tail]
end

def expand_center (str, l, r)
  while (l >= 0 && r < str.length && str[l] == str[r])
    l -= 1
    r += 1
  end
  r - l - 1
end

p longest_palindrome "kztakrekvefgchersuoiuatzlmwynzjhdqqftjcqmntoyckqfawikkdrnfgbwtdpbkymvwoumurjdzygyzsbmwzpcxcdmmpwzmeibligwiiqbecxwyxigikoewwrczkanwwqukszsbjukzumzladrvjefpegyicsgctdvldetuegxwihdtitqrdmygdrsweahfrepdcudvyvrggbkthztxwicyzazjyeztytwiyybqdsczozvtegodacdokczfmwqfmyuixbeeqluqcqwxpyrkpfcdosttzooykpvdykfxulttvvwnzftndvhsvpgrgdzsvfxdtzztdiswgwxzvbpsjlizlfrlgvlnwbjwbujafjaedivvgnbgwcdbzbdbprqrflfhahsvlcekeyqueyxjfetkxpapbeejoxwxlgepmxzowldsmqllpzeymakcshfzkvyykwljeltutdmrhxcbzizihzinywggzjctzasvefcxmhnusdvlderconvaisaetcdldeveeemhugipfzbhrwidcjpfrumshbdofchpgcsbkvaexfmenpsuodatxjavoszcitjewflejjmsuvyuyrkumednsfkbgvbqxfphfqeqozcnabmtedffvzwbgbzbfydiyaevoqtfmzxaujdydtjftapkpdhnbmrylcibzuqqynvnsihmyxdcrfftkuoymzoxpnashaderlosnkxbhamkkxfhwjsyehkmblhppbyspmcwuoguptliashefdklokjpggfiixozsrlwmeksmzdcvipgkwxwynzsvxnqtchgwwadqybkguscfyrbyxudzrxacoplmcqcsmkraimfwbauvytkxdnglwfuvehpxd"















=begin
######################################### this is wrong ##########################################
# left: babad abad bad ad d. store d in str
# right:babad baba bab. store bab in str
# middle: babad aba. if aba is longer than what is store in str, store it in str.
# @param {String} s
# @return {String}
def wrong_method(s)
  return s if is_palin s
  # left
  i, str = 1, ""
  while true
    if is_palin s[i..-1]
      if (s[i..-1].length > str.length)
        str = s[i..-1]
      end
      break
    end
    i += 1
  end
  # right
  j = (s.length-2)
  while true
    if is_palin s[0..j]
      if (s[0..j].length > str.length)
        str = s[0..j]
      end
      break
    end
    j -= 1
  end
  # middle
  a,b = 1, (s.length - 2)
  while true
    if is_palin s[a..b]
      if (s[a..b].length > str.length)
        str = s[a..b]
      end
      break
    end
    a += 1
    b -= 1
  end
  str
end

#p longest_palindrome "ababab"

=end
