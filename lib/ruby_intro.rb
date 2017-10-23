# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  if arr.empty? then
     return result;
  else
     arr.each{|i| result += i }
     return result;
  end  
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0
  if arr.empty? then
     return result
  elsif arr.length == 1	
     return arr[0]	
  else 	
     j = arr[1]
     k = arr[0]
     for i in 0..(arr.length-1)
        x = arr[i]
        if j <= x
           k = j
           j = x
        end
     end
     return j + k
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1	
     return false
  else
     for i in 0..(arr.length-1)
        for j in i+1..(arr.length-1)
           if arr[i]+arr[j]==n
              return true
           end
        end
     end
     return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+ name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if not s =~/^[AEIOUaeiou]/ and s =~/^[A-Za-z]/	
     return true	
  else
     return false	
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=="" || /[^01]/=~s
     return false
  elsif s.to_i(2)%4==0
     return true
  else	
     return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
   def initialize(isbn,price)
     if isbn == "" or price <= 0
        raise ArgumentError
     else
        @isbn = isbn
        @price = price
     end
   end	
   def isbn
     @isbn 
   end	
   def price
     @price
   end
   def isbn=(isbn)
     @isbn = isbn	
   end
   def price=(price)
     @price = price
   end	
   def price_as_string()
     formatprice = format('%.2f', @price.round(2))
     return "$" + formatprice.to_s
   end
end
