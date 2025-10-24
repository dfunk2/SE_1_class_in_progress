#Wrap this up so it fires an exception instead of using an error code:

def function_1(x)
    if x == 99
        return nil
    end
    x + 1
end

def function_1_wrapper()
  begin
    result = function_1(99)
    if result.nil?   
      raise IndexError
    end
  rescue IndexError
    puts "function 1, Index Error!"
  end
end

#Wrap this up so that it returns an error code (nil) instead of an exception.
def function_2(x)
    if x == 99
        raise IndexError
    end
    x + 1
end


def function_2_wrapper
  begin
  result = function_2(99)
  rescue IndexError
    puts "Exception rescued! #{result}"
  end
end 
function_1_wrapper()
function_2_wrapper()