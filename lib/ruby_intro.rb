# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum=0
  len=arr.length()
  for i in 0...len do
    sum=sum+arr[i]
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum=0
  num1=0
  num2=0
  len=arr.length()
  if len==0
    return sum
  elsif len==1
    sum=arr[0]
    return sum
  else
    if arr[0]<arr[1]
        num1=arr[0]
        num2=arr[1]
    else
        num1=arr[1]
        num2=arr[0]
    end
    for i in 2...len do
        if(arr[i]>=num2)
            num1=num2
            num2=arr[i]
        end
    end
    sum=num1+num2
    return sum
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  len=arr.length()
  for i in 0...len do
    for j in (i+1)...len do
      if(arr[i]+arr[j]==number)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if(string.length()==0||string[0].ord<65||string[0].ord>122)
    return false
  elsif(string[0].ord>90&&string[0].ord<97)
    return false
  elsif (string[0]=='A'||string[0]=='E'||string[0]=='I'||string[0]=='O'||string[0]=='U'||string[0]=='a'||string[0]=='e'||string[0]=='i'||string[0]=='o'||string[0]=='u')
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  len=string.length()
  if(len==0)
    return false
  end
  for i in 0...len
    if(string[i]!='0'&&string[i]!='1')
        return false
    end
  end
  k=string.to_i(2)
  if k%4==0
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_book,price_of_the_book)
    if price_of_the_book>0
      @price = price_of_the_book
    else
      raise ArgumentError
    end
    if isbn_book.length()!=0
      @isbn = isbn_book
    else
      raise ArgumentError
    end
  end

  def isbn
    @isbn
  end

  def isbn=(isbn_book)
    @isbn=isbn_book
  end

  def price
    @price
  end

  def price=(price_of_the_book)
    @price=price_of_the_book
  end

  def price_as_string()
    output = '$'+ '%.2f' % @price
    return output
  end


end
