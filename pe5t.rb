x = 232792560 #returned 10 
k = 1
ary = Array.new 

while k <21
ary << 1 if x%k == 0 
k+=1
end

puts ary.inject(:+)
