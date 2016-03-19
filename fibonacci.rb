def fibonacci_recursive(n)
  return [0, 1].take(n) if n <= 2
  prev_ary = fibonacci_recursive(n - 1)
  new_num = prev_ary[-1] + prev_ary[-2]
  prev_ary << new_num
end

def fibonacci_iterative(n)
  ary = [0, 1]

  if n == 0
    return []
  elsif n < 3
    return ary[0..n - 1]
  else
    (n-2).times { ary << ary[-1] + ary[-2] }
  end
  ary
end


if __FILE__ == $PROGRAM_NAME
  p fibonacci_recursive(4)
  p fibonacci_recursive(13)
  p fibonacci_iterative(13)
end
