n = 0
ary = [1,2]
sumary = Array.new
while ary.last < 4000000  do
	if ary.last % 2 == 0 #condition first to add 2 to sumary
    	sumary << ary.last
    end
	sum  = ary.last+ary.at(n)
	ary << sum
    n +=1
end 

puts sumary.inject(:+) #sums all even numbers in ary
