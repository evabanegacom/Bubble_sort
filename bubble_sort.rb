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

def bubble_sort_by(array)
  len_ = array.length - 1
  loop do
    sorted = false
    len_.times do |x|
      if yield(array[x], array[x + 1]).positive?
        array[x], array[x + 1] = array[x + 1], array[x]
        sorted = true
      end
    end
    len_ -= 1
    break unless sorted
  end
  print array
end


x = [4, 5, 3, 7, 6, 8, 96]
print bubble(x)
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
