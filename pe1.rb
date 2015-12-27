ary = Array.new
1000.times do |n|
if n%3 == 0
	ary << n
elsif n%5 == 0
	ary << n
end
end

puts ary.inject(:+)