def fibs(n)
	fibsNumbers = [0,1]
	i = 0
	while fibsNumbers.length <= n
		a = i - 1
		b = i - 2
		newNumber = fibsNumbers[a] + fibsNumbers[b]
		fibsNumbers.push(newNumber)
	end
	return fibsNumbers
end
puts fibs(6).inspect

def fibs_rec(n)
	return 0 if n == 0
	return 1 if n == 1
	fibs_rec(n -1) + fibs_rec(n - 2)
	
	#return ary.push(0,1) if n == 1
	#return ary.push(0,1,1) if n == 2
	#return ary.push(0,1,1,2) if n == 3
	#return ary.push(0,1,1,2,3) if n == 4
	end
puts fibs_rec(6)



def append( ary, n)
	return ary if n < 0
	ary << n
	append(ary, n-1)
end
puts append([], 2).inspect
puts append( [], 3).inspect