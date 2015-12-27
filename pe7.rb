#What is the 10 001st prime number?



def prime(var1)
	ary = Array.new 
	n = var1 
		n.times do |x| #only check  [2 ... var1-1]
			x += 1
			if var1 % x == 0 
				ary << 1 
				break if ary.inject(:+) > 2 
			end
		end 
	prime = true if ary.inject(:+) == 2
end
			
prary = Array.new
y = 1
until prary.count == 10001
	y += 1 
	prary << y if prime(y) == true
end

puts prary

