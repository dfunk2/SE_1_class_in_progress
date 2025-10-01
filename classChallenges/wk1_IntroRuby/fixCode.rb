#Number 12:

arrayNums = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 
  9, 12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
  19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
  14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
  18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]


def sumArray(arr)

  sum = 0
  for i in arr do
    sum += i
  end
  return sum
end

def avgArray(arr)
  # Some are just ok
  avg = sumArray(arr) / arr.length()
  return avg
end

def oddNumberCount(arr)
  counter = 0
  for i in arr do
    if i % 2 != 0
      counter += 1
    end
  end
  return counter
end

def adjOddNumbs(arr)
  count = 0
  lap = 0
  for i in arr do
    if lap+1 < arr.length()
      if i % 2 != 0 and arr[lap+1] % 2 != 0
        count+=1
      end
    end
    lap+=1
  end
  return count
end

def print_sum(arr)
  puts sumArray(arr)
  puts avgArray(arr) 
  puts oddNumberCount(arr) 
  puts adjOddNumbs(arr)
end


print_sum(arrayNums)