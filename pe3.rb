#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
#start high (M/2), reduce by 1 until first prime

M=600851475143
hM=0.5*M
#t= #test methods
#q = M/t 
#first check if factor
#then if prime
#then reduce 1 

def factor(var1)
	factor = true if M%var1 == 0
end

 
def prime(var1)
	ary = Array.new 
	n = var1 
		n.times do |x| #only check  [2 ... var1-1]
			x += 1
			if var1 % x == 0 
				ary << 1 
			end
		end 
	prime = true if ary.inject(:+) == 2
end

prary = Array.new
100000000.times do |x| 
	x+=1
	prary << x if factor(x) == true && prime(x) == true
end

puts prary 
#brute force solution, find cascading
#if factor, check if inverse is prime, go downward 

