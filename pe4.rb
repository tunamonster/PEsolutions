#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(var1)
	iary = var1.to_s.split(//)
	palindrome = true if iary.reverse == iary
end

a = 999
b = 999
ary = Array.new

400.times do 	
	a -= 1
	400.times do 
		c = a*b 
		ary << c if palindrome(c) == true 
		b -= 1 

	end	
	b+=400
end

puts ary

#hardcoded 400, write algorithm to stop when first pali is reached, and ensure first pali is largest
