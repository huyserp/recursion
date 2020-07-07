require 'pry'

def merge_sort(arr)
    if arr.length < 2
        arr
    else
        arr_two = arr[0..(arr.length/2) - 1] #FIRST HALF (LEFT)
        arr_three = arr[(arr.length/2)..arr[arr.length]] #SECOND HALF (RIGHT)
        merge(merge_sort(arr_two), merge_sort(arr_three))
    end
end

def merge(arr_two, arr_three)
    arr = []
    until arr_two.empty? || arr_three.empty?
        arr_two[0] < arr_three[0] ? arr << arr_two.shift : arr << arr_three.shift
    end
    arr + arr_two + arr_three
end
p merge_sort([23, 8, 3, 2, 9, 7, 1, 5, 4, 6, 10])
p merge_sort([100, 2213, 394, 2, 11, 55, 82, 91, 19, 4, 73])
p merge_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])

## Alternate algorithm below for merge... doesn't work at this time...
#         pointer1 = 0
#         pointer2 = 0
#         pointer3 = 0
#         while pointer2 < length_two && pointer3 < length_three
#             binding.pry
#             if arr_two[pointer2] < arr_three[pointer3]
#                 arr[pointer1] = arr_two[pointer2]
#                 pointer2 += 1
#                 binding.pry
#             else
#                 arr[pointer1] = arr_three[pointer3]
#                 pointer3 += 1
#                 binding.pry
#             end
#             pointer1 += 1
#         end

#         if pointer2 == length_two + 1
#             arr[pointer1..(length_two + length_three)] = arr_three[pointer3..length_three] 
#         else
#             arr[pointer1..(length_two + length_three)] = arr_two[pointer2..length_two]
#         end
#     end
#     arr
# end