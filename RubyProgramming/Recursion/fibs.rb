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
puts fibs(12)