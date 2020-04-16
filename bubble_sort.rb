# frozen_string_literal:true

def bubble(array)
  len_ = array.length - 1
  loop do
    sorted = false
    len_.times do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        sorted = true
      end
    end
    len_ -= 1
    break unless sorted
  end
  array
end

def bubble_sort_by(arr)
  for i in 1..arr.length()
    for j in (0..arr.length() - i - 1)
      if yield(arr[j], arr[j + 1]).positive?
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
      end
  end
  print arr
end


x = [4,5,3,7,6,8,96]
  
print bubble(x)
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
