def bub_sort(array)
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
bub_sort([11,2,1,23,10, 8 , 3])