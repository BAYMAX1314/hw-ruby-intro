# When done, submit this entire file to the autograder.

# Part 1

#part1_sum
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

#part1_max_2_sum
def max_2_sum arr
  # YOUR CODE HERE
  if arr.length < 1
     return 0
  elsif arr.length == 1	
     return arr[0]	
  else 	
     max_value_1 = arr[1]	
     max_value_2 = arr[0]
     for i in 0..(arr.length-1)
        x = arr[i]
        if max_value_1 <= x
           max_value_2 = max_value_1
           max_value_1 = x
        end
     end
     puts max_value_1 + max_value_2
     return max_value_1 + max_value_2	
  end
end

#part1_sum_to_n
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

#part2_hello
def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+ name
end

#part2_starts_with_consonant
def starts_with_consonant? s
  # YOUR CODE HERE
  if ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)	
     return true	
  else
     return false	
  end
end

#part2_binary_multiple_of_4
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
     return true
  else	
     return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
   def initialize(isbn,price)
     raise ArgumentError if isbn == "" or price <= 0 
     @isbn = isbn
     @price = price
   end	
   def isbn
     @isbn 
   end	
   def price
     @price
   end
   def isbn=(value)
     @isbn = value	
   end
   def price=(value)
     @price = value
   end	
   def price_as_string
     formatprice = format('%.2f', @price)
     return "$" + formatprice.to_s
   end
end
