x = 3949810 #given in problem 

mp = false



#divide by 1..20 if mod != 0 add 1, terminate loop 

def scount(var1)
k = 1 #max is 20
ary = Array.new 
	while k < 21 do #check for numbers 1...k
		if var1%k == 0 
			ary << 1 
		end
	k += 1
	end
	scount = ary.inject(:+)
end	

until scount(x) == 20
	x += 1 
	puts "#{x} #{scount(x)}"
	
end


#optimize: stop the loop when a mod doesn't equal 0, don't need to divide by 1 and self