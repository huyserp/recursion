require 'pry'

def merge_sort(arr)
    length = arr.length
    if length < 2
        arr
    else
        arr_two = arr[0..(length/2) - 1]
        arr_three = arr[(length/2)..arr[length]]
        merge(merge_sort(arr_two), merge_sort(arr_three))
    end
end

def merge(arr_two, arr_three)
    sorted = []
    until arr_two.empty? || arr_three.empty?
        if arr_two[0] <= arr_three[0]
            sorted << arr_two.shift
        else
            sorted << arr_three.shift
        end
    end
    sorted + arr_two + arr_three
end
my_array = [23, 8, 3, 2, 9, 7, 1, 5, 4, 6, 10]
p merge_sort(my_array)

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