#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
n = 1
ary = Array.new 
ary2 = Array.new
100.times do |x|
	a = n*n 
	ary << a 
	ary2 << n 
	n+=1
end

def abs(var1, var2)
	if var1-var2>0 
		return var1-var2
	else
		return -var1+var2
	end
end

var1 = ary.inject(:+)
var2 = ary2.inject(:+)*ary2.inject(:+)
puts abs(var1, var2)