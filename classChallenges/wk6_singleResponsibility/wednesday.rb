'''An answer to the following question:
In what ways was pair programming beneficial, if any?
In what ways was it not, if any?
The solution code (each of you turn in the same code)

solution:
[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18,
19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
31, 32, 34, 35, 36, 37, 38, 39, 40]
'''

def deduplicate(array)
  array.each do |num|
    if array.include?(num)
      array.delete(num)
    end
  end
  puts array
end
  

array = [22, 34, 22, 7, 13, 16, 8, 28, 7, 14, 13, 40, 20, 10, 12, 37,
  35, 32, 7, 35, 6, 29, 26, 6, 29, 23, 12, 26, 11, 23, 9, 27, 38, 16,
  27, 28, 22, 12, 15, 10, 9, 7, 25, 28, 6, 37, 22, 35, 36, 37, 18, 9,
  20, 39, 32, 13, 7, 11, 38, 36, 23, 28, 24, 21, 8, 7, 26, 5, 40, 6, 15,
  18, 31, 9, 13, 12, 38, 35, 30, 35, 31, 7, 35, 19, 38, 36, 16, 39, 27,
  11, 24, 6, 13, 30, 15, 34]

deduplicate(array)

''' Didnt pair program but I think its beneficial for faster development as ideas are fluid. 
However, as someone whos struggles to collaborate when I am learning something I can see pair programming being hard for me to contribute when I am still trying to understand the problem. '''