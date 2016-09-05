#write your code here
def add(num1,num2)
  sum = num1 + num2
end

def subtract(num1,num2)
  result = num1 - num2
end

def sum(integer_array)
  total = 0
  integer_array.each { |i|
    total+= i
  }
  total
end

def multiply(num1,*num2) #make this take variable num args
  num2.unshift num1
  product = 1
  (num2.length).times { |n|
    product*= num2[n]
  }
  product
end

def power(number,exponent)
  result = 1
  exponent.times { |n| result *= number}
  result
end

def factorial(number)
  result = 1
  if number>0
    (number-1).times do
      result*= number
      number-= 1
    end
    result
  else
    result
  end
end
