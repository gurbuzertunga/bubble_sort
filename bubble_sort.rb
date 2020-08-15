def bub_sort(array)
  loop do
    swapped = false
    (0..array.length - 2).each do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        swapped = true
      end
    end
    break if swapped == false
  end
  array
end

p bub_sort([11, 2, 1, 23, 10, 8, 3])
##############################
##############################
##############################
def bub_sort_by(array)
  n = array.length
  loop do
    swapped = false
    (0..n - 2).each do |x|
      if yield(array[x], array[x + 1]).positive?
        array[x], array[x + 1] = array[x + 1], array[x]
        swapped = true
      end
    end
    break if swapped == false
  end
  array
end
p bub_sort_by(%w[hey hi hello]) { |left, right| left.length - right.length }
