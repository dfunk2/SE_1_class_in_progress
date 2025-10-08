  # vowels = "aeiou"
  # testing = "testing ruby"
  # count = 0

  # i = 0
  # while i < testing.length
  #   count += 1 if vowels.include?(testing[i])
  #   i += 1
  # end
  # puts "vowel count #{count}"

  # testing <<= "more"
  # count = 0
  # j = 0
  # while j < testing.length
  #   count += 1 if vowels.include?(testing[j])
  #   j += 1
  # end
  # puts "vowel count #{count}"

  # test2 = ""
  # k = 0
  # while k < testing.length
  #   o = testing[k]
  #   test2 <<= o unless vowels.include?(o)
  #   k += 1
  # end

  # count = 0
  # u = 0
  # while u<test2.length
  #   count += 1 if vowels.include?(test2[u])
  #   u += 1
  # end
  # puts "vowel count #{count}"

  # test2 <<= "anotherstring"
  # count = 0
  # n = 0
  # while n < test2.length
  #   count += 1 if vowels.include?(test2[n])
  #   n += 1
  # end
  # puts "vowel count #{count}"

  # finale = ""
  # p = 0
  # while p < test2.length
  #   b = test2[p]
  #   finale <<= b unless vowels.include?(b)
  #   p += 1
  # end

  # count = 0
  # q = 0
  # while q < finale.length
  #   count += 1 if vowels.include?(finale[q])
  #   q += 1
  # end
  # puts "vowel count #{count}"

def vowelCount(testing)
  vowels = "aeiou"
  i = 0
  count = 0
  while i < testing.length
    count += 1 if vowels.include?(testing[i])
    i += 1
  end
  return count
end 

def print(count)
  puts "vowel count #{count}"
end

def concat(testing)
  testing <<= "anotherstring"
  return testing
end


test1 = "testing ruby"
test2 = "test two"
count1 = vowelCount(test1)
count2 = vowelCount(test2)
print(count1)
print(count2)
strConcat = concat(test1)
print(strConcat)
