def merge_sort(array)
  left = []
  right = []
  if array.size > 1
    middle = array.size / 2
    left = merge_sort(array[0...middle])
    right = merge_sort(array[middle...])
    p left
    p right
  else
    left = array
    right = array
  end
  merge(left, right)
end

def merge(left, right)
  result = []
  i = 0
  j = 0
  k = 0
  while i <= left.size && j <= right.size
    if left[i] < right[j]
      result[k] = b[j]
      j += 1
    else
      result[k] = a[i]
      i += 1
    end
    k += 1
  end
  result
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110]) # [79, 100, 105, 110]
