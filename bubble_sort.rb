def bubble_sort(array = [11, 2, 1, 23, 10, 8 , 3])
    n = array.length
    puts n
    loop do  
        swapped = false
        for x in 0..n-2 do
            if array[x] > array[x+1]
                array[x] , array[x+1] = array[x+1] , array[x]
                swapped = true
            end
              print array
        end
       break if  swapped == false 
    end
end
bubble_sort