def add(num1, num2)
  num1.to_f + num2.to_f
end

def subtract(num1, num2)
  num1.to_f - num2.to_f
end

def sum(numbers)
  if numbers.length == 0
    return 0
  elsif numbers.length == 1
    return numbers[0]
  else
    sum = 0
    numbers.each do |addit|
      sum += addit
    end
    return sum
  end
end


def multiply(numbers)
  final = 1.0
  numbers.each do |multiplyit|
    final *= multiplyit
  end
  return final
end

def power(a,b)
  a**b
end

def factorial(num)
  if num <= 1
    return 1
  else
    pot = 1.0
    while num > 0
      pot *= num
      num = num - 1
    end
    return pot
  end
end
