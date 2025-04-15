def merge_sort(array)
  return array if array.size == 1

  return unless array.size > 1

  middle = array.size / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle...])
  merge(left, right)
end

def merge(left, right)
  result = []
  while left.any? && right.any?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110]) # [79, 100, 105, 110]
