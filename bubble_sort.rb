def bub_sort(array)
    n = array.length
    loop do  
        swapped = false
        for x in 0..n-2 do
            if array[x] > array[x+1]
                array[x] , array[x+1] = array[x+1] , array[x]
                swapped = true
            end
        end
        print array
       break if  swapped == false 
    end
end
bub_sort([11 ,2 ,1 ,23 ,10 , 8, 3])
##############################
##############################
##############################
def bub_sort_by(array)
    n = array.length
    loop do  
        swapped = false
        for x in 0..n-2 do
            if yield(array[x] , array[x+1]).positive?
                array[x] , array[x+1] = array[x+1] , array[x]
                swapped = true
            end
        end
        print array
       break if  swapped == false 
    end
end
bub_sort_by(["hey", "hi", "hello"]){|left, right| left.length - right.length} 