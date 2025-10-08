s = "hello world"
vowels = ['a', 'e', 'i', 'o', 'u']
vowelCount = 0

s.each_char do |s|
  puts s
end

s.each_char do |s|
  if s.include?(vowels)
    vowelCount += 1
  end
end 
puts vowelCount

s.each_char do |s|
  s <<= " hi back"
  puts s
end
  

