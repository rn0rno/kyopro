n, l, r = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)

ary_min = A.min
min_idxs = A.each_index.select{ |i| A[i] == ary_min }

anss = []

min_idxs.each do |idx|
  ans = 0

  if idx.zero?
    left_sum = 0
  else
    left_sum = A[0..(idx-1)].sum
  end
  right_sum = A[(idx+1)..(n-1)].sum
  
  mid = A[idx]

  left_check = l * idx
  right_check = r * (n - (idx+1))

  if left_check > left_sum
    ans += left_sum
  else
    ans += left_check
  end

  if right_check > right_sum
    ans += right_sum
  else
    ans += right_check
  end

  if l < r
    if mid < l
      ans += mid
    else
      ans += l
    end
  else
    if mid < r
      ans += mid
    else
      ans += r
    end
  end

  anss << ans
end

puts anss.min # W/A