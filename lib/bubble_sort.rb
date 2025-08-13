def bubble_sort(arr)
  n = arr.length
  last_pos = n - 1
  while last_pos > 0
    i = 0
    while i < last_pos
      next_pos = i + 1
      if arr[i] > arr[next_pos]
        temp = arr[i]
        arr[i] = arr[next_pos]
        arr[next_pos] = temp
      end
      i += 1
    end
    last_pos -= 1
  end
  arr
end
