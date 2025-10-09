require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutControlStatements < Neo::Koan

  def test_if_then_else_statements
    if true
      result = 1
    else
      result = 0
    end
    assert_equal 1, result
  end

  def test_if_then_statements
    result = 10
    if true
      result = 10
    end
    assert_equal 10, result
  end

  def test_if_statements_return_values
    value = if true
              2
            else
              0
            end
    assert_equal 2, value

    value = if false
              2
            else
              0
            end
    assert_equal 0, value

    # NOTE: Actually, EVERY statement in Ruby will return a value, not
    # just if statements.
  end

  def test_if_statements_with_no_else_with_false_condition_return_value
    value = if false
              1
            end
    assert_equal nil, value
  end

  def test_condition_operators
    assert_equal 1, (true ? 1 : 0)
    assert_equal 0, (false ? 1 : 0)
  end

  def test_if_statement_modifiers
    result = 10
    result = 10 if true

    assert_equal 10, result
  end

  def test_unless_statement
    result = 10
    unless false    # same as saying 'if !false', which evaluates as 'if true'
      result = 5
    end
    assert_equal 5, result
  end

  def test_unless_statement_evaluate_true
    result = 10
    unless true    # same as saying 'if !true', which evaluates as 'if false'
      result = 5
    end
    assert_equal 10, result
  end

  def test_unless_statement_modifier
    result = 10
    result = 5 unless false

    assert_equal 5, result
  end

  def test_while_statement
    i = 1
    result = 1
    while i <= 10
      result = result * i
      i += 1
    end
    assert_equal 3628800, result
  end

  def test_break_statement
    i = 1
    result = 1
    while true
      break unless i <= 10
      result = result * i
      i += 1
    end
    assert_equal 3628800, result
  end

  def test_break_statement_returns_values
    i = 1
    result = while i <= 10
      break i if i % 2 == 0
      i += 1
    end

    assert_equal 2, result
  end

  def test_next_statement
    i = 0
    result = []
    while i < 10
      i += 1
      next if (i % 2) == 0
      result << i
    end
    assert_equal [1, 3, 5, 7, 9], result
  end

  def test_for_statement
    array = ["fish", "and", "chips"]
    result = []
    for item in array
      result << item.upcase
    end
    assert_equal ["FISH", "AND", "CHIPS"], result
  end

  def test_times_statement
    sum = 0
    10.times do
      sum += 1
    end
    assert_equal 10, sum
  end

end
