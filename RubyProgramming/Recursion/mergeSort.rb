def merge_sort(arr)
	return arr if arr.length == 1
	mid = arr.length / 2
	left = merge_sort(arr[0..mid-1])
	right = merge_sort(arr[mid..-1])
	merge(left,right)

end

puts merge_sort([1,7,6,5,4,3,2,1])
#half findished the merge sort, will need to complete later. Having difficulty following the psudocode on http://en.wikipedia.org/wiki/Merge_sort