# def bsearch(array, target, indices)
#   center_pos = array.length/2
#   if target > array[center_pos]
#     right_ary = array[center_pos..-1]
#     bsearch(right_ary, target, indices[center_pos..-1])
#   elsif target < array[center_pos]
#     left_ary = array[0..center_pos]
#     bsearch(left_ary, target, indices[0..center_pos])
#   elsif array[center_pos] == target
#     indices[center_pos]
#   else
#     nil
#   end
# end

require 'byebug'

def bsearch(array, target)
  return nil if array.length == 1 && array[0] != target

  pivot = (array.length) / 2

  right = array[pivot..-1]
  left = array[0..pivot-1]

  if array[pivot] == target
    return pivot
  end
# debugger
  if target > array[pivot]
    right_half_result = bsearch(right, target)
    if right_half_result.nil?
      return nil
    else
      return pivot + right_half_result
    end
  elsif target < array[pivot]
    return bsearch(left,target)
  end
end

if __FILE__ == $PROGRAM_NAME
  p bsearch([2, 4, 6, 8, 10], 2)
  p bsearch([2, 4, 6, 8, 10], 4)
  p bsearch([2, 4, 6, 8, 10], 6)
  p bsearch([2, 4, 6, 8, 10], 8)
  p bsearch([2, 4, 6, 8, 10], 10)
  p bsearch([2, 4, 6, 8, 10], 7)
end
