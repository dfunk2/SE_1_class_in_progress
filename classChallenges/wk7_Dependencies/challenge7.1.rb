
class Third_Party
  def third_party(a, b, c)
    third_party_dependency_that_changes_very_frequently(b, a, c)
  end
end

class Functions
  def initialize(call)
    @call = call
  end

  def myfunction1(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction2(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction3(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction4(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction5(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction6(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction7(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction8(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction9(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction10(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction11(a, b, c)
    return @call.third_party(a, b, c)
  end

  def myfunction12(a, b, c)
    return @call.third_party(a, b, c)
  end
end

call = Third_Party.new
a = 1
b = 2 
c = 3
functions = Functions.new(call)
functions.myfunction1(a, b, c)
